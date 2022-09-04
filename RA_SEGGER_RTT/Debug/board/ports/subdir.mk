################################################################################
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../board/ports/drv_rw007.c 

OBJS += \
./board/ports/drv_rw007.o 

C_DEPS += \
./board/ports/drv_rw007.d 


# Each subdirectory must supply rules for building sources it contributes
board/ports/%.o: ../board/ports/%.c
	arm-none-eabi-gcc -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\board\ports" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\board" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\libraries\HAL_Drivers\config" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\libraries\HAL_Drivers" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\packages\SEGGER_RTT-latest\RTT" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\packages\SEGGER_RTT-latest" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\ra\fsp\inc\api" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\ra\fsp\inc\instances" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\ra\fsp\inc" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\ra_cfg\fsp_cfg\bsp" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\ra_cfg\fsp_cfg" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\ra_gen" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\rt-thread\components\drivers\include" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\rt-thread\components\finsh" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\rt-thread\components\libc\compilers\common" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\rt-thread\components\libc\compilers\newlib" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\rt-thread\components\libc\posix\io\poll" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\rt-thread\components\libc\posix\io\stdio" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\rt-thread\components\libc\posix\ipc" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\rt-thread\include" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\rt-thread\libcpu\arm\common" -I"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\rt-thread\libcpu\arm\cortex-m4" -include"D:\RT-Thread\RT-ThreadStudio\workback_backup2\RA_SEGGER_RTT\rtconfig_preinc.h" -std=gnu11 -mcpu=cortex-m33 -mthumb -mfpu=fpv5-sp-d16 -mfloat-abi=hard -ffunction-sections -fdata-sections -Dgcc -O0 -gdwarf-2 -g -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

