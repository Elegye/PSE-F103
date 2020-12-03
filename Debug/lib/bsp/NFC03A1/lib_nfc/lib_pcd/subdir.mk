################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_iso14443Apcd.c \
../lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_iso14443Bpcd.c \
../lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_iso15693pcd.c \
../lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_iso18092pcd.c \
../lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_iso7816pcd.c \
../lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_nfctype1pcd.c \
../lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_nfctype2pcd.c \
../lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_nfctype3pcd.c \
../lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_nfctype4pcd.c \
../lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_nfctype5pcd.c \
../lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_pcd.c 

OBJS += \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_iso14443Apcd.o \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_iso14443Bpcd.o \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_iso15693pcd.o \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_iso18092pcd.o \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_iso7816pcd.o \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_nfctype1pcd.o \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_nfctype2pcd.o \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_nfctype3pcd.o \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_nfctype4pcd.o \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_nfctype5pcd.o \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_pcd.o 

C_DEPS += \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_iso14443Apcd.d \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_iso14443Bpcd.d \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_iso15693pcd.d \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_iso18092pcd.d \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_iso7816pcd.d \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_nfctype1pcd.d \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_nfctype2pcd.d \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_nfctype3pcd.d \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_nfctype4pcd.d \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_nfctype5pcd.d \
./lib/bsp/NFC03A1/lib_nfc/lib_pcd/lib_pcd.d 


# Each subdirectory must supply rules for building sources it contributes
lib/bsp/NFC03A1/lib_nfc/lib_pcd/%.o: ../lib/bsp/NFC03A1/lib_nfc/lib_pcd/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -DSTM32F1 -DNUCLEO_F103RB -DSTM32F103RBTx -DSTM32 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/middleware/MIDI" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/VL53L0X" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/MPU6050" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/iks01a1" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/iks01a1/Common" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/iks01a1/hts221" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/iks01a1/lis3mdl" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/iks01a1/lps22hb" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/iks01a1/lps25hb" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/iks01a1/lsm6ds0" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/iks01a1/lsm6ds3" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/tft_ili9341" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/tft_pcd8544" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/MCP23S17" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/hal/inc" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/Common" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/lcd2x16" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/MLX90614" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/MatrixKeyboard" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/bsp/MatrixLed" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/CMSIS/core" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/CMSIS/device" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/middleware/FatFs" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/middleware/FatFs/src" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/lib/middleware/FatFs/src/drivers" -I"C:/Users/Asus/Documents/ESEO/I1/Embarqu�/projet-f103/appli"  -Og -g3 -Wall -Wextra -Wconversion -fmessage-length=0 -ffunction-sections -fdata-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


