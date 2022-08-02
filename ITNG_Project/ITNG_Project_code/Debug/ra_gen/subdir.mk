################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ra_gen/common_data.c \
../ra_gen/hal_data.c \
../ra_gen/main.c \
../ra_gen/pin_data.c \
../ra_gen/vector_data.c 

OBJS += \
./ra_gen/common_data.o \
./ra_gen/hal_data.o \
./ra_gen/main.o \
./ra_gen/pin_data.o \
./ra_gen/vector_data.o 

C_DEPS += \
./ra_gen/common_data.d \
./ra_gen/hal_data.d \
./ra_gen/main.d \
./ra_gen/pin_data.d \
./ra_gen/vector_data.d 


# Each subdirectory must supply rules for building sources it contributes
ra_gen/%.o: ../ra_gen/%.c
	arm-none-eabi-gcc -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\board\ports" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\board" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\libraries\HAL_Drivers\config" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\libraries\HAL_Drivers" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\packages\aht10-latest" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\packages\at_device-latest\class\esp8266" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\packages\at_device-latest\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\packages\cJSON-latest" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\packages\netutils-latest\ntp" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\packages\onenet-latest\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\packages\pahomqtt-latest\MQTTClient-RT" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\packages\pahomqtt-latest\MQTTPacket\src" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\packages\rc522-latest\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\packages\rc522-latest" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\packages\ssd1306-latest\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\packages\webclient-v2.2.0\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\ra\fsp\inc\api" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\ra\fsp\inc\instances" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\ra\fsp\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\ra_cfg\fsp_cfg\bsp" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\ra_cfg\fsp_cfg" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\ra_gen" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\dfs\filesystems\devfs" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\dfs\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\drivers\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\drivers\sensors" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\drivers\spi" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\finsh" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\libc\compilers\common" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\libc\compilers\newlib" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\libc\posix\io\poll" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\libc\posix\io\stdio" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\libc\posix\ipc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\net\at\at_socket" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\net\at\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\net\netdev\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\net\sal\impl" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\net\sal\include\dfs_net" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\net\sal\include\socket\sys_socket" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\net\sal\include\socket" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\net\sal\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\components\utilities\ulog" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\libcpu\arm\common" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rt-thread\libcpu\arm\cortex-m4" -include"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\ITNG_Project\ITNG_Project_code\rtconfig_preinc.h" -std=gnu11 -mcpu=cortex-m33 -mthumb -mfpu=fpv5-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -Dgcc -O0 -gdwarf-2 -g -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

