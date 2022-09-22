 /*============================================================================
 * @author  :   FlyLu                                                         *
 * @date    :   2018-05-18                                                    *
 * @brief   :   segger rtt driver                                             *
 *                                                                            *
 =============================================================================*/

/*============================ INCLUDES ======================================*/
#include <rthw.h>
#include "SEGGER_RTT.h"
#include "stdint.h"

/*============================ MACROS ========================================*/
#define SEGGER_RTT_THREAD_STACKSIZE         512
#define SEGGER_RTT_THREAD_PRIOR             19

#define SERRER_RTT_THREAD_DELAY             30

#define RTT_DEFAULT_TERMINAL_INDEX 0
#define RTT_DEFAULT_BUFFER_INDEX 0

    
/*============================ MACROFIED FUNCTIONS ===========================*/
/*============================ TYPES =========================================*/
struct segger_rtt_device
{
    struct rt_device          parent;
};

/*============================ GLOBAL VARIABLES ==============================*/
/*============================ LOCAL VARIABLES ===============================*/
static struct segger_rtt_device  sSeggerRtt;

/*============================ PROTOTYPES ====================================*/
/*============================ IMPLEMENTATION ================================*/

static rt_size_t rt_segger_rtt_read(struct rt_device *dev,
                                    rt_off_t          pos,
                                    void             *buffer,
                                    rt_size_t         size)
{
    return SEGGER_RTT_Read(0, buffer, size);

}

static rt_size_t rt_segger_rtt_write(struct rt_device *dev,
                                     rt_off_t          pos,
                                     const void       *buffer,
                                     rt_size_t         size)
{
    return SEGGER_RTT_Write(0, buffer, size);
}

static rt_err_t rt_segger_rtt_open(struct rt_device *dev, rt_uint16_t oflag)
{
    return RT_EOK;
}

static rt_err_t rt_segger_rtt_close(struct rt_device *dev)
{
    return RT_EOK;
}

static rt_err_t rt_segger_rtt_init(struct rt_device *dev)
{
    return RT_EOK;
}

static rt_err_t rt_segger_rtt_control(struct rt_device *dev,
                                      rt_uint8_t        cmd,
                                      void             *args)
{
    return RT_EOK;
}


rt_err_t rt_hw_segger_rtt_register(struct segger_rtt_device  *segger_rtt,
                                   const char                *name,
                                   rt_uint32_t                flag,
                                   void                      *data)
{
    struct rt_device *device;
    RT_ASSERT(segger_rtt != RT_NULL);

    device = &(segger_rtt->parent);

    device->type        = RT_Device_Class_Char;
    device->rx_indicate = RT_NULL;
    device->tx_complete = RT_NULL;

    device->init        = rt_segger_rtt_init;
    device->open        = rt_segger_rtt_open;
    device->close       = rt_segger_rtt_close;
    device->read        = rt_segger_rtt_read;
    device->write       = rt_segger_rtt_write;
    device->control     = rt_segger_rtt_control;
    device->user_data   = data;

    /* register a character device */
    return rt_device_register(device, name, flag);
}


static void segger_rtt_client_thread_entry (void *parameter)
{
    struct segger_rtt_device  *segger_rtt;
    uint32_t                   count;

    rt_kprintf("Hello SEGGER Real-Time-Terminal\r\n");
    segger_rtt = (struct segger_rtt_device *)rt_device_find("rtdebug");
    RT_ASSERT(segger_rtt != RT_NULL);

    for (;;) {
        if ((count = SEGGER_RTT_HasData(0)) != 0) {
            if (segger_rtt->parent.rx_indicate != RT_NULL) {
                segger_rtt->parent.rx_indicate(&segger_rtt->parent, count);
            }
        }
        rt_thread_delay(rt_tick_from_millisecond(SERRER_RTT_THREAD_DELAY));
    }
}



void segger_rtt_device_init(void)
{
    SEGGER_RTT_Init();
    SEGGER_RTT_SetTerminal(RTT_DEFAULT_TERMINAL_INDEX);

    SEGGER_RTT_ConfigUpBuffer(RTT_DEFAULT_BUFFER_INDEX, "RTTUP", RT_NULL, 0, SEGGER_RTT_MODE_NO_BLOCK_SKIP);
    SEGGER_RTT_ConfigDownBuffer(RTT_DEFAULT_BUFFER_INDEX, "RTTDOWN", RT_NULL, 0, SEGGER_RTT_MODE_NO_BLOCK_SKIP);

    rt_hw_segger_rtt_register(&sSeggerRtt, "rtdebug", 0, RT_NULL);
    SEGGER_RTT_printf(0,"\r\n SEGGER_RTT ADDRESS:%p \r\n",&_SEGGER_RTT);
}


ALIGN(RT_ALIGN_SIZE)
static rt_uint8_t segger_rtt_stack[SEGGER_RTT_THREAD_STACKSIZE];
static struct rt_thread segger_rtt_thread;

void segger_rtt_client_thread_init(void)
{
    int result;
    
    result = rt_thread_init(&segger_rtt_thread,
            "rtdebug", 
            segger_rtt_client_thread_entry,
            RT_NULL,
            (rt_uint8_t *)segger_rtt_stack,
            sizeof(segger_rtt_stack), 
            SEGGER_RTT_THREAD_PRIOR,
            20);

    if (RT_EOK == result)
        rt_thread_startup(&segger_rtt_thread);
}


/* EOF */

