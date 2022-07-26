################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/components/drivers/ipc/completion.c \
../rt-thread/components/drivers/ipc/dataqueue.c \
../rt-thread/components/drivers/ipc/pipe.c \
../rt-thread/components/drivers/ipc/ringblk_buf.c \
../rt-thread/components/drivers/ipc/ringbuffer.c \
../rt-thread/components/drivers/ipc/waitqueue.c \
../rt-thread/components/drivers/ipc/workqueue.c 

OBJS += \
./rt-thread/components/drivers/ipc/completion.o \
./rt-thread/components/drivers/ipc/dataqueue.o \
./rt-thread/components/drivers/ipc/pipe.o \
./rt-thread/components/drivers/ipc/ringblk_buf.o \
./rt-thread/components/drivers/ipc/ringbuffer.o \
./rt-thread/components/drivers/ipc/waitqueue.o \
./rt-thread/components/drivers/ipc/workqueue.o 

C_DEPS += \
./rt-thread/components/drivers/ipc/completion.d \
./rt-thread/components/drivers/ipc/dataqueue.d \
./rt-thread/components/drivers/ipc/pipe.d \
./rt-thread/components/drivers/ipc/ringblk_buf.d \
./rt-thread/components/drivers/ipc/ringbuffer.d \
./rt-thread/components/drivers/ipc/waitqueue.d \
./rt-thread/components/drivers/ipc/workqueue.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/components/drivers/ipc/%.o: ../rt-thread/components/drivers/ipc/%.c
	arm-none-eabi-gcc -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\board\ports" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\board" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\libraries\HAL_Drivers\config" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\libraries\HAL_Drivers" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\packages\aht10-latest" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\packages\at_device-latest\class\esp8266" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\packages\at_device-latest\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\packages\cJSON-latest" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\packages\netutils-latest\ntp" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\packages\onenet-latest\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\packages\pahomqtt-latest\MQTTClient-RT" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\packages\pahomqtt-latest\MQTTPacket\src" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\packages\rc522-latest\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\packages\rc522-latest" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\packages\ssd1306-latest\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\packages\webclient-v2.2.0\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\ra\fsp\inc\api" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\ra\fsp\inc\instances" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\ra\fsp\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\ra_cfg\fsp_cfg\bsp" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\ra_cfg\fsp_cfg" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\ra_gen" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\dfs\filesystems\devfs" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\dfs\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\drivers\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\drivers\sensors" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\drivers\spi" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\finsh" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\libc\compilers\common" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\libc\compilers\newlib" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\libc\posix\io\poll" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\libc\posix\io\stdio" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\libc\posix\ipc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\net\at\at_socket" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\net\at\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\net\netdev\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\net\sal\impl" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\net\sal\include\dfs_net" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\net\sal\include\socket\sys_socket" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\net\sal\include\socket" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\net\sal\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\components\utilities\ulog" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\libcpu\arm\common" -I"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rt-thread\libcpu\arm\cortex-m4" -include"D:\RT-Thread\RT-ThreadStudio\workspace\Project_hosting\CPK_ESP8266\rtconfig_preinc.h" -std=gnu11 -mcpu=cortex-m33 -mthumb -mfpu=fpv5-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -Dgcc -O0 -gdwarf-2 -g -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

