################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/components/dfs/filesystems/devfs/devfs.c 

OBJS += \
./rt-thread/components/dfs/filesystems/devfs/devfs.o 

C_DEPS += \
./rt-thread/components/dfs/filesystems/devfs/devfs.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/components/dfs/filesystems/devfs/%.o: ../rt-thread/components/dfs/filesystems/devfs/%.c
	arm-none-eabi-gcc -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\board\ports" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\board" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\libraries\HAL_Drivers\config" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\libraries\HAL_Drivers" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\packages\SEGGER_RTT-latest\RTT" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\packages\SEGGER_RTT-latest" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\ra\fsp\inc\api" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\ra\fsp\inc\instances" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\ra\fsp\inc" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\ra_cfg\fsp_cfg\bsp" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\ra_cfg\fsp_cfg" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\ra_gen" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\rt-thread\components\dfs\filesystems\devfs" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\rt-thread\components\dfs\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\rt-thread\components\drivers\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\rt-thread\components\finsh" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\rt-thread\components\libc\compilers\common" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\rt-thread\components\libc\compilers\newlib" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\rt-thread\components\libc\posix\io\poll" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\rt-thread\components\libc\posix\io\stdio" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\rt-thread\components\libc\posix\ipc" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\rt-thread\include" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\rt-thread\libcpu\arm\common" -I"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\rt-thread\libcpu\arm\cortex-m4" -include"D:\RT-Thread\RT-ThreadStudio\workspace_backup\RA_segger_rtt\rtconfig_preinc.h" -std=gnu11 -mcpu=cortex-m33 -mthumb -mfpu=fpv5-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -Dgcc -O0 -gdwarf-2 -g -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

