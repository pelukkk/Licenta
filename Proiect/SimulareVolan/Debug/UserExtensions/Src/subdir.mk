################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../UserExtensions/Src/DRV8301.c \
../UserExtensions/Src/ForceFeedback.c \
../UserExtensions/Src/MotorControl.c \
../UserExtensions/Src/Pedals.c \
../UserExtensions/Src/Shifter.c \
../UserExtensions/Src/Wheel.c 

C_DEPS += \
./UserExtensions/Src/DRV8301.d \
./UserExtensions/Src/ForceFeedback.d \
./UserExtensions/Src/MotorControl.d \
./UserExtensions/Src/Pedals.d \
./UserExtensions/Src/Shifter.d \
./UserExtensions/Src/Wheel.d 

OBJS += \
./UserExtensions/Src/DRV8301.o \
./UserExtensions/Src/ForceFeedback.o \
./UserExtensions/Src/MotorControl.o \
./UserExtensions/Src/Pedals.o \
./UserExtensions/Src/Shifter.o \
./UserExtensions/Src/Wheel.o 


# Each subdirectory must supply rules for building sources it contributes
UserExtensions/Src/%.o UserExtensions/Src/%.su UserExtensions/Src/%.cyclo: ../UserExtensions/Src/%.c UserExtensions/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSBD_CUSTOMHID_CTRL_REQ_GET_REPORT_ENABLED -DUSE_HAL_DRIVER -DSTM32F405xx -UUSBD_CUSTOMHID_CTRL_REQ_COMPLETE_CALLBACK_ENABLED -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CustomHID/Inc -I"C:/Users/Marco/Documents/GitHub/Licenta/Proiect/SimulareVolan/UserExtensions/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-UserExtensions-2f-Src

clean-UserExtensions-2f-Src:
	-$(RM) ./UserExtensions/Src/DRV8301.cyclo ./UserExtensions/Src/DRV8301.d ./UserExtensions/Src/DRV8301.o ./UserExtensions/Src/DRV8301.su ./UserExtensions/Src/ForceFeedback.cyclo ./UserExtensions/Src/ForceFeedback.d ./UserExtensions/Src/ForceFeedback.o ./UserExtensions/Src/ForceFeedback.su ./UserExtensions/Src/MotorControl.cyclo ./UserExtensions/Src/MotorControl.d ./UserExtensions/Src/MotorControl.o ./UserExtensions/Src/MotorControl.su ./UserExtensions/Src/Pedals.cyclo ./UserExtensions/Src/Pedals.d ./UserExtensions/Src/Pedals.o ./UserExtensions/Src/Pedals.su ./UserExtensions/Src/Shifter.cyclo ./UserExtensions/Src/Shifter.d ./UserExtensions/Src/Shifter.o ./UserExtensions/Src/Shifter.su ./UserExtensions/Src/Wheel.cyclo ./UserExtensions/Src/Wheel.d ./UserExtensions/Src/Wheel.o ./UserExtensions/Src/Wheel.su

.PHONY: clean-UserExtensions-2f-Src

