################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../user-ops/Arnold-Render/Arnold-Render.cc 

OBJS += \
./user-ops/Arnold-Render/Arnold-Render.o 

CC_DEPS += \
./user-ops/Arnold-Render/Arnold-Render.d 


# Each subdirectory must supply rules for building sources it contributes
user-ops/Arnold-Render/%.o: ../user-ops/Arnold-Render/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


