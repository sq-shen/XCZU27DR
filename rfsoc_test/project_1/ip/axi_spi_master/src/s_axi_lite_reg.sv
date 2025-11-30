// ********************************************************************************* 
// Project Name : 
           
//  
//
// *********************************************************************************

`timescale 1ns / 1ps  

module s_axi_lite_reg#(
		parameter		integer							ADDR_WIDTH	= 10
)(
    //-- AXI Global
    input logic            					clk            				,
    input logic            					rst_n          				,

    // AXI Lite Master Interface connections
    input  logic    [31:0] 					s_axil_awaddr  				,
    input  logic           					s_axil_awvalid 				,
    output logic           					s_axil_awready 				,

    input  logic    [31:0] 					s_axil_wdata   				,
    input  logic    [3:0]  					s_axil_wstrb   				,
    input  logic           					s_axil_wvalid  				,
    output logic           					s_axil_wready  				,
    output logic    [1:0]  					s_axil_bresp   				,
    output logic           					s_axil_bvalid  				,
    input  logic           					s_axil_bready  				,

    input  logic    [31:0] 					s_axil_araddr  				,
    input  logic           					s_axil_arvalid 				,
    output logic           					s_axil_arready 				,

    output logic    [31:0] 					s_axil_rdata   				,
    output logic    [1:0]  					s_axil_rresp   				,
    output logic           					s_axil_rvalid  				,
    input  logic           					s_axil_rready  				,
    
    //reg_wr
    output logic           					o_reg_wr_vld         	,
    output logic    [ADDR_WIDTH-1:0]o_reg_wr_addr        	,
    output logic    [31:0] 					o_reg_wr_dat         	,
    
    //reg_rd
    output logic	         					o_reg_rd_vld         	,
    output logic	  [ADDR_WIDTH-1:0]o_reg_rd_addr        	,
    input  logic	         					i_reg_rd_vld         	,
    input  logic	  [31:0] 					i_reg_rd_dat          
    );

//--------------------------------------------------------------------------------------------------
//wire and reg 
//--------------------------------------------------------------------------------------------------
//    
reg     axil_rvalid     =   0;
reg     bvalid          = 0     ;

reg			axil_awvalid		= 0			;
reg			axil_wvalid			= 0			;

reg		[31:0]				axil_rdata		= 0 ;

reg		[2:0]					wready				= 3'd0;
reg		[2:0]					awready				= 3'd0;
//--------------------------------------------------------------------------------------------------
//logic 0 :  reg wr 
//--------------------------------------------------------------------------------------------------

assign s_axil_awready = awready[2] ;
assign s_axil_wready  = wready[0] ;
assign s_axil_bresp   = 2'b00;
assign s_axil_bvalid  = bvalid ;




always @(posedge clk)begin
    if(s_axil_bready && bvalid)bvalid <= 1'b0;
    else if(axil_wvalid && axil_awvalid)bvalid <= 1'b1;
    else bvalid <= bvalid;
end

always @(posedge clk)begin
	if(s_axil_wvalid && s_axil_wready)axil_wvalid <= 1'b1;
	if(bvalid || (~rst_n))axil_wvalid <= 1'b0;
end

always @(posedge clk)begin
	if(s_axil_awvalid && s_axil_awready)axil_awvalid <= 1'b1;
	if(bvalid || (~rst_n))axil_awvalid <= 1'b0;
end


always @(posedge clk) 
begin      
    o_reg_wr_vld <= (axil_wvalid && axil_awvalid)? 1'b1: 1'b0; 
    if(~rst_n)
        o_reg_wr_vld <= 1'b0;   
end

always @(posedge clk) 
begin
 		if(s_axil_awvalid && s_axil_awready)
 			o_reg_wr_addr <= s_axil_awaddr[ADDR_WIDTH+1:2];
    if(~rst_n)
        o_reg_wr_addr <= 'd0;
end

always @(posedge clk) 
begin 
		if(s_axil_wvalid && s_axil_wready)
    	o_reg_wr_dat <= s_axil_wdata;
    if(~rst_n)
      o_reg_wr_dat <= 32'd0;
end



always @(posedge clk)begin
	if(s_axil_wvalid && axil_awvalid)wready[0] <= 1'b1;
	//wready[1] <= wready[0];
	//wready[2] <= wready[1];
	
	if(wready[0] && s_axil_wvalid || (~rst_n))wready <= 3'd0;
end



 always @(posedge clk)begin
	if(s_axil_awvalid)awready[0] <= 1'b1;
	awready[1] <= awready[0];
	awready[2] <= awready[1];
	
	if(awready[2] && s_axil_wvalid || (~rst_n))awready <= 3'd0;
end

   
//--------------------------------------------------------------------------------------------------
//logic 1 :  reg rd 
//--------------------------------------------------------------------------------------------------
assign s_axil_arready           = arready[2]        ;
assign s_axil_rresp             = 2'b00             ;
    
assign s_axil_rvalid            = axil_rvalid ;
assign s_axil_rdata             = axil_rdata ;

reg												reg_rd_valid				;

reg		[2:0]								arready			;

always @(posedge clk)begin
	if(s_axil_arvalid)arready[0] <= 1'b1;
	arready[1] <= arready[0];
	arready[2] <= arready[1];
	if(arready[2] || (~rst_n))arready <= 3'd0;
end

always @(posedge clk)begin
	if(s_axil_arvalid && s_axil_arready)o_reg_rd_vld <= 1'b1;
	if(o_reg_rd_vld || (~rst_n))o_reg_rd_vld <= 1'b0;
end

always @(posedge clk)begin
	o_reg_rd_addr <= (s_axil_arvalid && s_axil_arready)? s_axil_araddr[ADDR_WIDTH+1:2]: 0;
end



always @(posedge clk)begin
		reg_rd_valid <= i_reg_rd_vld;
    if(reg_rd_valid)axil_rvalid <= 1'b1;
    if(s_axil_rready && axil_rvalid || (~rst_n))axil_rvalid <= 1'b0;
end

always @(posedge clk)begin
	if(i_reg_rd_vld)axil_rdata  <= i_reg_rd_dat ;
end



endmodule
