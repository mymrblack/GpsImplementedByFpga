################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/GPS.c \
../src/My_UART.c \
../src/Uart_Intr.c \
../src/helloworld.c \
../src/platform.c 

OBJS += \
./src/GPS.o \
./src/My_UART.o \
./src/Uart_Intr.o \
./src/helloworld.o \
./src/platform.o 

C_DEPS += \
./src/GPS.d \
./src/My_UART.d \
./src/Uart_Intr.d \
./src/helloworld.d \
./src/platform.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../gps_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


