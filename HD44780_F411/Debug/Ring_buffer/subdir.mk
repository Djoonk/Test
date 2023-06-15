################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Ring_buffer/Ring_Buffer.c 

OBJS += \
./Ring_buffer/Ring_Buffer.o 

C_DEPS += \
./Ring_buffer/Ring_Buffer.d 


# Each subdirectory must supply rules for building sources it contributes
Ring_buffer/%.o Ring_buffer/%.su Ring_buffer/%.cyclo: ../Ring_buffer/%.c Ring_buffer/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"/home/oem/Embedded C/Tatget2/HD44780_F411/LCD44780" -I"/home/oem/Embedded C/Tatget2/HD44780_F411/Ring_buffer" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Ring_buffer

clean-Ring_buffer:
	-$(RM) ./Ring_buffer/Ring_Buffer.cyclo ./Ring_buffer/Ring_Buffer.d ./Ring_buffer/Ring_Buffer.o ./Ring_buffer/Ring_Buffer.su

.PHONY: clean-Ring_buffer

