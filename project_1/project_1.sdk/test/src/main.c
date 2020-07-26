/*
 * main.c
 *
 *  Created on: 2017年8月31日
 *      Author: Administrator
 */


#include "I2C_8bit.h"
#include "xiic.h"
#include "xil_io.h"
#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "xparameters.h"

#define VDMA_BASEADDR	XPAR_AXI_VDMA_0_BASEADDR

#define VIDEO_BASEADDR0 0x81000000
#define VIDEO_BASEADDR1 0x82000000
#define VIDEO_BASEADDR2 0x83000000

#define H_ACTIVE	1280
#define V_ACTIVE	720
#define H_STRIDE	1280

#define DEMO_MAX_FRAME	(1920*1080*3)
#define DEMO_STRIDE		(1920*3)


void main()
{
	// Initialize OV5640 regesiter
	I2C_config_init();
	//Sensor_single_AF();

	Xil_Out32((VDMA_BASEADDR + 0x030), 0x108B);// enable circular mode
	//Xil_Out32((VDMA_BASEADDR + 0x030), 0x108B);// enable circular mode
	Xil_Out32((VDMA_BASEADDR + 0x0AC), VIDEO_BASEADDR0);	// start address
	Xil_Out32((VDMA_BASEADDR + 0x0B0), VIDEO_BASEADDR1);	// start address
	Xil_Out32((VDMA_BASEADDR + 0x0B4), VIDEO_BASEADDR2);	// start address
	Xil_Out32((VDMA_BASEADDR + 0x0A8), (H_STRIDE*3));		// h offset (640 * 4) bytes
	Xil_Out32((VDMA_BASEADDR + 0x0A4), (H_ACTIVE*3));		// h size (640 * 4) bytes
	Xil_Out32((VDMA_BASEADDR + 0x0A0), V_ACTIVE);			// v size (480)
		/*****************从DDR读数据设置*********************/
	Xil_Out32((VDMA_BASEADDR + 0x000), 0x8B); 		// enable circular mode
	Xil_Out32((VDMA_BASEADDR + 0x05c), VIDEO_BASEADDR0); 	// start address
	Xil_Out32((VDMA_BASEADDR + 0x060), VIDEO_BASEADDR1); 	// start address
	Xil_Out32((VDMA_BASEADDR + 0x064), VIDEO_BASEADDR2); 	// start address
	Xil_Out32((VDMA_BASEADDR + 0x058), (H_STRIDE*3)); 		// h offset (640 * 4) bytes
	Xil_Out32((VDMA_BASEADDR + 0x054), (H_ACTIVE*3)); 		// h size (640 * 4) bytes
	Xil_Out32((VDMA_BASEADDR + 0x050), V_ACTIVE); 			// v size (480)


	while (1) ;


}
