// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jul  3 17:33:08 2025
// Host        : XD_CHU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_axi_spi_master_0_0 -prefix
//               design_1_axi_spi_master_0_0_ design_1_axi_spi_master_0_0_sim_netlist.v
// Design      : design_1_axi_spi_master_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu27dr-fsve1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_axi_spi_master_0_0_axi_spi_master
   (Q,
    \arready_reg[2] ,
    s00_axi_bvalid,
    spi_sdio_t,
    s00_axi_rdata,
    \wready_reg[0] ,
    s00_axi_rvalid,
    spi_csn,
    spi_csn1,
    spi_clk,
    spi_mosi,
    s00_axi_wvalid,
    s00_axi_aresetn,
    s00_axi_arvalid,
    s00_axi_araddr,
    s00_axi_aclk,
    s00_axi_awvalid,
    s00_axi_wdata,
    spi_miso,
    s00_axi_awaddr,
    s00_axi_bready,
    s00_axi_rready);
  output [0:0]Q;
  output [0:0]\arready_reg[2] ;
  output s00_axi_bvalid;
  output spi_sdio_t;
  output [14:0]s00_axi_rdata;
  output \wready_reg[0] ;
  output s00_axi_rvalid;
  output spi_csn;
  output spi_csn1;
  output spi_clk;
  output spi_mosi;
  input s00_axi_wvalid;
  input s00_axi_aresetn;
  input s00_axi_arvalid;
  input [1:0]s00_axi_araddr;
  input s00_axi_aclk;
  input s00_axi_awvalid;
  input [14:0]s00_axi_wdata;
  input spi_miso;
  input [1:0]s00_axi_awaddr;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [0:0]Q;
  wire [0:0]\arready_reg[2] ;
  wire [1:0]axi_spi_rd_addr;
  wire axi_spi_rd_en;
  wire axi_spi_rd_vld;
  wire [1:0]axi_spi_wr_addr;
  wire axi_spi_wr_vld;
  wire axil_wvalid1;
  wire cs_sel;
  wire p_0_in;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [14:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [14:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire spi_clk;
  wire spi_csn;
  wire spi_csn1;
  wire spi_miso;
  wire spi_mosi;
  wire spi_sdio_t;
  wire u_axi_spi_master_ctrl_n_1;
  wire u_axi_spi_master_ctrl_n_10;
  wire u_axi_spi_master_ctrl_n_11;
  wire u_axi_spi_master_ctrl_n_12;
  wire u_axi_spi_master_ctrl_n_13;
  wire u_axi_spi_master_ctrl_n_14;
  wire u_axi_spi_master_ctrl_n_15;
  wire u_axi_spi_master_ctrl_n_16;
  wire u_axi_spi_master_ctrl_n_17;
  wire u_axi_spi_master_ctrl_n_18;
  wire u_axi_spi_master_ctrl_n_19;
  wire u_axi_spi_master_ctrl_n_2;
  wire u_axi_spi_master_ctrl_n_20;
  wire u_axi_spi_master_ctrl_n_21;
  wire u_axi_spi_master_ctrl_n_7;
  wire u_axi_spi_master_ctrl_n_8;
  wire u_axi_spi_master_ctrl_n_9;
  wire u_s_axi_lite_reg_n_11;
  wire u_s_axi_lite_reg_n_12;
  wire u_s_axi_lite_reg_n_13;
  wire u_s_axi_lite_reg_n_14;
  wire u_s_axi_lite_reg_n_15;
  wire u_s_axi_lite_reg_n_16;
  wire u_s_axi_lite_reg_n_17;
  wire u_s_axi_lite_reg_n_18;
  wire u_s_axi_lite_reg_n_19;
  wire u_s_axi_lite_reg_n_20;
  wire u_s_axi_lite_reg_n_21;
  wire u_s_axi_lite_reg_n_23;
  wire u_s_axi_lite_reg_n_24;
  wire u_s_axi_lite_reg_n_25;
  wire u_s_axi_lite_reg_n_26;
  wire u_s_axi_lite_reg_n_27;
  wire u_s_axi_lite_reg_n_8;
  wire \wready_reg[0] ;

  design_1_axi_spi_master_0_0_axi_spi_master_ctrl u_axi_spi_master_ctrl
       (.D({u_axi_spi_master_ctrl_n_7,u_axi_spi_master_ctrl_n_8,u_axi_spi_master_ctrl_n_9,u_axi_spi_master_ctrl_n_10,u_axi_spi_master_ctrl_n_11,u_axi_spi_master_ctrl_n_12,u_axi_spi_master_ctrl_n_13,u_axi_spi_master_ctrl_n_14,u_axi_spi_master_ctrl_n_15,u_axi_spi_master_ctrl_n_16,u_axi_spi_master_ctrl_n_17,u_axi_spi_master_ctrl_n_18,u_axi_spi_master_ctrl_n_19,u_axi_spi_master_ctrl_n_20,u_axi_spi_master_ctrl_n_21}),
        .E(axi_spi_rd_vld),
        .\FSM_onehot_cs_reg[2] (spi_sdio_t),
        .Q(axi_spi_wr_addr),
        .SR(axil_wvalid1),
        .\addr_reg[14]_0 ({u_s_axi_lite_reg_n_11,u_s_axi_lite_reg_n_12,u_s_axi_lite_reg_n_13,u_s_axi_lite_reg_n_14,u_s_axi_lite_reg_n_15,u_s_axi_lite_reg_n_16,u_s_axi_lite_reg_n_17,u_s_axi_lite_reg_n_18,u_s_axi_lite_reg_n_19,u_s_axi_lite_reg_n_20,u_s_axi_lite_reg_n_21,p_0_in,u_s_axi_lite_reg_n_23,u_s_axi_lite_reg_n_24,u_s_axi_lite_reg_n_25}),
        .\axi_spi_rd_dat_reg[0]_0 (axi_spi_rd_addr),
        .axi_spi_rd_en(axi_spi_rd_en),
        .axi_spi_wr_vld(axi_spi_wr_vld),
        .cs_sel(cs_sel),
        .cs_sel_reg_0(u_s_axi_lite_reg_n_27),
        .en_reg_0(u_axi_spi_master_ctrl_n_1),
        .en_reg_1(u_s_axi_lite_reg_n_8),
        .rw_en_reg_0(u_axi_spi_master_ctrl_n_2),
        .rw_en_reg_1(u_s_axi_lite_reg_n_26),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .spi_clk(spi_clk),
        .spi_csn(spi_csn),
        .spi_csn1(spi_csn1),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi));
  design_1_axi_spi_master_0_0_s_axi_lite_reg u_s_axi_lite_reg
       (.D({u_axi_spi_master_ctrl_n_7,u_axi_spi_master_ctrl_n_8,u_axi_spi_master_ctrl_n_9,u_axi_spi_master_ctrl_n_10,u_axi_spi_master_ctrl_n_11,u_axi_spi_master_ctrl_n_12,u_axi_spi_master_ctrl_n_13,u_axi_spi_master_ctrl_n_14,u_axi_spi_master_ctrl_n_15,u_axi_spi_master_ctrl_n_16,u_axi_spi_master_ctrl_n_17,u_axi_spi_master_ctrl_n_18,u_axi_spi_master_ctrl_n_19,u_axi_spi_master_ctrl_n_20,u_axi_spi_master_ctrl_n_21}),
        .E(axi_spi_rd_vld),
        .Q(Q),
        .SR(axil_wvalid1),
        .\arready_reg[2]_0 (\arready_reg[2] ),
        .axi_spi_rd_en(axi_spi_rd_en),
        .axi_spi_wr_vld(axi_spi_wr_vld),
        .cs_sel(cs_sel),
        .en_reg(u_s_axi_lite_reg_n_8),
        .en_reg_0(u_axi_spi_master_ctrl_n_1),
        .\o_reg_rd_addr_reg[1]_0 (axi_spi_rd_addr),
        .\o_reg_wr_addr_reg[1]_0 (axi_spi_wr_addr),
        .\o_reg_wr_dat_reg[14]_0 ({u_s_axi_lite_reg_n_11,u_s_axi_lite_reg_n_12,u_s_axi_lite_reg_n_13,u_s_axi_lite_reg_n_14,u_s_axi_lite_reg_n_15,u_s_axi_lite_reg_n_16,u_s_axi_lite_reg_n_17,u_s_axi_lite_reg_n_18,u_s_axi_lite_reg_n_19,u_s_axi_lite_reg_n_20,u_s_axi_lite_reg_n_21,p_0_in,u_s_axi_lite_reg_n_23,u_s_axi_lite_reg_n_24,u_s_axi_lite_reg_n_25}),
        .\o_reg_wr_dat_reg[1]_0 (u_s_axi_lite_reg_n_26),
        .\o_reg_wr_dat_reg[3]_0 (u_s_axi_lite_reg_n_27),
        .rw_en_reg(u_axi_spi_master_ctrl_n_2),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\wready_reg[0]_0 (\wready_reg[0] ));
endmodule

module design_1_axi_spi_master_0_0_axi_spi_master_ctrl
   (E,
    en_reg_0,
    rw_en_reg_0,
    cs_sel,
    spi_clk,
    spi_mosi,
    \FSM_onehot_cs_reg[2] ,
    D,
    spi_csn,
    spi_csn1,
    axi_spi_rd_en,
    s00_axi_aclk,
    s00_axi_aresetn,
    Q,
    axi_spi_wr_vld,
    SR,
    rw_en_reg_1,
    cs_sel_reg_0,
    en_reg_1,
    spi_miso,
    \addr_reg[14]_0 ,
    \axi_spi_rd_dat_reg[0]_0 );
  output [0:0]E;
  output en_reg_0;
  output rw_en_reg_0;
  output cs_sel;
  output spi_clk;
  output spi_mosi;
  output [0:0]\FSM_onehot_cs_reg[2] ;
  output [14:0]D;
  output spi_csn;
  output spi_csn1;
  input axi_spi_rd_en;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [1:0]Q;
  input axi_spi_wr_vld;
  input [0:0]SR;
  input rw_en_reg_1;
  input cs_sel_reg_0;
  input en_reg_1;
  input spi_miso;
  input [14:0]\addr_reg[14]_0 ;
  input [1:0]\axi_spi_rd_dat_reg[0]_0 ;

  wire [14:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_cs_reg[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [14:0]addr;
  wire addr_1;
  wire [14:0]\addr_reg[14]_0 ;
  wire [7:0]axi_spi_rd_dat;
  wire \axi_spi_rd_dat[14]_i_1_n_0 ;
  wire [1:0]\axi_spi_rd_dat_reg[0]_0 ;
  wire axi_spi_rd_en;
  wire axi_spi_wr_vld;
  wire cs_sel;
  wire cs_sel_reg_0;
  wire en_reg_0;
  wire en_reg_1;
  wire rw_en_reg_0;
  wire rw_en_reg_1;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire spi_clk;
  wire spi_csn;
  wire spi_csn1;
  wire spi_miso;
  wire spi_mosi;
  wire [7:0]wr_data;
  wire wr_data_0;

  LUT4 #(
    .INIT(16'h0800)) 
    \__5/i_ 
       (.I0(s00_axi_aresetn),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(axi_spi_wr_vld),
        .O(wr_data_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \__7/i_ 
       (.I0(s00_axi_aresetn),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(axi_spi_wr_vld),
        .O(addr_1));
  FDRE \addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(addr_1),
        .D(\addr_reg[14]_0 [0]),
        .Q(addr[0]),
        .R(1'b0));
  FDRE \addr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(addr_1),
        .D(\addr_reg[14]_0 [10]),
        .Q(addr[10]),
        .R(1'b0));
  FDRE \addr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(addr_1),
        .D(\addr_reg[14]_0 [11]),
        .Q(addr[11]),
        .R(1'b0));
  FDRE \addr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(addr_1),
        .D(\addr_reg[14]_0 [12]),
        .Q(addr[12]),
        .R(1'b0));
  FDRE \addr_reg[13] 
       (.C(s00_axi_aclk),
        .CE(addr_1),
        .D(\addr_reg[14]_0 [13]),
        .Q(addr[13]),
        .R(1'b0));
  FDRE \addr_reg[14] 
       (.C(s00_axi_aclk),
        .CE(addr_1),
        .D(\addr_reg[14]_0 [14]),
        .Q(addr[14]),
        .R(1'b0));
  FDRE \addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(addr_1),
        .D(\addr_reg[14]_0 [1]),
        .Q(addr[1]),
        .R(1'b0));
  FDRE \addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(addr_1),
        .D(\addr_reg[14]_0 [2]),
        .Q(addr[2]),
        .R(1'b0));
  FDRE \addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(addr_1),
        .D(\addr_reg[14]_0 [3]),
        .Q(addr[3]),
        .R(1'b0));
  FDRE \addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(addr_1),
        .D(\addr_reg[14]_0 [4]),
        .Q(addr[4]),
        .R(1'b0));
  FDRE \addr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(addr_1),
        .D(\addr_reg[14]_0 [5]),
        .Q(addr[5]),
        .R(1'b0));
  FDRE \addr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(addr_1),
        .D(\addr_reg[14]_0 [6]),
        .Q(addr[6]),
        .R(1'b0));
  FDRE \addr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(addr_1),
        .D(\addr_reg[14]_0 [7]),
        .Q(addr[7]),
        .R(1'b0));
  FDRE \addr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(addr_1),
        .D(\addr_reg[14]_0 [8]),
        .Q(addr[8]),
        .R(1'b0));
  FDRE \addr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(addr_1),
        .D(\addr_reg[14]_0 [9]),
        .Q(addr[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE0)) 
    \axi_spi_rd_dat[14]_i_1 
       (.I0(\axi_spi_rd_dat_reg[0]_0 [0]),
        .I1(\axi_spi_rd_dat_reg[0]_0 [1]),
        .I2(axi_spi_rd_en),
        .O(\axi_spi_rd_dat[14]_i_1_n_0 ));
  FDRE \axi_spi_rd_dat_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_spi_rd_en),
        .D(axi_spi_rd_dat[0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE \axi_spi_rd_dat_reg[10] 
       (.C(s00_axi_aclk),
        .CE(axi_spi_rd_en),
        .D(addr[10]),
        .Q(D[10]),
        .R(\axi_spi_rd_dat[14]_i_1_n_0 ));
  FDRE \axi_spi_rd_dat_reg[11] 
       (.C(s00_axi_aclk),
        .CE(axi_spi_rd_en),
        .D(addr[11]),
        .Q(D[11]),
        .R(\axi_spi_rd_dat[14]_i_1_n_0 ));
  FDRE \axi_spi_rd_dat_reg[12] 
       (.C(s00_axi_aclk),
        .CE(axi_spi_rd_en),
        .D(addr[12]),
        .Q(D[12]),
        .R(\axi_spi_rd_dat[14]_i_1_n_0 ));
  FDRE \axi_spi_rd_dat_reg[13] 
       (.C(s00_axi_aclk),
        .CE(axi_spi_rd_en),
        .D(addr[13]),
        .Q(D[13]),
        .R(\axi_spi_rd_dat[14]_i_1_n_0 ));
  FDRE \axi_spi_rd_dat_reg[14] 
       (.C(s00_axi_aclk),
        .CE(axi_spi_rd_en),
        .D(addr[14]),
        .Q(D[14]),
        .R(\axi_spi_rd_dat[14]_i_1_n_0 ));
  FDRE \axi_spi_rd_dat_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_spi_rd_en),
        .D(axi_spi_rd_dat[1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE \axi_spi_rd_dat_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_spi_rd_en),
        .D(axi_spi_rd_dat[2]),
        .Q(D[2]),
        .R(1'b0));
  FDRE \axi_spi_rd_dat_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_spi_rd_en),
        .D(axi_spi_rd_dat[3]),
        .Q(D[3]),
        .R(1'b0));
  FDRE \axi_spi_rd_dat_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_spi_rd_en),
        .D(axi_spi_rd_dat[4]),
        .Q(D[4]),
        .R(1'b0));
  FDRE \axi_spi_rd_dat_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_spi_rd_en),
        .D(axi_spi_rd_dat[5]),
        .Q(D[5]),
        .R(1'b0));
  FDRE \axi_spi_rd_dat_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_spi_rd_en),
        .D(axi_spi_rd_dat[6]),
        .Q(D[6]),
        .R(1'b0));
  FDRE \axi_spi_rd_dat_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_spi_rd_en),
        .D(axi_spi_rd_dat[7]),
        .Q(D[7]),
        .R(1'b0));
  FDRE \axi_spi_rd_dat_reg[8] 
       (.C(s00_axi_aclk),
        .CE(axi_spi_rd_en),
        .D(addr[8]),
        .Q(D[8]),
        .R(\axi_spi_rd_dat[14]_i_1_n_0 ));
  FDRE \axi_spi_rd_dat_reg[9] 
       (.C(s00_axi_aclk),
        .CE(axi_spi_rd_en),
        .D(addr[9]),
        .Q(D[9]),
        .R(\axi_spi_rd_dat[14]_i_1_n_0 ));
  FDRE axi_spi_rd_vld_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_spi_rd_en),
        .Q(E),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cs_sel_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(cs_sel_reg_0),
        .Q(cs_sel),
        .R(1'b0));
  FDRE en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(en_reg_1),
        .Q(en_reg_0),
        .R(1'b0));
  FDRE rw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rw_en_reg_1),
        .Q(rw_en_reg_0),
        .R(SR));
  design_1_axi_spi_master_0_0_spi_master_ctrl u_spi_master_ctrl
       (.D(axi_spi_rd_dat),
        .Q(\FSM_onehot_cs_reg[2] ),
        .SR(SR),
        .\axi_spi_rd_dat_reg[0] (\axi_spi_rd_dat_reg[0]_0 ),
        .\axi_spi_rd_dat_reg[2] (rw_en_reg_0),
        .\axi_spi_rd_dat_reg[3] (cs_sel),
        .en_d_reg_0(en_reg_0),
        .\rw_addr_reg[14]_0 (addr),
        .s00_axi_aclk(s00_axi_aclk),
        .spi_clk(spi_clk),
        .spi_csn(spi_csn),
        .spi_csn1(spi_csn1),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi),
        .\wr_data_d_reg[7]_0 (wr_data));
  FDRE \wr_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(wr_data_0),
        .D(\addr_reg[14]_0 [0]),
        .Q(wr_data[0]),
        .R(1'b0));
  FDRE \wr_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(wr_data_0),
        .D(\addr_reg[14]_0 [1]),
        .Q(wr_data[1]),
        .R(1'b0));
  FDRE \wr_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(wr_data_0),
        .D(\addr_reg[14]_0 [2]),
        .Q(wr_data[2]),
        .R(1'b0));
  FDRE \wr_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(wr_data_0),
        .D(\addr_reg[14]_0 [3]),
        .Q(wr_data[3]),
        .R(1'b0));
  FDRE \wr_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(wr_data_0),
        .D(\addr_reg[14]_0 [4]),
        .Q(wr_data[4]),
        .R(1'b0));
  FDRE \wr_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(wr_data_0),
        .D(\addr_reg[14]_0 [5]),
        .Q(wr_data[5]),
        .R(1'b0));
  FDRE \wr_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(wr_data_0),
        .D(\addr_reg[14]_0 [6]),
        .Q(wr_data[6]),
        .R(1'b0));
  FDRE \wr_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(wr_data_0),
        .D(\addr_reg[14]_0 [7]),
        .Q(wr_data[7]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axi_spi_master_0_0,axi_spi_master,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi_spi_master,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_axi_spi_master_0_0
   (spi_csn,
    spi_csn1,
    spi_clk,
    spi_mosi,
    spi_miso,
    spi_sdio_t,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output spi_csn;
  output spi_csn1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 spi_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME spi_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_axi_spi_master_0_0_spi_clk, INSERT_VIP 0" *) output spi_clk;
  output spi_mosi;
  input spi_miso;
  output spi_sdio_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [14:0]\^s00_axi_rdata ;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire s00_axi_wvalid;
  wire spi_clk;
  wire spi_csn;
  wire spi_csn1;
  wire spi_miso;
  wire spi_mosi;
  wire spi_sdio_t;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rdata[31] = \<const0> ;
  assign s00_axi_rdata[30] = \<const0> ;
  assign s00_axi_rdata[29] = \<const0> ;
  assign s00_axi_rdata[28] = \<const0> ;
  assign s00_axi_rdata[27] = \<const0> ;
  assign s00_axi_rdata[26] = \<const0> ;
  assign s00_axi_rdata[25] = \<const0> ;
  assign s00_axi_rdata[24] = \<const0> ;
  assign s00_axi_rdata[23] = \<const0> ;
  assign s00_axi_rdata[22] = \<const0> ;
  assign s00_axi_rdata[21] = \<const0> ;
  assign s00_axi_rdata[20] = \<const0> ;
  assign s00_axi_rdata[19] = \<const0> ;
  assign s00_axi_rdata[18] = \<const0> ;
  assign s00_axi_rdata[17] = \<const0> ;
  assign s00_axi_rdata[16] = \<const0> ;
  assign s00_axi_rdata[15] = \<const0> ;
  assign s00_axi_rdata[14:0] = \^s00_axi_rdata [14:0];
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axi_spi_master_0_0_axi_spi_master inst
       (.Q(s00_axi_awready),
        .\arready_reg[2] (s00_axi_arready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(\^s00_axi_rdata ),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata[14:0]),
        .s00_axi_wvalid(s00_axi_wvalid),
        .spi_clk(spi_clk),
        .spi_csn(spi_csn),
        .spi_csn1(spi_csn1),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi),
        .spi_sdio_t(spi_sdio_t),
        .\wready_reg[0] (s00_axi_wready));
endmodule

module design_1_axi_spi_master_0_0_s_axi_lite_reg
   (axi_spi_wr_vld,
    SR,
    s00_axi_bvalid,
    \wready_reg[0]_0 ,
    axi_spi_rd_en,
    s00_axi_rvalid,
    Q,
    \arready_reg[2]_0 ,
    en_reg,
    \o_reg_wr_addr_reg[1]_0 ,
    \o_reg_wr_dat_reg[14]_0 ,
    \o_reg_wr_dat_reg[1]_0 ,
    \o_reg_wr_dat_reg[3]_0 ,
    \o_reg_rd_addr_reg[1]_0 ,
    s00_axi_rdata,
    E,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_aresetn,
    en_reg_0,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    rw_en_reg,
    cs_sel,
    s00_axi_araddr,
    s00_axi_wdata,
    D,
    s00_axi_awaddr);
  output axi_spi_wr_vld;
  output [0:0]SR;
  output s00_axi_bvalid;
  output \wready_reg[0]_0 ;
  output axi_spi_rd_en;
  output s00_axi_rvalid;
  output [0:0]Q;
  output [0:0]\arready_reg[2]_0 ;
  output en_reg;
  output [1:0]\o_reg_wr_addr_reg[1]_0 ;
  output [14:0]\o_reg_wr_dat_reg[14]_0 ;
  output \o_reg_wr_dat_reg[1]_0 ;
  output \o_reg_wr_dat_reg[3]_0 ;
  output [1:0]\o_reg_rd_addr_reg[1]_0 ;
  output [14:0]s00_axi_rdata;
  input [0:0]E;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_aresetn;
  input en_reg_0;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input rw_en_reg;
  input cs_sel;
  input [1:0]s00_axi_araddr;
  input [14:0]s00_axi_wdata;
  input [14:0]D;
  input [1:0]s00_axi_awaddr;

  wire [14:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [1:0]arready;
  wire \arready[0]_i_1_n_0 ;
  wire \arready[2]_i_1_n_0 ;
  wire [0:0]\arready_reg[2]_0 ;
  wire [1:0]awready;
  wire \awready[0]_i_1_n_0 ;
  wire \awready[2]_i_1_n_0 ;
  wire axi_spi_rd_en;
  wire axi_spi_wr_vld;
  wire axil_awvalid;
  wire axil_awvalid0;
  wire axil_awvalid_i_1_n_0;
  wire axil_rvalid_i_1_n_0;
  wire axil_wvalid;
  wire axil_wvalid_i_1_n_0;
  wire axil_wvalid_i_2_n_0;
  wire bvalid0;
  wire bvalid_i_1_n_0;
  wire cs_sel;
  wire en_reg;
  wire en_reg_0;
  wire \o_reg_rd_addr[0]_i_1_n_0 ;
  wire \o_reg_rd_addr[1]_i_1_n_0 ;
  wire [1:0]\o_reg_rd_addr_reg[1]_0 ;
  wire o_reg_rd_vld_i_1_n_0;
  wire [1:0]\o_reg_wr_addr_reg[1]_0 ;
  wire [14:0]\o_reg_wr_dat_reg[14]_0 ;
  wire \o_reg_wr_dat_reg[1]_0 ;
  wire \o_reg_wr_dat_reg[3]_0 ;
  wire reg_rd_valid;
  wire rw_en_reg;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [14:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [14:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire wready1;
  wire \wready[0]_i_1_n_0 ;
  wire \wready_reg[0]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_cs[2]_i_1 
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \arready[0]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(arready[0]),
        .O(\arready[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \arready[2]_i_1 
       (.I0(\arready_reg[2]_0 ),
        .I1(s00_axi_aresetn),
        .O(\arready[2]_i_1_n_0 ));
  FDRE \arready_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\arready[0]_i_1_n_0 ),
        .Q(arready[0]),
        .R(\arready[2]_i_1_n_0 ));
  FDRE \arready_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(arready[0]),
        .Q(arready[1]),
        .R(\arready[2]_i_1_n_0 ));
  FDRE \arready_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(arready[1]),
        .Q(\arready_reg[2]_0 ),
        .R(\arready[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \awready[0]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(awready[0]),
        .O(\awready[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \awready[2]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(Q),
        .I2(s00_axi_aresetn),
        .O(\awready[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awready_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\awready[0]_i_1_n_0 ),
        .Q(awready[0]),
        .R(\awready[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awready_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(awready[0]),
        .Q(awready[1]),
        .R(\awready[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \awready_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(awready[1]),
        .Q(Q),
        .R(\awready[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    axil_awvalid_i_1
       (.I0(Q),
        .I1(s00_axi_awvalid),
        .I2(axil_awvalid),
        .O(axil_awvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axil_awvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axil_awvalid_i_1_n_0),
        .Q(axil_awvalid),
        .R(axil_wvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axil_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(s00_axi_rdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axil_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[10]),
        .Q(s00_axi_rdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axil_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[11]),
        .Q(s00_axi_rdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axil_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[12]),
        .Q(s00_axi_rdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axil_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[13]),
        .Q(s00_axi_rdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axil_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[14]),
        .Q(s00_axi_rdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axil_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(s00_axi_rdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axil_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[2]),
        .Q(s00_axi_rdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axil_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[3]),
        .Q(s00_axi_rdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axil_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[4]),
        .Q(s00_axi_rdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axil_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[5]),
        .Q(s00_axi_rdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axil_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[6]),
        .Q(s00_axi_rdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axil_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[7]),
        .Q(s00_axi_rdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axil_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[8]),
        .Q(s00_axi_rdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \axil_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[9]),
        .Q(s00_axi_rdata[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0C88)) 
    axil_rvalid_i_1
       (.I0(reg_rd_valid),
        .I1(s00_axi_aresetn),
        .I2(s00_axi_rready),
        .I3(s00_axi_rvalid),
        .O(axil_rvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axil_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axil_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    axil_wvalid_i_1
       (.I0(s00_axi_bvalid),
        .I1(s00_axi_aresetn),
        .O(axil_wvalid_i_1_n_0));
  LUT3 #(
    .INIT(8'hF8)) 
    axil_wvalid_i_2
       (.I0(\wready_reg[0]_0 ),
        .I1(s00_axi_wvalid),
        .I2(axil_wvalid),
        .O(axil_wvalid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axil_wvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axil_wvalid_i_2_n_0),
        .Q(axil_wvalid),
        .R(axil_wvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    bvalid_i_1
       (.I0(axil_wvalid),
        .I1(axil_awvalid),
        .I2(s00_axi_bvalid),
        .I3(s00_axi_bready),
        .O(bvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    cs_sel_i_1
       (.I0(\o_reg_wr_dat_reg[14]_0 [3]),
        .I1(s00_axi_aresetn),
        .I2(\o_reg_wr_addr_reg[1]_0 [1]),
        .I3(\o_reg_wr_addr_reg[1]_0 [0]),
        .I4(axi_spi_wr_vld),
        .I5(cs_sel),
        .O(\o_reg_wr_dat_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAEA20000AAAAAAAA)) 
    en_i_1
       (.I0(en_reg_0),
        .I1(\o_reg_wr_addr_reg[1]_0 [1]),
        .I2(\o_reg_wr_addr_reg[1]_0 [0]),
        .I3(\o_reg_wr_dat_reg[14]_0 [2]),
        .I4(axi_spi_wr_vld),
        .I5(s00_axi_aresetn),
        .O(en_reg));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_reg_rd_addr[0]_i_1 
       (.I0(\arready_reg[2]_0 ),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_araddr[0]),
        .O(\o_reg_rd_addr[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \o_reg_rd_addr[1]_i_1 
       (.I0(\arready_reg[2]_0 ),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_araddr[1]),
        .O(\o_reg_rd_addr[1]_i_1_n_0 ));
  FDRE \o_reg_rd_addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\o_reg_rd_addr[0]_i_1_n_0 ),
        .Q(\o_reg_rd_addr_reg[1]_0 [0]),
        .R(1'b0));
  FDRE \o_reg_rd_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\o_reg_rd_addr[1]_i_1_n_0 ),
        .Q(\o_reg_rd_addr_reg[1]_0 [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    o_reg_rd_vld_i_1
       (.I0(s00_axi_arvalid),
        .I1(\arready_reg[2]_0 ),
        .I2(s00_axi_aresetn),
        .I3(axi_spi_rd_en),
        .O(o_reg_rd_vld_i_1_n_0));
  FDRE o_reg_rd_vld_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(o_reg_rd_vld_i_1_n_0),
        .Q(axi_spi_rd_en),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \o_reg_wr_addr[1]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(Q),
        .O(axil_awvalid0));
  FDRE \o_reg_wr_addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axil_awvalid0),
        .D(s00_axi_awaddr[0]),
        .Q(\o_reg_wr_addr_reg[1]_0 [0]),
        .R(SR));
  FDRE \o_reg_wr_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axil_awvalid0),
        .D(s00_axi_awaddr[1]),
        .Q(\o_reg_wr_addr_reg[1]_0 [1]),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \o_reg_wr_dat[14]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\wready_reg[0]_0 ),
        .O(wready1));
  FDRE \o_reg_wr_dat_reg[0] 
       (.C(s00_axi_aclk),
        .CE(wready1),
        .D(s00_axi_wdata[0]),
        .Q(\o_reg_wr_dat_reg[14]_0 [0]),
        .R(SR));
  FDRE \o_reg_wr_dat_reg[10] 
       (.C(s00_axi_aclk),
        .CE(wready1),
        .D(s00_axi_wdata[10]),
        .Q(\o_reg_wr_dat_reg[14]_0 [10]),
        .R(SR));
  FDRE \o_reg_wr_dat_reg[11] 
       (.C(s00_axi_aclk),
        .CE(wready1),
        .D(s00_axi_wdata[11]),
        .Q(\o_reg_wr_dat_reg[14]_0 [11]),
        .R(SR));
  FDRE \o_reg_wr_dat_reg[12] 
       (.C(s00_axi_aclk),
        .CE(wready1),
        .D(s00_axi_wdata[12]),
        .Q(\o_reg_wr_dat_reg[14]_0 [12]),
        .R(SR));
  FDRE \o_reg_wr_dat_reg[13] 
       (.C(s00_axi_aclk),
        .CE(wready1),
        .D(s00_axi_wdata[13]),
        .Q(\o_reg_wr_dat_reg[14]_0 [13]),
        .R(SR));
  FDRE \o_reg_wr_dat_reg[14] 
       (.C(s00_axi_aclk),
        .CE(wready1),
        .D(s00_axi_wdata[14]),
        .Q(\o_reg_wr_dat_reg[14]_0 [14]),
        .R(SR));
  FDRE \o_reg_wr_dat_reg[1] 
       (.C(s00_axi_aclk),
        .CE(wready1),
        .D(s00_axi_wdata[1]),
        .Q(\o_reg_wr_dat_reg[14]_0 [1]),
        .R(SR));
  FDRE \o_reg_wr_dat_reg[2] 
       (.C(s00_axi_aclk),
        .CE(wready1),
        .D(s00_axi_wdata[2]),
        .Q(\o_reg_wr_dat_reg[14]_0 [2]),
        .R(SR));
  FDRE \o_reg_wr_dat_reg[3] 
       (.C(s00_axi_aclk),
        .CE(wready1),
        .D(s00_axi_wdata[3]),
        .Q(\o_reg_wr_dat_reg[14]_0 [3]),
        .R(SR));
  FDRE \o_reg_wr_dat_reg[4] 
       (.C(s00_axi_aclk),
        .CE(wready1),
        .D(s00_axi_wdata[4]),
        .Q(\o_reg_wr_dat_reg[14]_0 [4]),
        .R(SR));
  FDRE \o_reg_wr_dat_reg[5] 
       (.C(s00_axi_aclk),
        .CE(wready1),
        .D(s00_axi_wdata[5]),
        .Q(\o_reg_wr_dat_reg[14]_0 [5]),
        .R(SR));
  FDRE \o_reg_wr_dat_reg[6] 
       (.C(s00_axi_aclk),
        .CE(wready1),
        .D(s00_axi_wdata[6]),
        .Q(\o_reg_wr_dat_reg[14]_0 [6]),
        .R(SR));
  FDRE \o_reg_wr_dat_reg[7] 
       (.C(s00_axi_aclk),
        .CE(wready1),
        .D(s00_axi_wdata[7]),
        .Q(\o_reg_wr_dat_reg[14]_0 [7]),
        .R(SR));
  FDRE \o_reg_wr_dat_reg[8] 
       (.C(s00_axi_aclk),
        .CE(wready1),
        .D(s00_axi_wdata[8]),
        .Q(\o_reg_wr_dat_reg[14]_0 [8]),
        .R(SR));
  FDRE \o_reg_wr_dat_reg[9] 
       (.C(s00_axi_aclk),
        .CE(wready1),
        .D(s00_axi_wdata[9]),
        .Q(\o_reg_wr_dat_reg[14]_0 [9]),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    o_reg_wr_vld_i_1
       (.I0(axil_wvalid),
        .I1(axil_awvalid),
        .O(bvalid0));
  FDRE o_reg_wr_vld_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bvalid0),
        .Q(axi_spi_wr_vld),
        .R(SR));
  FDRE reg_rd_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(E),
        .Q(reg_rd_valid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    rw_en_i_1
       (.I0(\o_reg_wr_dat_reg[14]_0 [1]),
        .I1(axi_spi_wr_vld),
        .I2(\o_reg_wr_addr_reg[1]_0 [0]),
        .I3(\o_reg_wr_addr_reg[1]_0 [1]),
        .I4(rw_en_reg),
        .O(\o_reg_wr_dat_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h0C80)) 
    \wready[0]_i_1 
       (.I0(axil_awvalid),
        .I1(s00_axi_aresetn),
        .I2(s00_axi_wvalid),
        .I3(\wready_reg[0]_0 ),
        .O(\wready[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wready_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\wready[0]_i_1_n_0 ),
        .Q(\wready_reg[0]_0 ),
        .R(1'b0));
endmodule

module design_1_axi_spi_master_0_0_spi_master_ctrl
   (spi_clk,
    spi_mosi,
    Q,
    spi_csn,
    spi_csn1,
    D,
    s00_axi_aclk,
    en_d_reg_0,
    SR,
    \axi_spi_rd_dat_reg[2] ,
    spi_miso,
    \wr_data_d_reg[7]_0 ,
    \axi_spi_rd_dat_reg[3] ,
    \axi_spi_rd_dat_reg[0] ,
    \rw_addr_reg[14]_0 );
  output spi_clk;
  output spi_mosi;
  output [0:0]Q;
  output spi_csn;
  output spi_csn1;
  output [7:0]D;
  input s00_axi_aclk;
  input en_d_reg_0;
  input [0:0]SR;
  input \axi_spi_rd_dat_reg[2] ;
  input spi_miso;
  input [7:0]\wr_data_d_reg[7]_0 ;
  input \axi_spi_rd_dat_reg[3] ;
  input [1:0]\axi_spi_rd_dat_reg[0] ;
  input [14:0]\rw_addr_reg[14]_0 ;

  wire [7:0]D;
  wire \FSM_onehot_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_cs[2]_i_2_n_0 ;
  wire \FSM_onehot_cs[2]_i_3_n_0 ;
  wire \FSM_onehot_cs[2]_i_4_n_0 ;
  wire \FSM_onehot_cs[3]_i_1_n_0 ;
  wire \FSM_onehot_cs[4]_i_1_n_0 ;
  wire \FSM_onehot_cs[5]_i_1_n_0 ;
  wire \FSM_onehot_cs_reg_n_0_[0] ;
  wire \FSM_onehot_cs_reg_n_0_[1] ;
  wire \FSM_onehot_cs_reg_n_0_[4] ;
  wire \FSM_onehot_cs_reg_n_0_[5] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [1:0]\axi_spi_rd_dat_reg[0] ;
  wire \axi_spi_rd_dat_reg[2] ;
  wire \axi_spi_rd_dat_reg[3] ;
  wire \div_cnt[3]_i_1_n_0 ;
  wire [3:0]div_cnt_reg;
  wire en_d;
  wire en_d1;
  wire en_d_reg_0;
  wire is_busy;
  wire p_0_in;
  wire [5:0]p_0_in__0;
  wire [3:0]p_0_in__1;
  wire p_1_in;
  wire p_1_in2_in;
  wire [7:0]rd_data;
  wire rd_data_d0;
  wire run;
  wire run_i_1_n_0;
  wire \rw_addr[0]_i_1_n_0 ;
  wire \rw_addr[10]_i_1_n_0 ;
  wire \rw_addr[11]_i_1_n_0 ;
  wire \rw_addr[12]_i_1_n_0 ;
  wire \rw_addr[13]_i_1_n_0 ;
  wire \rw_addr[14]_i_1_n_0 ;
  wire \rw_addr[15]_i_1_n_0 ;
  wire \rw_addr[15]_i_2_n_0 ;
  wire \rw_addr[1]_i_1_n_0 ;
  wire \rw_addr[2]_i_1_n_0 ;
  wire \rw_addr[3]_i_1_n_0 ;
  wire \rw_addr[4]_i_1_n_0 ;
  wire \rw_addr[5]_i_1_n_0 ;
  wire \rw_addr[6]_i_1_n_0 ;
  wire \rw_addr[7]_i_1_n_0 ;
  wire \rw_addr[8]_i_1_n_0 ;
  wire \rw_addr[9]_i_1_n_0 ;
  wire [14:0]\rw_addr_reg[14]_0 ;
  wire \rw_addr_reg_n_0_[0] ;
  wire \rw_addr_reg_n_0_[10] ;
  wire \rw_addr_reg_n_0_[11] ;
  wire \rw_addr_reg_n_0_[12] ;
  wire \rw_addr_reg_n_0_[13] ;
  wire \rw_addr_reg_n_0_[14] ;
  wire \rw_addr_reg_n_0_[1] ;
  wire \rw_addr_reg_n_0_[2] ;
  wire \rw_addr_reg_n_0_[3] ;
  wire \rw_addr_reg_n_0_[4] ;
  wire \rw_addr_reg_n_0_[5] ;
  wire \rw_addr_reg_n_0_[6] ;
  wire \rw_addr_reg_n_0_[7] ;
  wire \rw_addr_reg_n_0_[8] ;
  wire \rw_addr_reg_n_0_[9] ;
  wire rw_flag;
  wire rw_flag05_out;
  wire rw_flag_i_1_n_0;
  wire s00_axi_aclk;
  wire spi_clk;
  wire spi_clk_i_1_n_0;
  wire spi_csn;
  wire spi_csn1;
  wire spi_csn_d_i_1_n_0;
  wire spi_csn_d_reg_n_0;
  wire spi_miso;
  wire spi_mosi;
  wire spi_mosi_i_1_n_0;
  wire spi_mosi_i_2_n_0;
  wire spi_mosi_i_3_n_0;
  wire trans_cnt;
  wire trans_cnt04_out;
  wire \trans_cnt[5]_i_4_n_0 ;
  wire [5:0]trans_cnt_reg;
  wire \wr_data_d[0]_i_1_n_0 ;
  wire \wr_data_d[1]_i_1_n_0 ;
  wire \wr_data_d[2]_i_1_n_0 ;
  wire \wr_data_d[3]_i_1_n_0 ;
  wire \wr_data_d[4]_i_1_n_0 ;
  wire \wr_data_d[5]_i_1_n_0 ;
  wire \wr_data_d[6]_i_1_n_0 ;
  wire \wr_data_d[7]_i_1_n_0 ;
  wire \wr_data_d[7]_i_2_n_0 ;
  wire [7:0]\wr_data_d_reg[7]_0 ;
  wire \wr_data_d_reg_n_0_[0] ;
  wire \wr_data_d_reg_n_0_[1] ;
  wire \wr_data_d_reg_n_0_[2] ;
  wire \wr_data_d_reg_n_0_[3] ;
  wire \wr_data_d_reg_n_0_[4] ;
  wire \wr_data_d_reg_n_0_[5] ;
  wire \wr_data_d_reg_n_0_[6] ;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_cs[0]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[1] ),
        .I1(en_d),
        .I2(\FSM_onehot_cs_reg_n_0_[0] ),
        .O(\FSM_onehot_cs[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \FSM_onehot_cs[1]_i_1 
       (.I0(p_1_in2_in),
        .I1(Q),
        .I2(\FSM_onehot_cs[2]_i_4_n_0 ),
        .O(\FSM_onehot_cs[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0404)) 
    \FSM_onehot_cs[2]_i_2 
       (.I0(\FSM_onehot_cs[2]_i_3_n_0 ),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(rw_flag),
        .I3(\FSM_onehot_cs[2]_i_4_n_0 ),
        .I4(Q),
        .O(\FSM_onehot_cs[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \FSM_onehot_cs[2]_i_3 
       (.I0(trans_cnt_reg[1]),
        .I1(trans_cnt_reg[0]),
        .I2(trans_cnt_reg[5]),
        .I3(trans_cnt_reg[4]),
        .I4(trans_cnt_reg[2]),
        .I5(trans_cnt_reg[3]),
        .O(\FSM_onehot_cs[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \FSM_onehot_cs[2]_i_4 
       (.I0(trans_cnt_reg[1]),
        .I1(trans_cnt_reg[0]),
        .I2(trans_cnt_reg[2]),
        .I3(trans_cnt_reg[3]),
        .I4(trans_cnt_reg[4]),
        .I5(trans_cnt_reg[5]),
        .O(\FSM_onehot_cs[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \FSM_onehot_cs[3]_i_1 
       (.I0(\FSM_onehot_cs[2]_i_4_n_0 ),
        .I1(p_1_in2_in),
        .I2(\FSM_onehot_cs[2]_i_3_n_0 ),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(rw_flag),
        .O(\FSM_onehot_cs[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_cs[4]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[5] ),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs[2]_i_3_n_0 ),
        .O(\FSM_onehot_cs[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_cs[5]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[0] ),
        .I1(en_d),
        .O(\FSM_onehot_cs[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:000001,CS_L:100000,WR_ADDR:010000,WR_DATA:001000,RD_DATA:000100,CS_H:000010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_cs_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_cs[0]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "IDLE:000001,CS_L:100000,WR_ADDR:010000,WR_DATA:001000,RD_DATA:000100,CS_H:000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "IDLE:000001,CS_L:100000,WR_ADDR:010000,WR_DATA:001000,RD_DATA:000100,CS_H:000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_cs[2]_i_2_n_0 ),
        .Q(Q),
        .R(SR));
  (* FSM_ENCODED_STATES = "IDLE:000001,CS_L:100000,WR_ADDR:010000,WR_DATA:001000,RD_DATA:000100,CS_H:000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_cs[3]_i_1_n_0 ),
        .Q(p_1_in2_in),
        .R(SR));
  (* FSM_ENCODED_STATES = "IDLE:000001,CS_L:100000,WR_ADDR:010000,WR_DATA:001000,RD_DATA:000100,CS_H:000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_cs[4]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[4] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "IDLE:000001,CS_L:100000,WR_ADDR:010000,WR_DATA:001000,RD_DATA:000100,CS_H:000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_cs[5]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[5] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_spi_rd_dat[0]_i_1 
       (.I0(rd_data[0]),
        .I1(\wr_data_d_reg[7]_0 [0]),
        .I2(\axi_spi_rd_dat_reg[0] [0]),
        .I3(is_busy),
        .I4(\axi_spi_rd_dat_reg[0] [1]),
        .I5(\rw_addr_reg[14]_0 [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_spi_rd_dat[1]_i_1 
       (.I0(rd_data[1]),
        .I1(\wr_data_d_reg[7]_0 [1]),
        .I2(\axi_spi_rd_dat_reg[0] [0]),
        .I3(\rw_addr_reg[14]_0 [1]),
        .I4(\axi_spi_rd_dat_reg[0] [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_spi_rd_dat[2]_i_1 
       (.I0(rd_data[2]),
        .I1(\wr_data_d_reg[7]_0 [2]),
        .I2(\axi_spi_rd_dat_reg[0] [0]),
        .I3(\axi_spi_rd_dat_reg[2] ),
        .I4(\axi_spi_rd_dat_reg[0] [1]),
        .I5(\rw_addr_reg[14]_0 [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_spi_rd_dat[3]_i_1 
       (.I0(rd_data[3]),
        .I1(\wr_data_d_reg[7]_0 [3]),
        .I2(\axi_spi_rd_dat_reg[0] [0]),
        .I3(\axi_spi_rd_dat_reg[3] ),
        .I4(\axi_spi_rd_dat_reg[0] [1]),
        .I5(\rw_addr_reg[14]_0 [3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_spi_rd_dat[4]_i_1 
       (.I0(rd_data[4]),
        .I1(\wr_data_d_reg[7]_0 [4]),
        .I2(\axi_spi_rd_dat_reg[0] [0]),
        .I3(\rw_addr_reg[14]_0 [4]),
        .I4(\axi_spi_rd_dat_reg[0] [1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_spi_rd_dat[5]_i_1 
       (.I0(rd_data[5]),
        .I1(\wr_data_d_reg[7]_0 [5]),
        .I2(\axi_spi_rd_dat_reg[0] [0]),
        .I3(\rw_addr_reg[14]_0 [5]),
        .I4(\axi_spi_rd_dat_reg[0] [1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_spi_rd_dat[6]_i_1 
       (.I0(rd_data[6]),
        .I1(\wr_data_d_reg[7]_0 [6]),
        .I2(\axi_spi_rd_dat_reg[0] [0]),
        .I3(\rw_addr_reg[14]_0 [6]),
        .I4(\axi_spi_rd_dat_reg[0] [1]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_spi_rd_dat[7]_i_1 
       (.I0(rd_data[7]),
        .I1(\wr_data_d_reg[7]_0 [7]),
        .I2(\axi_spi_rd_dat_reg[0] [0]),
        .I3(\rw_addr_reg[14]_0 [7]),
        .I4(\axi_spi_rd_dat_reg[0] [1]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \div_cnt[0]_i_1 
       (.I0(div_cnt_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \div_cnt[1]_i_1 
       (.I0(div_cnt_reg[0]),
        .I1(div_cnt_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \div_cnt[2]_i_1 
       (.I0(div_cnt_reg[2]),
        .I1(div_cnt_reg[1]),
        .I2(div_cnt_reg[0]),
        .O(p_0_in__1[2]));
  LUT5 #(
    .INIT(32'h0800FFFF)) 
    \div_cnt[3]_i_1 
       (.I0(div_cnt_reg[1]),
        .I1(div_cnt_reg[0]),
        .I2(div_cnt_reg[3]),
        .I3(div_cnt_reg[2]),
        .I4(run),
        .O(\div_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \div_cnt[3]_i_2 
       (.I0(div_cnt_reg[3]),
        .I1(div_cnt_reg[0]),
        .I2(div_cnt_reg[1]),
        .I3(div_cnt_reg[2]),
        .O(p_0_in__1[3]));
  FDRE #(
    .INIT(1'b0)) 
    \div_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__1[0]),
        .Q(div_cnt_reg[0]),
        .R(\div_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(div_cnt_reg[1]),
        .R(\div_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__1[2]),
        .Q(div_cnt_reg[2]),
        .R(\div_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(div_cnt_reg[3]),
        .R(\div_cnt[3]_i_1_n_0 ));
  FDRE en_d1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(en_d),
        .Q(en_d1),
        .R(1'b0));
  FDRE en_d_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(en_d_reg_0),
        .Q(en_d),
        .R(1'b0));
  FDRE is_busy_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(is_busy),
        .R(\FSM_onehot_cs_reg_n_0_[0] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \rd_data_d[7]_i_1 
       (.I0(Q),
        .I1(div_cnt_reg[2]),
        .I2(div_cnt_reg[3]),
        .I3(div_cnt_reg[0]),
        .I4(div_cnt_reg[1]),
        .O(rd_data_d0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data_d_reg[0] 
       (.C(s00_axi_aclk),
        .CE(rd_data_d0),
        .D(spi_miso),
        .Q(rd_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data_d_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rd_data_d0),
        .D(rd_data[0]),
        .Q(rd_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data_d_reg[2] 
       (.C(s00_axi_aclk),
        .CE(rd_data_d0),
        .D(rd_data[1]),
        .Q(rd_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data_d_reg[3] 
       (.C(s00_axi_aclk),
        .CE(rd_data_d0),
        .D(rd_data[2]),
        .Q(rd_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data_d_reg[4] 
       (.C(s00_axi_aclk),
        .CE(rd_data_d0),
        .D(rd_data[3]),
        .Q(rd_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data_d_reg[5] 
       (.C(s00_axi_aclk),
        .CE(rd_data_d0),
        .D(rd_data[4]),
        .Q(rd_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data_d_reg[6] 
       (.C(s00_axi_aclk),
        .CE(rd_data_d0),
        .D(rd_data[5]),
        .Q(rd_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data_d_reg[7] 
       (.C(s00_axi_aclk),
        .CE(rd_data_d0),
        .D(rd_data[6]),
        .Q(rd_data[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    run_i_1
       (.I0(en_d1),
        .I1(run),
        .O(run_i_1_n_0));
  FDRE run_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(run_i_1_n_0),
        .Q(run),
        .R(\FSM_onehot_cs_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rw_addr[0]_i_1 
       (.I0(en_d_reg_0),
        .I1(\rw_addr_reg[14]_0 [0]),
        .O(\rw_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rw_addr[10]_i_1 
       (.I0(\rw_addr_reg[14]_0 [10]),
        .I1(en_d_reg_0),
        .I2(\rw_addr_reg_n_0_[9] ),
        .O(\rw_addr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rw_addr[11]_i_1 
       (.I0(\rw_addr_reg[14]_0 [11]),
        .I1(en_d_reg_0),
        .I2(\rw_addr_reg_n_0_[10] ),
        .O(\rw_addr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rw_addr[12]_i_1 
       (.I0(\rw_addr_reg[14]_0 [12]),
        .I1(en_d_reg_0),
        .I2(\rw_addr_reg_n_0_[11] ),
        .O(\rw_addr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rw_addr[13]_i_1 
       (.I0(\rw_addr_reg[14]_0 [13]),
        .I1(en_d_reg_0),
        .I2(\rw_addr_reg_n_0_[12] ),
        .O(\rw_addr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rw_addr[14]_i_1 
       (.I0(\rw_addr_reg[14]_0 [14]),
        .I1(en_d_reg_0),
        .I2(\rw_addr_reg_n_0_[13] ),
        .O(\rw_addr[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \rw_addr[15]_i_1 
       (.I0(en_d_reg_0),
        .I1(div_cnt_reg[0]),
        .I2(\FSM_onehot_cs_reg_n_0_[4] ),
        .I3(div_cnt_reg[1]),
        .I4(div_cnt_reg[3]),
        .I5(div_cnt_reg[2]),
        .O(\rw_addr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h2E)) 
    \rw_addr[15]_i_2 
       (.I0(\rw_addr_reg_n_0_[14] ),
        .I1(en_d_reg_0),
        .I2(\axi_spi_rd_dat_reg[2] ),
        .O(\rw_addr[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rw_addr[1]_i_1 
       (.I0(\rw_addr_reg[14]_0 [1]),
        .I1(en_d_reg_0),
        .I2(\rw_addr_reg_n_0_[0] ),
        .O(\rw_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rw_addr[2]_i_1 
       (.I0(\rw_addr_reg[14]_0 [2]),
        .I1(en_d_reg_0),
        .I2(\rw_addr_reg_n_0_[1] ),
        .O(\rw_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rw_addr[3]_i_1 
       (.I0(\rw_addr_reg[14]_0 [3]),
        .I1(en_d_reg_0),
        .I2(\rw_addr_reg_n_0_[2] ),
        .O(\rw_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rw_addr[4]_i_1 
       (.I0(\rw_addr_reg[14]_0 [4]),
        .I1(en_d_reg_0),
        .I2(\rw_addr_reg_n_0_[3] ),
        .O(\rw_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rw_addr[5]_i_1 
       (.I0(\rw_addr_reg[14]_0 [5]),
        .I1(en_d_reg_0),
        .I2(\rw_addr_reg_n_0_[4] ),
        .O(\rw_addr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rw_addr[6]_i_1 
       (.I0(\rw_addr_reg[14]_0 [6]),
        .I1(en_d_reg_0),
        .I2(\rw_addr_reg_n_0_[5] ),
        .O(\rw_addr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rw_addr[7]_i_1 
       (.I0(\rw_addr_reg[14]_0 [7]),
        .I1(en_d_reg_0),
        .I2(\rw_addr_reg_n_0_[6] ),
        .O(\rw_addr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rw_addr[8]_i_1 
       (.I0(\rw_addr_reg[14]_0 [8]),
        .I1(en_d_reg_0),
        .I2(\rw_addr_reg_n_0_[7] ),
        .O(\rw_addr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rw_addr[9]_i_1 
       (.I0(\rw_addr_reg[14]_0 [9]),
        .I1(en_d_reg_0),
        .I2(\rw_addr_reg_n_0_[8] ),
        .O(\rw_addr[9]_i_1_n_0 ));
  FDRE \rw_addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\rw_addr[15]_i_1_n_0 ),
        .D(\rw_addr[0]_i_1_n_0 ),
        .Q(\rw_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rw_addr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\rw_addr[15]_i_1_n_0 ),
        .D(\rw_addr[10]_i_1_n_0 ),
        .Q(\rw_addr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \rw_addr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\rw_addr[15]_i_1_n_0 ),
        .D(\rw_addr[11]_i_1_n_0 ),
        .Q(\rw_addr_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \rw_addr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\rw_addr[15]_i_1_n_0 ),
        .D(\rw_addr[12]_i_1_n_0 ),
        .Q(\rw_addr_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \rw_addr_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\rw_addr[15]_i_1_n_0 ),
        .D(\rw_addr[13]_i_1_n_0 ),
        .Q(\rw_addr_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \rw_addr_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\rw_addr[15]_i_1_n_0 ),
        .D(\rw_addr[14]_i_1_n_0 ),
        .Q(\rw_addr_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \rw_addr_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\rw_addr[15]_i_1_n_0 ),
        .D(\rw_addr[15]_i_2_n_0 ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \rw_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\rw_addr[15]_i_1_n_0 ),
        .D(\rw_addr[1]_i_1_n_0 ),
        .Q(\rw_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \rw_addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\rw_addr[15]_i_1_n_0 ),
        .D(\rw_addr[2]_i_1_n_0 ),
        .Q(\rw_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \rw_addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\rw_addr[15]_i_1_n_0 ),
        .D(\rw_addr[3]_i_1_n_0 ),
        .Q(\rw_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \rw_addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\rw_addr[15]_i_1_n_0 ),
        .D(\rw_addr[4]_i_1_n_0 ),
        .Q(\rw_addr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \rw_addr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\rw_addr[15]_i_1_n_0 ),
        .D(\rw_addr[5]_i_1_n_0 ),
        .Q(\rw_addr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \rw_addr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\rw_addr[15]_i_1_n_0 ),
        .D(\rw_addr[6]_i_1_n_0 ),
        .Q(\rw_addr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \rw_addr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\rw_addr[15]_i_1_n_0 ),
        .D(\rw_addr[7]_i_1_n_0 ),
        .Q(\rw_addr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \rw_addr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\rw_addr[15]_i_1_n_0 ),
        .D(\rw_addr[8]_i_1_n_0 ),
        .Q(\rw_addr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \rw_addr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\rw_addr[15]_i_1_n_0 ),
        .D(\rw_addr[9]_i_1_n_0 ),
        .Q(\rw_addr_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE2)) 
    rw_flag_i_1
       (.I0(rw_flag),
        .I1(en_d_reg_0),
        .I2(\axi_spi_rd_dat_reg[2] ),
        .O(rw_flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rw_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(rw_flag_i_1_n_0),
        .Q(rw_flag),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF7F0040)) 
    spi_clk_i_1
       (.I0(div_cnt_reg[2]),
        .I1(div_cnt_reg[1]),
        .I2(div_cnt_reg[0]),
        .I3(div_cnt_reg[3]),
        .I4(spi_clk),
        .O(spi_clk_i_1_n_0));
  FDRE spi_clk_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(spi_clk_i_1_n_0),
        .Q(spi_clk),
        .R(\FSM_onehot_cs_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    spi_csn1_INST_0
       (.I0(spi_csn_d_reg_n_0),
        .I1(\axi_spi_rd_dat_reg[3] ),
        .O(spi_csn1));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    spi_csn_INST_0
       (.I0(spi_csn_d_reg_n_0),
        .I1(\axi_spi_rd_dat_reg[3] ),
        .O(spi_csn));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h54)) 
    spi_csn_d_i_1
       (.I0(\FSM_onehot_cs_reg_n_0_[5] ),
        .I1(\FSM_onehot_cs_reg_n_0_[1] ),
        .I2(spi_csn_d_reg_n_0),
        .O(spi_csn_d_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    spi_csn_d_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(spi_csn_d_i_1_n_0),
        .Q(spi_csn_d_reg_n_0),
        .S(SR));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    spi_mosi_i_1
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(spi_mosi_i_2_n_0),
        .I3(spi_mosi_i_3_n_0),
        .I4(spi_mosi),
        .O(spi_mosi_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    spi_mosi_i_2
       (.I0(div_cnt_reg[2]),
        .I1(div_cnt_reg[3]),
        .I2(div_cnt_reg[1]),
        .I3(div_cnt_reg[0]),
        .I4(p_1_in2_in),
        .O(spi_mosi_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    spi_mosi_i_3
       (.I0(div_cnt_reg[2]),
        .I1(div_cnt_reg[3]),
        .I2(div_cnt_reg[1]),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(div_cnt_reg[0]),
        .O(spi_mosi_i_3_n_0));
  FDRE spi_mosi_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(spi_mosi_i_1_n_0),
        .Q(spi_mosi),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \trans_cnt[0]_i_1 
       (.I0(trans_cnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \trans_cnt[1]_i_1 
       (.I0(trans_cnt_reg[0]),
        .I1(trans_cnt_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \trans_cnt[2]_i_1 
       (.I0(trans_cnt_reg[2]),
        .I1(trans_cnt_reg[1]),
        .I2(trans_cnt_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \trans_cnt[3]_i_1 
       (.I0(trans_cnt_reg[3]),
        .I1(trans_cnt_reg[0]),
        .I2(trans_cnt_reg[1]),
        .I3(trans_cnt_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \trans_cnt[4]_i_1 
       (.I0(trans_cnt_reg[4]),
        .I1(trans_cnt_reg[2]),
        .I2(trans_cnt_reg[1]),
        .I3(trans_cnt_reg[0]),
        .I4(trans_cnt_reg[3]),
        .O(p_0_in__0[4]));
  LUT3 #(
    .INIT(8'hAE)) 
    \trans_cnt[5]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[0] ),
        .I1(\FSM_onehot_cs_reg_n_0_[4] ),
        .I2(\FSM_onehot_cs[2]_i_3_n_0 ),
        .O(trans_cnt));
  LUT6 #(
    .INIT(64'h2020202020202000)) 
    \trans_cnt[5]_i_2 
       (.I0(\trans_cnt[5]_i_4_n_0 ),
        .I1(div_cnt_reg[3]),
        .I2(div_cnt_reg[2]),
        .I3(Q),
        .I4(p_1_in2_in),
        .I5(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(trans_cnt04_out));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \trans_cnt[5]_i_3 
       (.I0(trans_cnt_reg[5]),
        .I1(trans_cnt_reg[3]),
        .I2(trans_cnt_reg[0]),
        .I3(trans_cnt_reg[1]),
        .I4(trans_cnt_reg[2]),
        .I5(trans_cnt_reg[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \trans_cnt[5]_i_4 
       (.I0(div_cnt_reg[0]),
        .I1(div_cnt_reg[1]),
        .O(\trans_cnt[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \trans_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(trans_cnt04_out),
        .D(p_0_in__0[0]),
        .Q(trans_cnt_reg[0]),
        .R(trans_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \trans_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(trans_cnt04_out),
        .D(p_0_in__0[1]),
        .Q(trans_cnt_reg[1]),
        .R(trans_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \trans_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(trans_cnt04_out),
        .D(p_0_in__0[2]),
        .Q(trans_cnt_reg[2]),
        .R(trans_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \trans_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(trans_cnt04_out),
        .D(p_0_in__0[3]),
        .Q(trans_cnt_reg[3]),
        .R(trans_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \trans_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(trans_cnt04_out),
        .D(p_0_in__0[4]),
        .Q(trans_cnt_reg[4]),
        .R(trans_cnt));
  FDRE #(
    .INIT(1'b0)) 
    \trans_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(trans_cnt04_out),
        .D(p_0_in__0[5]),
        .Q(trans_cnt_reg[5]),
        .R(trans_cnt));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \wr_data_d[0]_i_1 
       (.I0(\wr_data_d_reg[7]_0 [0]),
        .I1(en_d_reg_0),
        .I2(\axi_spi_rd_dat_reg[2] ),
        .O(\wr_data_d[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \wr_data_d[1]_i_1 
       (.I0(\wr_data_d_reg[7]_0 [1]),
        .I1(\axi_spi_rd_dat_reg[2] ),
        .I2(en_d_reg_0),
        .I3(\wr_data_d_reg_n_0_[0] ),
        .O(\wr_data_d[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \wr_data_d[2]_i_1 
       (.I0(\wr_data_d_reg[7]_0 [2]),
        .I1(\axi_spi_rd_dat_reg[2] ),
        .I2(en_d_reg_0),
        .I3(\wr_data_d_reg_n_0_[1] ),
        .O(\wr_data_d[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \wr_data_d[3]_i_1 
       (.I0(\wr_data_d_reg[7]_0 [3]),
        .I1(\axi_spi_rd_dat_reg[2] ),
        .I2(en_d_reg_0),
        .I3(\wr_data_d_reg_n_0_[2] ),
        .O(\wr_data_d[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \wr_data_d[4]_i_1 
       (.I0(\wr_data_d_reg[7]_0 [4]),
        .I1(\axi_spi_rd_dat_reg[2] ),
        .I2(en_d_reg_0),
        .I3(\wr_data_d_reg_n_0_[3] ),
        .O(\wr_data_d[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \wr_data_d[5]_i_1 
       (.I0(\wr_data_d_reg[7]_0 [5]),
        .I1(\axi_spi_rd_dat_reg[2] ),
        .I2(en_d_reg_0),
        .I3(\wr_data_d_reg_n_0_[4] ),
        .O(\wr_data_d[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \wr_data_d[6]_i_1 
       (.I0(\wr_data_d_reg[7]_0 [6]),
        .I1(\axi_spi_rd_dat_reg[2] ),
        .I2(en_d_reg_0),
        .I3(\wr_data_d_reg_n_0_[5] ),
        .O(\wr_data_d[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAEA)) 
    \wr_data_d[7]_i_1 
       (.I0(rw_flag05_out),
        .I1(p_1_in2_in),
        .I2(div_cnt_reg[0]),
        .I3(div_cnt_reg[1]),
        .I4(div_cnt_reg[3]),
        .I5(div_cnt_reg[2]),
        .O(\wr_data_d[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \wr_data_d[7]_i_2 
       (.I0(\wr_data_d_reg[7]_0 [7]),
        .I1(\axi_spi_rd_dat_reg[2] ),
        .I2(en_d_reg_0),
        .I3(\wr_data_d_reg_n_0_[6] ),
        .O(\wr_data_d[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_data_d[7]_i_3 
       (.I0(\axi_spi_rd_dat_reg[2] ),
        .I1(en_d_reg_0),
        .O(rw_flag05_out));
  FDRE \wr_data_d_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\wr_data_d[7]_i_1_n_0 ),
        .D(\wr_data_d[0]_i_1_n_0 ),
        .Q(\wr_data_d_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \wr_data_d_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\wr_data_d[7]_i_1_n_0 ),
        .D(\wr_data_d[1]_i_1_n_0 ),
        .Q(\wr_data_d_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \wr_data_d_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\wr_data_d[7]_i_1_n_0 ),
        .D(\wr_data_d[2]_i_1_n_0 ),
        .Q(\wr_data_d_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \wr_data_d_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\wr_data_d[7]_i_1_n_0 ),
        .D(\wr_data_d[3]_i_1_n_0 ),
        .Q(\wr_data_d_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \wr_data_d_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\wr_data_d[7]_i_1_n_0 ),
        .D(\wr_data_d[4]_i_1_n_0 ),
        .Q(\wr_data_d_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \wr_data_d_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\wr_data_d[7]_i_1_n_0 ),
        .D(\wr_data_d[5]_i_1_n_0 ),
        .Q(\wr_data_d_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \wr_data_d_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\wr_data_d[7]_i_1_n_0 ),
        .D(\wr_data_d[6]_i_1_n_0 ),
        .Q(\wr_data_d_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \wr_data_d_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\wr_data_d[7]_i_1_n_0 ),
        .D(\wr_data_d[7]_i_2_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
