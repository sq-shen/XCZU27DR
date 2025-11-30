// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Jul 28 15:29:55 2025
// Host        : XD_CHU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Work/rfsoc_project/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_ila_1_0/design_1_ila_1_0_stub.v
// Design      : design_1_ila_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu27dr-fsve1156-2-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2022.2" *)
module design_1_ila_1_0(clk, probe0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0]" */;
  input clk;
  input [0:0]probe0;
endmodule
