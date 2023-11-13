################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Src/Lab3.s \
../Core/Src/Lab3a_L432KC.s \
../Core/Src/Lab3b_L432KC.s \
../Core/Src/Lab3c_L432KC.s 

C_SRCS += \
../Core/Src/main_L432KC.c \
../Core/Src/retarget.c \
../Core/Src/stm32l4xx_hal_msp.c \
../Core/Src/stm32l4xx_it.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32l4xx.c 

OBJS += \
./Core/Src/Lab3.o \
./Core/Src/Lab3a_L432KC.o \
./Core/Src/Lab3b_L432KC.o \
./Core/Src/Lab3c_L432KC.o \
./Core/Src/main_L432KC.o \
./Core/Src/retarget.o \
./Core/Src/stm32l4xx_hal_msp.o \
./Core/Src/stm32l4xx_it.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32l4xx.o 

S_DEPS += \
./Core/Src/Lab3.d \
./Core/Src/Lab3a_L432KC.d \
./Core/Src/Lab3b_L432KC.d \
./Core/Src/Lab3c_L432KC.d 

C_DEPS += \
./Core/Src/main_L432KC.d \
./Core/Src/retarget.d \
./Core/Src/stm32l4xx_hal_msp.d \
./Core/Src/stm32l4xx_it.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32l4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o: ../Core/Src/%.s Core/Src/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Core/Src/%.o Core/Src/%.su: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/Lab3.d ./Core/Src/Lab3.o ./Core/Src/Lab3a_L432KC.d ./Core/Src/Lab3a_L432KC.o ./Core/Src/Lab3b_L432KC.d ./Core/Src/Lab3b_L432KC.o ./Core/Src/Lab3c_L432KC.d ./Core/Src/Lab3c_L432KC.o ./Core/Src/main_L432KC.d ./Core/Src/main_L432KC.o ./Core/Src/main_L432KC.su ./Core/Src/retarget.d ./Core/Src/retarget.o ./Core/Src/retarget.su ./Core/Src/stm32l4xx_hal_msp.d ./Core/Src/stm32l4xx_hal_msp.o ./Core/Src/stm32l4xx_hal_msp.su ./Core/Src/stm32l4xx_it.d ./Core/Src/stm32l4xx_it.o ./Core/Src/stm32l4xx_it.su ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32l4xx.d ./Core/Src/system_stm32l4xx.o ./Core/Src/system_stm32l4xx.su

.PHONY: clean-Core-2f-Src

