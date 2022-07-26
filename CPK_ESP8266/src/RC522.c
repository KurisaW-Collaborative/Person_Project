/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2022-07-28     ASUS       the first version
 */

//#include "mfrc522.h"
//#include <drv_spi.h>
//
//static struct rt_spi_device mfrc522_spi_dev;
//
//static int rt_hw_spi_rc522_init()
//{
//    rt_err_t res = RT_EOK;
//    rt_hw_spi_device_attach(&mfrc522_spi_dev, MFRC522_SPI_DEVICE_NAME, MFRC522_SPI_BUS_NAME, MFRC522_SS_PIN);
//
//    struct rt_spi_device *spi_dev = (struct rt_spi_device *)rt_device_find(MFRC522_SPI_DEVICE_NAME);
//    // Set device SPI Mode
//    struct rt_spi_configuration cfg = {0};
//    cfg.data_width = 8;
//    cfg.mode = RT_SPI_MASTER | RT_SPI_MODE_0 | RT_SPI_MSB | RT_SPI_NO_CS;
//    cfg.max_hz = MFRC522_SPICLOCK;
//    rt_spi_configure(spi_dev, &cfg);
//    rt_kprintf("rt_hw_spi_rc522_init successed...\n");
//
//    return RT_EOK;
//}
//INIT_COMPONENT_EXPORT(rt_hw_spi_rc522_init);
//MSH_CMD_EXPORT(rt_hw_spi_rc522_init,rt_hw_spi_rc522_init);
