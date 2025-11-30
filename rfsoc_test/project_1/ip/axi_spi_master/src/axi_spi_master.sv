
`timescale 1 ns / 1 ps

	module axi_spi_master #
	(
		// Users to add parameters here
		parameter   ADDR_WIDTH              = 16                ,
    	parameter   DATA_WIDTH              = 8					,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line
		output                              spi_csn             ,
		output								spi_csn1			,
		output                              spi_clk             ,
		output                              spi_mosi            ,
		input                               spi_miso            ,
		output                              spi_sdio_t          ,

		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);

	wire   [4:0]               axi_spi_rd_addr         ;
	wire                       axi_spi_rd_en           ;
	wire   [4:0]               axi_spi_wr_addr         ;
	wire   [31:0]              axi_spi_wr_dat          ;
	wire                       axi_spi_wr_vld          ;
	wire   [31:0]              axi_spi_rd_dat          ;
	wire					   axi_spi_rd_vld		   ;

// Instantiation of Axi Bus Interface S00_AXI
	s_axi_lite_reg u_s_axi_lite_reg (
		.clk																	(s00_axi_aclk),
		.rst_n																(s00_axi_aresetn),
		.s_axil_awaddr												(s00_axi_awaddr),
		// .s_axil_awprot(s00_axi_awprot),
		.s_axil_awvalid												(s00_axi_awvalid),
		.s_axil_awready												(s00_axi_awready),
		.s_axil_wdata													(s00_axi_wdata),
		.s_axil_wstrb													(s00_axi_wstrb),
		.s_axil_wvalid												(s00_axi_wvalid),
		.s_axil_wready												(s00_axi_wready),
		.s_axil_bresp													(s00_axi_bresp),
		.s_axil_bvalid												(s00_axi_bvalid),
		.s_axil_bready												(s00_axi_bready),
		.s_axil_araddr												(s00_axi_araddr),
		// .s_axil_arprot(s00_axi_arprot),
		.s_axil_arvalid												(s00_axi_arvalid),
		.s_axil_arready												(s00_axi_arready),
		.s_axil_rdata													(s00_axi_rdata),
		.s_axil_rresp													(s00_axi_rresp),
		.s_axil_rvalid												(s00_axi_rvalid),
		.s_axil_rready												(s00_axi_rready),
		.o_reg_wr_vld 												(axi_spi_wr_vld ),
		.o_reg_wr_addr												(axi_spi_wr_addr),
		.o_reg_wr_dat 												(axi_spi_wr_dat ),
		.o_reg_rd_vld 												(axi_spi_rd_en	),
		.o_reg_rd_addr												(axi_spi_rd_addr),
		.i_reg_rd_vld													(axi_spi_rd_vld	),	
		.i_reg_rd_dat 												(axi_spi_rd_dat	)
	);

	axi_spi_master_ctrl#(
		.ADDR_WIDTH						(ADDR_WIDTH				),
		.DATA_WIDTH						(DATA_WIDTH				)
	) u_axi_spi_master_ctrl(
        .aclk                           (s00_axi_aclk           ),
        .arstn                          (s00_axi_aresetn        ),
        .axi_spi_rd_addr                (axi_spi_rd_addr        ),
        .axi_spi_rd_en                  (axi_spi_rd_en          ),
        .axi_spi_wr_addr                (axi_spi_wr_addr        ),
        .axi_spi_wr_dat                 (axi_spi_wr_dat         ),
        .axi_spi_wr_vld                 (axi_spi_wr_vld         ),
        .axi_spi_rd_dat                 (axi_spi_rd_dat         ),
		.axi_spi_rd_vld					(axi_spi_rd_vld			),
        .spi_csn                        (spi_csn                ),
		.spi_csn1						(spi_csn1				),
        .spi_clk                        (spi_clk                ),
        .spi_mosi                   	(spi_mosi               ),
        .spi_miso                   	(spi_miso               ),
        .spi_sdio_t                 	(spi_sdio_t             )
    );

	// Add user logic here

	// User logic ends

	endmodule
