#ifndef LMK04828_PARAM_H
#define LMK04828_PARAM_H

#include "xil_types.h"


#define LMK04828_REG_CONFIG_NUM_REGS				387

typedef struct
{
	u16 address; /* 16-bit register address */
	u8 value; /* 8-bit register data */

} lmk04828_register_t;


lmk04828_register_t const lmk04828_register[LMK04828_REG_CONFIG_NUM_REGS] = {
		{ 0x0000, 0x80 },
		{ 0x0000, 0x00 }
};

#endif
