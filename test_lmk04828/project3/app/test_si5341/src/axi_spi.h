#ifndef AXI_SPI_H
#define AXI_SPI_H
#define AXI_SPI_BASE_ADDR		0x80001000
#define AXI_SPI_TRAN_ADDR		0x0
#define AXI_SPI_TRAN_DATA		0x4
#define AXI_SPI_TRAN_CTRL		0x8
#define AXI_SPI_TRAN_RD_DATA	0xc

#include "xil_types.h"

int spi_wr_reg(u16 reg_addr, u8 reg_data);

u8 spi_rd_reg(u16 reg_addr);

#endif
