################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ra/fsp/src/bsp/cmsis/Device/RENESAS/Source/startup.c \
../ra/fsp/src/bsp/cmsis/Device/RENESAS/Source/system.c 

OBJS += \
./ra/fsp/src/bsp/cmsis/Device/RENESAS/Source/startup.o \
./ra/fsp/src/bsp/cmsis/Device/RENESAS/Source/system.o 

C_DEPS += \
./ra/fsp/src/bsp/cmsis/Device/RENESAS/Source/startup.d \
./ra/fsp/src/bsp/cmsis/Device/RENESAS/Source/system.d 


# Each subdirectory must supply rules for building sources it contributes
ra/fsp/src/bsp/cmsis/Device/RENESAS/Source/%.o: ../ra/fsp/src/bsp/cmsis/Device/RENESAS/Source/%.c
	arm-none-eabi-gcc -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\board\ports" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\board" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\libraries\HAL_Drivers\config" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\libraries\HAL_Drivers" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\packages\SEGGER_RTT-latest\RTT" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\packages\SEGGER_RTT-latest" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\ra\fsp\inc\api" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\ra\fsp\inc\instances" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\ra\fsp\inc" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\ra_cfg\fsp_cfg\bsp" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\ra_cfg\fsp_cfg" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\ra_gen" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\rt-thread\components\dfs\filesystems\devfs" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\rt-thread\components\dfs\include" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\rt-thread\components\drivers\include" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\rt-thread\components\finsh" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\rt-thread\components\libc\compilers\common" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\rt-thread\components\libc\compilers\newlib" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\rt-thread\components\libc\posix\io\poll" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\rt-thread\components\libc\posix\io\stdio" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\rt-thread\components\libc\posix\ipc" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\rt-thread\include" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\rt-thread\libcpu\arm\common" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\rt-thread\libcpu\arm\cortex-m4" -include"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_segger_rtt_pr\rtconfig_preinc.h" -std=gnu11 -mcpu=cortex-m33 -mthumb -mfpu=fpv5-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -Dgcc -O0 -gdwarf-2 -g -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

