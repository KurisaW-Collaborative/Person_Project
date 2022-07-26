################################################################################
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ra/fsp/src/bsp/mcu/all/bsp_clocks.c \
../ra/fsp/src/bsp/mcu/all/bsp_common.c \
../ra/fsp/src/bsp/mcu/all/bsp_delay.c \
../ra/fsp/src/bsp/mcu/all/bsp_group_irq.c \
../ra/fsp/src/bsp/mcu/all/bsp_guard.c \
../ra/fsp/src/bsp/mcu/all/bsp_io.c \
../ra/fsp/src/bsp/mcu/all/bsp_irq.c \
../ra/fsp/src/bsp/mcu/all/bsp_register_protection.c \
../ra/fsp/src/bsp/mcu/all/bsp_rom_registers.c \
../ra/fsp/src/bsp/mcu/all/bsp_sbrk.c \
../ra/fsp/src/bsp/mcu/all/bsp_security.c 

OBJS += \
./ra/fsp/src/bsp/mcu/all/bsp_clocks.o \
./ra/fsp/src/bsp/mcu/all/bsp_common.o \
./ra/fsp/src/bsp/mcu/all/bsp_delay.o \
./ra/fsp/src/bsp/mcu/all/bsp_group_irq.o \
./ra/fsp/src/bsp/mcu/all/bsp_guard.o \
./ra/fsp/src/bsp/mcu/all/bsp_io.o \
./ra/fsp/src/bsp/mcu/all/bsp_irq.o \
./ra/fsp/src/bsp/mcu/all/bsp_register_protection.o \
./ra/fsp/src/bsp/mcu/all/bsp_rom_registers.o \
./ra/fsp/src/bsp/mcu/all/bsp_sbrk.o \
./ra/fsp/src/bsp/mcu/all/bsp_security.o 

C_DEPS += \
./ra/fsp/src/bsp/mcu/all/bsp_clocks.d \
./ra/fsp/src/bsp/mcu/all/bsp_common.d \
./ra/fsp/src/bsp/mcu/all/bsp_delay.d \
./ra/fsp/src/bsp/mcu/all/bsp_group_irq.d \
./ra/fsp/src/bsp/mcu/all/bsp_guard.d \
./ra/fsp/src/bsp/mcu/all/bsp_io.d \
./ra/fsp/src/bsp/mcu/all/bsp_irq.d \
./ra/fsp/src/bsp/mcu/all/bsp_register_protection.d \
./ra/fsp/src/bsp/mcu/all/bsp_rom_registers.d \
./ra/fsp/src/bsp/mcu/all/bsp_sbrk.d \
./ra/fsp/src/bsp/mcu/all/bsp_security.d 


# Each subdirectory must supply rules for building sources it contributes
ra/fsp/src/bsp/mcu/all/%.o: ../ra/fsp/src/bsp/mcu/all/%.c
	arm-none-eabi-gcc -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\board\ports" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\board" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\libraries\HAL_Drivers\config" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\libraries\HAL_Drivers" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\packages\aht10-latest" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\packages\at_device-latest\class\esp8266" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\packages\at_device-latest\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\packages\cJSON-latest" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\packages\netutils-latest\ntp" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\packages\onenet-latest\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\packages\pahomqtt-v1.1.0\MQTTClient-RT" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\packages\pahomqtt-v1.1.0\MQTTPacket\src" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\packages\ssd1306-latest\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\packages\webclient-v2.2.0\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\ra\fsp\inc\api" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\ra\fsp\inc\instances" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\ra\fsp\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\ra_cfg\fsp_cfg\bsp" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\ra_cfg\fsp_cfg" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\ra_gen" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\dfs\filesystems\devfs" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\dfs\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\drivers\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\drivers\sensors" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\finsh" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\libc\compilers\common" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\libc\compilers\newlib" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\libc\posix\io\poll" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\libc\posix\io\stdio" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\libc\posix\ipc" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\net\at\at_socket" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\net\at\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\net\netdev\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\net\sal\impl" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\net\sal\include\dfs_net" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\net\sal\include\socket\sys_socket" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\net\sal\include\socket" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\net\sal\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\components\utilities\ulog" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\libcpu\arm\common" -I"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rt-thread\libcpu\arm\cortex-m4" -include"D:\RT-Thread\RT-ThreadStudio\workspace\CPK_esp8266\rtconfig_preinc.h" -std=gnu11 -mcpu=cortex-m33 -mthumb -mfpu=fpv5-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -Dgcc -O0 -gdwarf-2 -g -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

