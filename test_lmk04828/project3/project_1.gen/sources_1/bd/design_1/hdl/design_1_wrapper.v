//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Fri Aug 15 21:43:46 2025
//Host        : XD_CHU running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (GPIO_tri_o,
    adc1_clk_0_clk_n,
    adc1_clk_0_clk_p,
    dac0_clk_0_clk_n,
    dac0_clk_0_clk_p,
    spi_04828_clk,
    spi_04828_csn,
    spi_04828_sdio,
    sys_clk_clk_n,
    sys_clk_clk_p,
    sysref_in_0_diff_n,
    sysref_in_0_diff_p,
    vin1_01_0_v_n,
    vin1_01_0_v_p,
    vout00_0_v_n,
    vout00_0_v_p);
  output [0:0]GPIO_tri_o;
  input adc1_clk_0_clk_n;
  input adc1_clk_0_clk_p;
  input dac0_clk_0_clk_n;
  input dac0_clk_0_clk_p;
  output spi_04828_clk;
  output spi_04828_csn;
  output spi_04828_sdio;
  input [0:0]sys_clk_clk_n;
  input [0:0]sys_clk_clk_p;
  input sysref_in_0_diff_n;
  input sysref_in_0_diff_p;
  input vin1_01_0_v_n;
  input vin1_01_0_v_p;
  output vout00_0_v_n;
  output vout00_0_v_p;

  wire [0:0]GPIO_tri_o;
  wire adc1_clk_0_clk_n;
  wire adc1_clk_0_clk_p;
  wire dac0_clk_0_clk_n;
  wire dac0_clk_0_clk_p;
  wire spi_04828_clk;
  wire spi_04828_csn;
  wire spi_04828_sdio;
  wire [0:0]sys_clk_clk_n;
  wire [0:0]sys_clk_clk_p;
  wire sysref_in_0_diff_n;
  wire sysref_in_0_diff_p;
  wire vin1_01_0_v_n;
  wire vin1_01_0_v_p;
  wire vout00_0_v_n;
  wire vout00_0_v_p;

  design_1 design_1_i
       (.GPIO_tri_o(GPIO_tri_o),
        .adc1_clk_0_clk_n(adc1_clk_0_clk_n),
        .adc1_clk_0_clk_p(adc1_clk_0_clk_p),
        .dac0_clk_0_clk_n(dac0_clk_0_clk_n),
        .dac0_clk_0_clk_p(dac0_clk_0_clk_p),
        .spi_04828_clk(spi_04828_clk),
        .spi_04828_csn(spi_04828_csn),
        .spi_04828_sdio(spi_04828_sdio),
        .sys_clk_clk_n(sys_clk_clk_n),
        .sys_clk_clk_p(sys_clk_clk_p),
        .sysref_in_0_diff_n(sysref_in_0_diff_n),
        .sysref_in_0_diff_p(sysref_in_0_diff_p),
        .vin1_01_0_v_n(vin1_01_0_v_n),
        .vin1_01_0_v_p(vin1_01_0_v_p),
        .vout00_0_v_n(vout00_0_v_n),
        .vout00_0_v_p(vout00_0_v_p));
endmodule
