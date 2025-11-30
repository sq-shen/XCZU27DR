#include "axi_spi.h"
#include "xparameters.h"
#include "xil_types.h"
#include "xil_io.h"

int spi_wr_reg(u16 reg_addr, u8 reg_data){

	u32 spi_status;

	while(spi_status){
		spi_status = Xil_In32(AXI_SPI_BASE_ADDR+AXI_SPI_TRAN_CTRL);
		spi_status = spi_status & 0x1;
	}

	Xil_Out32(AXI_SPI_BASE_ADDR+AXI_SPI_TRAN_ADDR, reg_addr);
	Xil_Out32(AXI_SPI_BASE_ADDR+AXI_SPI_TRAN_DATA, reg_data);
	Xil_Out32(AXI_SPI_BASE_ADDR+AXI_SPI_TRAN_CTRL, 0x2);
	Xil_Out32(AXI_SPI_BASE_ADDR+AXI_SPI_TRAN_CTRL, 0x6);

	while(spi_status){
		spi_status = Xil_In32(AXI_SPI_BASE_ADDR+AXI_SPI_TRAN_CTRL);
		spi_status = spi_status & 0x1;
	}

	return 1;
}


u8 spi_rd_reg(u16 reg_addr){
	u32 spi_status;

	u32 read_back_reg;

	while(spi_status){
		delay();
		spi_status = Xil_In32(AXI_SPI_BASE_ADDR+AXI_SPI_TRAN_CTRL);
		spi_status = spi_status & 0x1;
	}

	Xil_Out32(AXI_SPI_BASE_ADDR+AXI_SPI_TRAN_ADDR, reg_addr);

	Xil_Out32(AXI_SPI_BASE_ADDR+AXI_SPI_TRAN_CTRL, 0x4);


	while(spi_status){
		delay();
		spi_status = Xil_In32(AXI_SPI_BASE_ADDR+AXI_SPI_TRAN_CTRL);
		spi_status = spi_status & 0x1;
	}

	read_back_reg = Xil_In32(AXI_SPI_BASE_ADDR+AXI_SPI_TRAN_RD_DATA);

	return (u8)(read_back_reg & 0xff);
}


	void delay(){
		int ii = 0;
		int jj = 0;
		for(ii=0; ii<256;ii++)
			for(jj=0; jj<1024;jj++);
	}
