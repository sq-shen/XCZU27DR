// ********************************************************************************* 
// Project Name : 
// Email        : 906148070@qq.com 
// Website      : 
// Create Time  : 2019.12.04
// File Name    : xdma_reg_rw.v
// Module Name  : 
// Abstract     :
// editor       : notepad++ 7.7
// *********************************************************************************
// Modification History:
// Date         By              Version                 Change Description
// -----------------------------------------------------------------------
// 2019          yanjun           1.0                      
//  
//
// *********************************************************************************

`timescale 1ns / 1ps

module axi_spi_master_v1_0_S00_AXI(
    //-- AXI Global
    input             clk            ,
    input             rst_n          ,

    // AXI Lite Master Interface connections
    input      [31:0] s_axil_awaddr  ,
    input             s_axil_awvalid ,
    output            s_axil_awready ,

    input      [31:0] s_axil_wdata   ,
    input      [3:0]  s_axil_wstrb   ,
    input             s_axil_wvalid  ,
    output            s_axil_wready  ,
    output     [1:0]  s_axil_bresp   ,
    output            s_axil_bvalid  ,
    input             s_axil_bready  ,

    input      [31:0] s_axil_araddr  ,
    input             s_axil_arvalid ,
    output            s_axil_arready ,

    output     [31:0] s_axil_rdata   ,
    output     [1:0]  s_axil_rresp   ,
    output            s_axil_rvalid  ,
    input             s_axil_rready  ,
    
    //reg_wr
    output reg        o_reg_wr_vld         ,
    output reg [31:0] o_reg_wr_addr        ,
    output reg [31:0] o_reg_wr_dat         ,
    
    //reg_rd
    output            o_reg_rd_vld         ,
    output     [31:0] o_reg_rd_addr        ,
    input             i_reg_rd_vld         ,
    input      [31:0] i_reg_rd_dat          
    );

//--------------------------------------------------------------------------------------------------
//wire and reg 
//--------------------------------------------------------------------------------------------------
//    
reg     axil_rvalid     =   0;
reg     bvalid          = 0     ;
//--------------------------------------------------------------------------------------------------
//logic 0 :  reg wr 
//--------------------------------------------------------------------------------------------------

assign s_axil_awready = 1'b1 ;
assign s_axil_wready  = 1'b1 ;
assign s_axil_bresp   = 2'b00;
assign s_axil_bvalid  = bvalid ;

always @(posedge clk)begin
    if(s_axil_bready && bvalid)bvalid <= 1'b0;
    else if(s_axil_wvalid)bvalid <= 1'b1;
end


always @(posedge clk) 
begin
    if(~rst_n)
        o_reg_wr_vld <= 1'b0;
    else if(s_axil_wvalid)
        o_reg_wr_vld <= 1'b1;
    else 
        o_reg_wr_vld <= 1'b0;
end

always @(posedge clk) 
begin
    if(~rst_n)
        o_reg_wr_addr <= 32'd0;
    else if(s_axil_awvalid)
        o_reg_wr_addr <= s_axil_awaddr;
    else 
        o_reg_wr_addr<=o_reg_wr_addr;
end

always @(posedge clk) 
begin
    if(~rst_n)
        o_reg_wr_dat <= 32'd0;
    else if(s_axil_wvalid)
        o_reg_wr_dat <= s_axil_wdata;
    else
        o_reg_wr_dat<= o_reg_wr_dat;
end
    
//--------------------------------------------------------------------------------------------------
//logic 1 :  reg rd 
//--------------------------------------------------------------------------------------------------
assign s_axil_arready           = 1'b1              ;
assign s_axil_rresp             = 2'b00             ;
    
assign o_reg_rd_vld        = s_axil_arvalid    ;
assign o_reg_rd_addr       = s_axil_araddr     ;
// assign s_axil_rvalid            = rd_en_r5          ;
assign s_axil_rvalid            = axil_rvalid ;
assign s_axil_rdata             = i_reg_rd_dat ;

always @(posedge clk)begin
    if(s_axil_rready && axil_rvalid)axil_rvalid <= 1'b0;
    else if(i_reg_rd_vld)axil_rvalid <= 1'b1;
end

endmodule
