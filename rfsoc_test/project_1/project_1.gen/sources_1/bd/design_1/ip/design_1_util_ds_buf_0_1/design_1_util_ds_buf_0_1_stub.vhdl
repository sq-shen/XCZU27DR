-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Jul  3 17:33:11 2025
-- Host        : XD_CHU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_util_ds_buf_0_1 -prefix
--               design_1_util_ds_buf_0_1_ design_1_util_ds_buf_0_1_stub.vhdl
-- Design      : design_1_util_ds_buf_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu27dr-fsve1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_util_ds_buf_0_1 is
  Port ( 
    IOBUF_IO_T : in STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_IO : inout STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_util_ds_buf_0_1;

architecture stub of design_1_util_ds_buf_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "IOBUF_IO_T[0:0],IOBUF_IO_I[0:0],IOBUF_IO_O[0:0],IOBUF_IO_IO[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "util_ds_buf,Vivado 2022.2";
begin
end;
