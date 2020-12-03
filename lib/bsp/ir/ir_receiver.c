/*
 * ir.c
 *
 *  Created on: 25 mars 2020
 *      Author: Nirgal
 */

#include "config.h"
#if USE_IR_RECEIVER

/*
 * Ce module est conçu pour utiliser le composant TSOP 32238
 *
 */
#include "stm32f1xx_hal.h"
#include "stm32f1_gpio.h"
#include "stm32f1_timer.h"
#include "macro_types.h"
#include "systick.h"

#include "ir_emmiter.h"
#include "ir_receiver.h"

#include "stm32f1_extit.h"

#define IR_LED_GPIO 	GPIOA
#define IR_LED_PIN 		GPIO_PIN_5

static void RECEIVER_process_extit(void);

static volatile uint32_t received_full_code = 0;

void RECEIVER_init(void)
{
	//Broche capteur en entree, déclenchant des ITs externes.
	BSP_GPIO_PinCfg(IR_RECEIVER_GPIO, IR_RECEIVER_PIN, GPIO_MODE_IT_FALLING,GPIO_PULLUP,GPIO_SPEED_FREQ_HIGH);
	// Broche LED - réplication et lecture signal.
	BSP_GPIO_PinCfg(IR_LED_GPIO, IR_LED_PIN, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL, GPIO_SPEED_FREQ_HIGH);

	EXTIT_set_callback(&RECEIVER_process_extit, EXTI_gpiopin_to_pin_number(IR_RECEIVER_PIN), TRUE);
}

void RECEIVER_demo(void)
{
	RECEIVER_init();
	printf("Infra-red Receiver initialized\n");
	while(1)
	{
		if(received_full_code)
		{
			printf("Nouveau code reçu : %x\n", received_full_code);
			received_full_code = 0;
		}
	}
}

///////////////////////////////////////////////////////////////////////////////////////


#define NB_BITS				64
static volatile int32_t index = -1;
static volatile uint64_t full_code = 0;

void RECEIVER_process_extit(void)
{
	// Désactivation des IT externes
	EXTIT_disable(EXTI_gpiopin_to_pin_number(IR_RECEIVER_PIN));

	index = -1;
	full_code = 0;

	// En RC5 : 1 bit = 1,778ms.
	TIMER_run_us(IR_RECEIVER_TIMER, 1778, TRUE);
	clear_it_status(IR_RECEIVER_TIMER);
}

void TIMER_handler_it(void)
{
	if(index==-1)
	{
		TIMER_set_period(IR_RECEIVER_TIMER, (1/4)*(1/36000));
	}
	else if(index==0)
	{
		TIMER_set_period(IR_RECEIVER_TIMER, 1/36000);
	}
	//en fonction de l'index ;
	//si index = 0 -> on lance le timer pour la bonne duree
	//si index = le dernier -> on stoppe le timer, on leve le flag pour traiter la trame
			//et on reactive les it. (apres avoir acquite le flag avec __HAL_GPIO_EXTI_CLEAR_IT(TSOP_PIN);
	HAL_GPIO_TogglePin(IR_LED_GPIO, IR_LED_PIN);
	uint8_t pin;
	pin = !HAL_GPIO_ReadPin(IR_RECEIVER_GPIO, IR_RECEIVER_PIN);
	full_code |= (uint32_t)(pin<<(index));
	index++;
	if(index == NB_BITS)
	{
		received_full_code = full_code;
		TIMER_stop(IR_RECEIVER_TIMER);
		__HAL_GPIO_EXTI_CLEAR_IT(IR_RECEIVER_PIN);
		EXTIT_enable(EXTI_gpiopin_to_pin_number(IR_RECEIVER_PIN));
	}
}


#endif
