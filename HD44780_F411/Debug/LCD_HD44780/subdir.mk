################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LCD_HD44780/HD44780.c 

OBJS += \
./LCD_HD44780/HD44780.o 

C_DEPS += \
./LCD_HD44780/HD44780.d 


# Each subdirectory must supply rules for building sources it contributes
LCD_HD44780/%.o LCD_HD44780/%.su LCD_HD44780/%.cyclo: ../LCD_HD44780/%.c LCD_HD44780/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I"/home/oem/Embedded C/Tatget2/HD44780_F411/LCD_HD44780" -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LCD_HD44780

clean-LCD_HD44780:
	-$(RM) ./LCD_HD44780/HD44780.cyclo ./LCD_HD44780/HD44780.d ./LCD_HD44780/HD44780.o ./LCD_HD44780/HD44780.su

.PHONY: clean-LCD_HD44780

