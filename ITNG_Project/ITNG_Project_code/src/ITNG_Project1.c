/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-07-31     ASUS       the first version
*/


#include "sensor_asair_aht10.h"
#define AHT10_I2C_BUS  "i2c1"
#include <rtdbg.h>
#include <stdio.h>
#include <string.h>
#include <onenet.h>
#include <stdlib.h>
#include "hal_data.h"
#include "ssd1306.h"
#include <rtdbg.h>

#include "mfrc522.h"

static Uid *uid;

ALIGN(RT_ALIGN_SIZE)
static char thread1_stack[1024];
static char thread2_stack[1024];
static char thread3_stack[1024];
static char thread4_stack[1024];

/* 线程句柄 */
rt_thread_t onenet_aht10_thread = RT_NULL;
rt_thread_t aht10_read_thread = RT_NULL;
rt_thread_t oled_thread = RT_NULL;
rt_thread_t RC522_thread = RT_NULL;


/* 指向互斥量的指针 */
static rt_mutex_t humi_temp_mutex = RT_NULL;
static rt_uint8_t number1,number2 = 0;

/* 设置邮箱，传入温湿度数值 */
rt_mailbox_t temp_humi_Mb;//uid发送邮箱


/*********************************************************************************/
/* 模块初始化工作 */
static int rt_hw_aht10_port(void)
{
    struct rt_sensor_config cfg;
    cfg.intf.dev_name  = AHT10_I2C_BUS;
    cfg.intf.user_data = (void *)AHT10_I2C_ADDR;
    rt_hw_aht10_init("aht10", &cfg);
    return RT_EOK;
}
INIT_ENV_EXPORT(rt_hw_aht10_port);


void oled_init()
{
    ssd1306_Init();

    ssd1306_Fill(Black);
    ssd1306_SetCursor(10, 25);
    ssd1306_WriteString("Hello RT-Thread!", Font_7x10, White);
    ssd1306_UpdateScreen();
}
INIT_APP_EXPORT(oled_init);


/*********************************************************************************/
void aht10_read_thread_entry(void *parameter)
{
    rt_mutex_take(humi_temp_mutex, RT_WAITING_FOREVER);
    if(number1 != number2)
    {
      rt_kprintf("not protect.number1 = %d, mumber2 = %d \n",number1 ,number2);
    }
    else
    {
      rt_kprintf("humi_temp_mutex protect ,number1 = mumber2 is %d\n",number1);
      number1++;
      number2++;
      rt_mutex_release(humi_temp_mutex);
    }
}

void onenet_aht10_thread_entry(void *parameter)
{
    rt_mutex_take(humi_temp_mutex, RT_WAITING_FOREVER);
    if(number1 != number2)
    {
      rt_kprintf("not protect.number1 = %d, mumber2 = %d \n",number1 ,number2);
    }
    else
    {
      rt_kprintf("humi_temp_mutex protect ,number1 = mumber2 is %d\n",number1);
      number1++;
      number2++;
      rt_mutex_release(humi_temp_mutex);
    }
}

void oled_thread_entry(void *parameter)
{
    rt_mutex_take(humi_temp_mutex, RT_WAITING_FOREVER);
    if(number1 != number2)
    {
      rt_kprintf("not protect.number1 = %d, mumber2 = %d \n",number1 ,number2);
    }
    else
    {
      rt_kprintf("humi_temp_mutex protect ,number1 = mumber2 is %d\n",number1);
      number1++;
      number2++;
      rt_mutex_release(humi_temp_mutex);
    }
}

/*********************************************************************************/
static int ITNG_Project(void)
{
    /* 创建一个动态互斥量 */
    humi_temp_mutex = rt_mutex_create("humi_mutex", RT_IPC_FLAG_PRIO);
    if (humi_temp_mutex == RT_NULL)
    {
        rt_kprintf("create humi_temp_mutex failed.\n");
        return -1;
    }
    rt_kprintf("humi_temp_mutex successed...\n");


    // AHT10设备读取数值
    float humidity, temperature;

    aht10_device_t dev;
    rt_hw_aht10_port();
    dev = aht10_init(AHT10_I2C_BUS);
    if (dev == RT_NULL)
    {
        rt_kprintf(" The sensor initializes failure");
    }
    else
    {
        rt_kprintf(" The sensor initializes ok!\n");
    }


    while(1)
    {
//        MFRC522(MFRC522_SS_PIN, MFRC522_RST_PIN);
//        PCD_Init();     // Init MFRC522
//        PCD_DumpVersionToSerial();
//        rt_kprintf("Scan PICC to see UID, SAK, type, and data blocks...\n");

//        uid = get_uid();
//        ssd1306_Fill(White);
//        ssd1306_SetCursor(20, 25);
//        ssd1306_WriteString("Read the card", Font_7x10, Black);
//        ssd1306_UpdateScreen();

        // Reset the loop if no new card present on the sensor/reader. This saves the entire process when idle. And if present, select one.
//        while (1)
//        {
//            rt_thread_mdelay(500);
//
//            // Reset the loop if no new card present on the sensor/reader. This saves the entire process when idle. And if present, select one.
//            if ( ! PICC_IsNewCardPresent() || ! PICC_ReadCardSerial())
//            {
//                ssd1306_Fill(White);
//                ssd1306_SetCursor(25, 25);
//                ssd1306_WriteString("Card false", Font_7x10, Black);
//                ssd1306_UpdateScreen();

//                continue;
//            }

//            // Dump debug info about the card; PICC_HaltA() is automatically called
//            PICC_DumpToSerial(uid);
//            break;
//        }

        // Dump debug info about the card; PICC_HaltA() is automatically called
//        PICC_DumpToSerial(uid);

//        PCD_End();


        /***********************************************************************/
        /* read humidity 采集湿度 */
        humidity = aht10_read_humidity(dev);
        /* read temperature 采集温度 */
        temperature = aht10_read_temperature(dev);

        /* 温湿度读取数值 */
        if (humidity < 0)
        {
            LOG_D("upload has an error, stop uploading");
            break;
        }
        else
        {
            rt_kprintf("humidity : %d.%d\n", (int)humidity, (int)(humidity * 10) % 10);
            humidity = (int)humidity + (int)(humidity*10) % 10;
        }
        if (temperature  < 0)
        {
            LOG_D("upload has an error, stop uploading");
            break;
        }
        else
        {
            rt_kprintf("temperature : %d.%d\n", (int)temperature, (int)(temperature * 10) % 10);
            temperature = (int)temperature + (int)(temperature*10) % 10;
        }

        //线程一
        aht10_read_thread = rt_thread_create("aht10_read_thread", aht10_read_thread_entry,RT_NULL, sizeof(thread1_stack), 22, 500);
        if(aht10_read_thread == RT_NULL)
        {
            LOG_D("aht10_read_thread create failed...\n");
        }
        else
        {
            LOG_D("aht10_read_thread create successed...\n");
        }

        rt_thread_startup(aht10_read_thread);
        rt_kprintf("aht10_read_thread is startup!\n");

        /******************************************************************/

        //线程二
        onenet_aht10_thread = rt_thread_create("onenet_aht10_thread", onenet_aht10_thread_entry,RT_NULL, sizeof(thread2_stack), 20, 500);
        if(onenet_aht10_thread == RT_NULL)
        {
            LOG_D("onenet_aht10_thread create failed...\n");
        }
        else
        {
            LOG_D("onenet_aht10_thread create successed...\n");
        }


        if (onenet_mqtt_upload_digit("temperature",temperature) < 0)
        {
            LOG_E("upload has an error, stop uploading");
        }
        else
        {
            rt_kprintf("humidity : %d.%d\n", (int)temperature, (int)(temperature * 10) % 10);
        }

        rt_thread_delay(5000);


        if (onenet_mqtt_upload_digit("humidity",humidity ) < 0)
        {
            LOG_E("upload has an error, stop uploading");
        }
        else
        {
            rt_kprintf("humidity : %d.%d\n", (int)humidity, (int)(humidity * 10) % 10);
        }

        rt_thread_delay(rt_tick_from_millisecond(5 * 1000));
        rt_thread_startup(onenet_aht10_thread);
        rt_kprintf("onenet_aht10_thread is startup!\n");


        // 线程三
        oled_thread = rt_thread_create("oled_thread", oled_thread_entry, RT_NULL, sizeof(thread3_stack), 18, 500);
        if(oled_thread == RT_NULL)
        {
            LOG_D("oled_thread create failed...\n");
        }
        else
        {
            LOG_D("oled_thread create successed...\n");
        }

        ssd1306_Fill(White);
        ssd1306_SetCursor(4, 2);
        ssd1306_WriteString("Humi_Temp_Detection!", Font_7x10, Black);
        ssd1306_UpdateScreen();

        rt_thread_mdelay(1000);
        char buff[64];

        snprintf(buff, sizeof(buff), "Temperature: %d.%d\n", (int)temperature, (int)(temperature * 10) % 10);
        ssd1306_SetCursor(15, 30);
        ssd1306_WriteString(buff, Font_6x8, Black);
        ssd1306_UpdateScreen();
        rt_kprintf("Temperature_OLED : %d.%d\n", (int)temperature, (int)(temperature * 10) % 10);

        snprintf(buff, sizeof(buff), "Humidity:%d.%d\n", (int)humidity, (int)(humidity * 10) % 10);
        ssd1306_SetCursor(25, 47);
        ssd1306_WriteString(buff, Font_6x8, Black);
        ssd1306_UpdateScreen();
        rt_kprintf("Humidity_OLED : %d.%d\n", (int)humidity, (int)(humidity * 10) % 10);

        rt_kprintf("oled_init is ok...\n");
        rt_thread_startup(oled_thread);
        rt_kprintf("oled_thread_entry is ok...\n");

//        rt_thread_mdelay(5000);
    }
    return 0;
}
MSH_CMD_EXPORT(ITNG_Project,ITNG_Project);


