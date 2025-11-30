-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Jul 11 12:30:22 2025
-- Host        : XD_CHU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_util_ds_buf_1_0 -prefix
--               design_1_util_ds_buf_1_0_ design_1_util_ds_buf_1_0_stub.vhdl
-- Design      : design_1_util_ds_buf_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu27dr-fsve1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_util_ds_buf_1_0 is
  Port ( 
    BUFGCE_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFGCE_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFGCE_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_util_ds_buf_1_0;

architecture stub of design_1_util_ds_buf_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "BUFGCE_I[0:0],BUFGCE_CE[0:0],BUFGCE_O[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "util_ds_buf,Vivado 2022.2";
begin
end;
