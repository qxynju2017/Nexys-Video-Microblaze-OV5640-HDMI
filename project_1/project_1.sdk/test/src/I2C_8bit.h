/*
 * I2C_8bit.h
 *
 *  Created on: 2017Äê8ÔÂ23ÈÕ
 *      Author: Administrator
 */

#ifndef SRC_I2C_8BIT_H_
#define SRC_I2C_8BIT_H_

#include "xiic.h"
#include "xintc.h"
#include "xparameters.h"
#include "xil_types.h"

#define INTC_DEV_ID		XPAR_AXI_IIC_0_DEVICE_ID
#define IIC_INTR_ID		XPAR_INTC_0_IIC_0_VEC_ID
#define OV_CAM 0x3c

struct	config_table{
	u16	addr;
	u8	data;
};

int I2C_config_init();
int I2C_read(XIic *InstancePtr,u16 *addr,u8 *read_buf);
int I2C_write(XIic *InstancePtr,u16 addr,u8 data);
static void SendHandler(XIic *InstancePtr);
static void StatusHandler(XIic *InstancePtr, int Event);
int I2C_SetupInterruptSystem(XIntc *InterruptController,XIic *InstancePtr);


#endif /* SRC_I2C_8BIT_H_ */
