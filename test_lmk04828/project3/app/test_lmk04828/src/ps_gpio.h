#ifndef PS_GPIO_H
#define PS_GPIO_H

#define GPIO_DEVICE_ID		XPAR_XGPIOPS_0_DEVICE_ID

#include "xparameters.h"

#include "xgpiops.h"

static  u32 	LMK_RESET_Pin;
static  u32 	LMK_SYNC_Pin;
static  u32		LMK_REF_SEL0_Pin;
static  u32		LMK_REF_SEL1_Pin;

XGpioPs Gpio;	/* The driver instance for GPIO Device. */


int gpio_init(u16 DeviceId);

void gpio_out(u32 PIN, u32 data);


//#################################################3

int gpio_init(u16 DeviceId){
	int Status;
	XGpioPs_Config *ConfigPtr;
	int Type_of_board;


	ConfigPtr = XGpioPs_LookupConfig(GPIO_DEVICE_ID);

	Type_of_board = XGetPlatform_Info();

	LMK_RESET_Pin = 0;
	LMK_SYNC_Pin = 1;
	LMK_REF_SEL0_Pin = 2;
	LMK_REF_SEL1_Pin = 3;

	Status = XGpioPs_CfgInitialize(&Gpio, ConfigPtr,
						ConfigPtr->BaseAddr);

	XGpioPs_SetDirectionPin(&Gpio, LMK_RESET_Pin, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, LMK_RESET_Pin, 1);

	XGpioPs_SetDirectionPin(&Gpio, LMK_SYNC_Pin, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, LMK_SYNC_Pin, 1);

	XGpioPs_SetDirectionPin(&Gpio, LMK_REF_SEL0_Pin, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, LMK_REF_SEL0_Pin, 1);

	XGpioPs_SetDirectionPin(&Gpio, LMK_REF_SEL1_Pin, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, LMK_REF_SEL1_Pin, 1);

	return XST_SUCCESS;
}


void gpio_out(u32 PIN, u32 data){
	XGpioPs_WritePin(&Gpio, PIN, data);
}


#endif
