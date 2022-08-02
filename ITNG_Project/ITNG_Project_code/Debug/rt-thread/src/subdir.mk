################################################################################
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/src/clock.c \
../rt-thread/src/components.c \
../rt-thread/src/device.c \
../rt-thread/src/idle.c \
../rt-thread/src/ipc.c \
../rt-thread/src/irq.c \
../rt-thread/src/kservice.c \
../rt-thread/src/mem.c \
../rt-thread/src/object.c \
../rt-thread/src/scheduler.c \
../rt-thread/src/thread.c \
../rt-thread/src/timer.c 

OBJS += \
./rt-thread/src/clock.o \
./rt-thread/src/components.o \
./rt-thread/src/device.o \
./rt-thread/src/idle.o \
./rt-thread/src/ipc.o \
./rt-thread/src/irq.o \
./rt-thread/src/kservice.o \
./rt-thread/src/mem.o \
./rt-thread/src/object.o \
./rt-thread/src/scheduler.o \
./rt-thread/src/thread.o \
./rt-thread/src/timer.o 

C_DEPS += \
./rt-thread/src/clock.d \
./rt-thread/src/components.d \
./rt-thread/src/device.d \
./rt-thread/src/idle.d \
./rt-thread/src/ipc.d \
./rt-thread/src/irq.d \
./rt-thread/src/kservice.d \
./rt-thread/src/mem.d \
./rt-thread/src/object.d \
./rt-thread/src/scheduler.d \
./rt-thread/src/thread.d \
./rt-thread/src/timer.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/src/%.o: ../rt-thread/src/%.c
	arm-none-eabi-gcc -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\board\ports" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\board" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\libraries\HAL_Drivers\config" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\libraries\HAL_Drivers" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\packages\aht10-latest" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\packages\at_device-latest\class\esp8266" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\packages\at_device-latest\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\packages\cJSON-latest" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\packages\netutils-latest\ntp" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\packages\onenet-latest\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\packages\pahomqtt-latest\MQTTClient-RT" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\packages\pahomqtt-latest\MQTTPacket\src" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\packages\rc522-latest\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\packages\rc522-latest" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\packages\ssd1306-latest\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\packages\webclient-v2.2.0\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\ra\fsp\inc\api" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\ra\fsp\inc\instances" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\ra\fsp\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\ra_cfg\fsp_cfg\bsp" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\ra_cfg\fsp_cfg" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\ra_gen" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\dfs\filesystems\devfs" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\dfs\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\drivers\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\drivers\sensors" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\drivers\spi" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\finsh" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\libc\compilers\common" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\libc\compilers\newlib" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\libc\posix\io\poll" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\libc\posix\io\stdio" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\libc\posix\ipc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\net\at\at_socket" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\net\at\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\net\netdev\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\net\sal\impl" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\net\sal\include\dfs_net" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\net\sal\include\socket\sys_socket" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\net\sal\include\socket" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\net\sal\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\components\utilities\ulog" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\libcpu\arm\common" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rt-thread\libcpu\arm\cortex-m4" -include"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_ESP8266\rtconfig_preinc.h" -std=gnu11 -mcpu=cortex-m33 -mthumb -mfpu=fpv5-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -Dgcc -O0 -gdwarf-2 -g -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

