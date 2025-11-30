// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jul  3 17:33:11 2025
// Host        : XD_CHU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_util_ds_buf_0_1_stub.v
// Design      : design_1_util_ds_buf_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu27dr-fsve1156-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "util_ds_buf,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(IOBUF_IO_T, IOBUF_IO_I, IOBUF_IO_O, 
  IOBUF_IO_IO)
/* synthesis syn_black_box black_box_pad_pin="IOBUF_IO_T[0:0],IOBUF_IO_I[0:0],IOBUF_IO_O[0:0],IOBUF_IO_IO[0:0]" */;
  input [0:0]IOBUF_IO_T;
  input [0:0]IOBUF_IO_I;
  output [0:0]IOBUF_IO_O;
  inout [0:0]IOBUF_IO_IO;
endmodule
