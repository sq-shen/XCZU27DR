/***************************** Include Files **********************************/
#include "xparameters.h"
#include "xiicps.h"
#include "xil_printf.h"
#include "Si5341-RevD-Registers.h"

#include "ps_gpio.h"

#include "axi_spi.h"

/************************** Constant Definitions ******************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define IIC_DEVICE_ID		XPAR_XIICPS_0_DEVICE_ID

/*
 * The slave address to send to and receive from.
 */
#define IIC_SLAVE_ADDR_9548		0x70

#define IIC_SLAVE_ADDR_5341		0x76

#define IIC_SCLK_RATE		80000

XIicPs Iic;		/**< Instance of the IIC Device */
//-------------------------------------------------------
int IicPsMaster_wr_5341(u16 reg_addr, u8 data);
u8 IicPsMaster_rd_5341(u16 reg_addr);

int IicPsMaster_init(u16 DeviceId);

int Iic_switch_cfg(u8 iic_to_chnl);


int lmk04828_init();
//-------------------------------------------------------
#define BUFFER_SIZE	1
u8 SendBuffer[BUFFER_SIZE];    /**< Buffer for Transmitting Data */
u8 RecvBuffer[BUFFER_SIZE];    /**< Buffer for Receiving Data */
//------------------------------------------------------

int main(void){

	int iic_init_status;

	u8 data;

	u8 si5341_read_data	=	0xff;

	Xil_Out32(0x80000000, 0x0);
	Xil_Out32(0x80000000, 0x1);

	xil_printf("IIC Master init SI5341 Starting! \r\n");

	//-----------------------------------------
	//----Init IIC
	iic_init_status = IicPsMaster_init(IIC_DEVICE_ID);

	if(iic_init_status == XST_SUCCESS)
		xil_printf("IIC init  successful! \r\n");
	else {
		xil_printf("IIC init  Failed! \r\n");
		return XST_FAILURE;
	}


	Iic_switch_cfg(0x02);

	//-------------------------------------------------
	xil_printf("start_read 5341\r\n");

	//while(1){
	si5341_read_data =  IicPsMaster_rd_5341(0x0002);
	//}

	xil_printf("Read 5341 reg 0 : %d\r\n", si5341_read_data);


	for (int ii = 0; ii<SI5341_REVD_REG_CONFIG_NUM_REGS; ii++){
//		si5341_revd_register_t tmp = si5341_revd_registers[ii];
		data = (u8)si5341_revd_registers[ii].value;
		IicPsMaster_wr_5341((u16)si5341_revd_registers[ii].address, (u8)si5341_revd_registers[ii].value);
	}


	//-----------------------------------------------------------------------

	//reset LMK04828

	gpio_init(GPIO_DEVICE_ID);
	gpio_out(LMK_RESET_Pin, 0);
	mdelay(500);
	gpio_out(LMK_REF_SEL0_Pin, 1);
	gpio_out(LMK_REF_SEL1_Pin, 0);
	gpio_out(LMK_SYNC_Pin, 0);

	mdelay(1);

	lmk04828_init();

	return XST_SUCCESS;
}

int IicPsMaster_init(u16 DeviceId){

	xil_printf("IIC init SI5341 Starting! \r\n");

	int Status;
	XIicPs_Config *Config;

	/*
	 * Initialize the IIC driver so that it's ready to use
	 * Look up the configuration in the config table,
	 * then initialize it.
	 */
	Config = XIicPs_LookupConfig(DeviceId);
	if (NULL == Config) {
		return XST_FAILURE;
	}

	Status = XIicPs_CfgInitialize(&Iic, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built correctly.
	 */
	Status = XIicPs_SelfTest(&Iic);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Set the IIC serial clock rate.
	 */
	XIicPs_SetSClk(&Iic, IIC_SCLK_RATE);

	return XST_SUCCESS;

}


	int IicPsMaster_wr_5341(u16 reg_addr, u8 data){
		int Status;

		u8 page_byte;

		page_byte = (reg_addr >> 8);

		u8 page_select_send[2] = {0x01, page_byte};

		u8 reg_byte;

		reg_byte = (reg_addr & 0xff);

		u8 write_reg_send_buff[2] = {reg_byte, data};
		/*
		 * Wait until bus is idle to start another transfer.
		 */
		while (XIicPs_BusIsBusy(&Iic)) {
			/* NOP */
		}

		Status = XIicPs_MasterSendPolled(&Iic, page_select_send,
					2, IIC_SLAVE_ADDR_5341);

		while (XIicPs_BusIsBusy(&Iic)) {
					/* NOP */
				}

		Status = XIicPs_MasterSendPolled(&Iic, write_reg_send_buff,
							2, IIC_SLAVE_ADDR_5341);
		if (Status != XST_SUCCESS) {
			xil_printf("IIC WR SI5341  FAILED! \r\n");
			return XST_FAILURE;
		}

		return XST_SUCCESS;
	}


	u8 IicPsMaster_rd_5341(u16 reg_addr){
		int Status;

		u8 page_byte;

		page_byte = (reg_addr >> 8);

		u8 page_select_send[2] = {0x01, page_byte};

		u8 reg_byte;

		reg_byte = (reg_addr & 0xff);

		u8 rev_data[1];

		u8 rev_data_byte;

		while (XIicPs_BusIsBusy(&Iic)) {
			/* NOP */
		}

		Status = XIicPs_MasterSendPolled(&Iic, page_select_send,
					2, IIC_SLAVE_ADDR_5341);

		if (Status != XST_SUCCESS) {
			xil_printf("IIC WR SI5341  FAILED! \r\n");
			return XST_FAILURE;
		}
		else {
			xil_printf("IIC WR SI5341  Successful! \r\n");
		}

		while (XIicPs_BusIsBusy(&Iic)) {
			/* NOP */
		}

		Status = XIicPs_MasterSendPolled(&Iic, &reg_byte,
							1, IIC_SLAVE_ADDR_5341);

		while (XIicPs_BusIsBusy(&Iic)) {
					/* NOP */
				}
		Status = XIicPs_MasterRecvPolled(&Iic, rev_data,
				1, IIC_SLAVE_ADDR_5341);
		if (Status != XST_SUCCESS) {
			xil_printf("IIC READ SI5341  FAILED! \r\n");
			return XST_FAILURE;
		}

		rev_data_byte = rev_data[0];

		return rev_data_byte;
	}

	//***************************************
	//******input:   IIC chnl num
	//******return :  XST_FAILURE or XST_SUCCESS
	int Iic_switch_cfg(u8 iic_to_chnl){
		int Status;
		//-----------------------------------------
		//--------configure 9548 switch to SI5341
		xil_printf("Switch IIC to SI5341 \r\n");

		SendBuffer[0] = iic_to_chnl;

		Status = XIicPs_MasterSendPolled(&Iic, SendBuffer,
				BUFFER_SIZE, IIC_SLAVE_ADDR_9548);
		if (Status != XST_SUCCESS) {
			xil_printf("IIC CFG 9584  FAILED! \r\n");
			return XST_FAILURE;
		}

		/*
		 * Wait until bus is idle to start another transfer.
		 */
		while (XIicPs_BusIsBusy(&Iic)) {
			/* NOP */
		}

		Status = XIicPs_MasterRecvPolled(&Iic, RecvBuffer,
				BUFFER_SIZE, IIC_SLAVE_ADDR_9548);
		if (Status != XST_SUCCESS) {
			xil_printf("IIC READ 9584  FAILED! \r\n");
			return XST_FAILURE;
		}

		/* Aardvark as slave can only set 64 bytes for output */
		if (RecvBuffer[0] != iic_to_chnl) {
			xil_printf("Failed CFG 9584!\r\n");
			return XST_FAILURE;
		}
		else {
			xil_printf("Successfully CFG 9584!\r\n");
		}

		return XST_SUCCESS;
	}


	/**
	 * @brief Generate miliseconds delay.
	 * @param msecs - Delay in miliseconds.
	 * @return None.
	 */
	void mdelay(uint32_t msecs)
	{
		usleep(msecs * 1000);
	}


	int lmk04828_init(){
		u8 id_vender_high = 0;
		//u8 id_vender_low;


		spi_wr_reg(0x000, 0x80);
		spi_wr_reg(0x000, 0x00);
		mdelay(1);
		spi_wr_reg(0x002, 0x00);
		id_vender_high = spi_rd_reg(0x00c);

		xil_printf("VENDER OF lmk04828 : %h\r\n", id_vender_high);

		return XST_SUCCESS;
	}
