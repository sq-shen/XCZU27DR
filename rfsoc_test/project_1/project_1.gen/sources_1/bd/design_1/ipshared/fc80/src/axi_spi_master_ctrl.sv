`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/08 16:36:15
// Design Name: 
// Module Name: axi_spi_master_ctrl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module axi_spi_master_ctrl#(
    parameter   ADDR_WIDTH              = 16                ,
    parameter   DATA_WIDTH              = 8
)(
    input                               aclk                ,
    input                               arstn               ,

    output                              spi_csn             ,
    output                              spi_csn1            ,
    output                              spi_clk             ,
    output                              spi_mosi            ,
    input                               spi_miso            ,
    output                              spi_sdio_t          ,

    input   [31:0]                      axi_spi_rd_addr     ,
    input                               axi_spi_rd_en       ,
    input   [31:0]                      axi_spi_wr_addr     ,
    input   [31:0]                      axi_spi_wr_dat      ,
    input                               axi_spi_wr_vld      ,
    output  reg[31:0]                   axi_spi_rd_dat      ,
    output  reg                         axi_spi_rd_vld      ,
    
    output                              irq_out
);

    reg                                 en                  ;
    reg                                 rw_en               ;
    reg                                 irq_en              ;
    reg     [ADDR_WIDTH-2:0]            addr                ;
    reg     [DATA_WIDTH-1:0]            wr_data             ;
    reg                                 clear_irq           ;
    reg                                 cs_sel = 0          ;
    wire                                isbusy              ;
    wire                                irq                 ;

    wire    [DATA_WIDTH-1:0]            rd_data             ;    

    always @(posedge aclk)begin
        if(~arstn)begin
            rw_en <= 1'b0;
            irq_en <= 1'b0;     
        end
        else if(axi_spi_wr_vld)begin
            case (axi_spi_wr_addr[3:0])
                0:addr <= axi_spi_wr_dat;
                1:begin
                    wr_data <= axi_spi_wr_dat;
                end
                2:begin
                    irq_en <= axi_spi_wr_dat[0];
                    rw_en <= axi_spi_wr_dat[1];
                    en <= axi_spi_wr_dat[2];
                    cs_sel <= axi_spi_wr_dat[3];
                end
                3:begin
                    clear_irq <= axi_spi_wr_dat[0];
                end
            endcase
        end
        else begin
            en <= 1'b0;
            clear_irq <= 1'b0;
        end
    end

    always @(posedge aclk)begin
        if(axi_spi_rd_en)begin
            case(axi_spi_rd_addr[3:0])
                0: axi_spi_rd_dat <= addr;
                1: axi_spi_rd_dat <= wr_data;
                2: axi_spi_rd_dat <= {28'd0, cs_sel, rw_en, irq, isbusy};
                3: axi_spi_rd_dat <= rd_data;
            endcase
        end
        axi_spi_rd_vld <= axi_spi_rd_en;
    end


    spi_master_ctrl#(
        .ADDR_WIDTH                 (ADDR_WIDTH             ),
        .DATA_WIDTH                 (DATA_WIDTH             )
    ) u_spi_master_ctrl(
        .sys_clk                    (aclk                   ),
        .sys_rst                    (~arstn                 ),
        .en                         (en                     ),
        .rw_en                      (rw_en                  ),
        .irq_en                     (irq_en                 ),
        .clear_irq                  (clear_irq              ),
        .addr                       (addr                   ),
        .wr_data                    (wr_data                ),
        .rd_data                    (rd_data                ),
        .irq_out                    (irq_out                ),
        .is_busy                    (isbusy                 ),
        .cs_sel                     (cs_sel                 ),
        .spi_csn                    (spi_csn                ),
        .spi_csn1                   (spi_csn1               ),
        .spi_clk                    (spi_clk                ),
        .spi_mosi                   (spi_mosi               ),
        .spi_miso                   (spi_miso               ),
        .spi_sdio_t                 (spi_sdio_t             )
    );          


    // ila_spi_2 uila_spi(
    //     .clk                        (aclk                                           ),
    //     .probe0                     (addr                                           ),
    //     .probe1                     (wr_data                                        ),
    //     .probe2                     (en                                             ),
    //     .probe3                     (irq_en                                         ),
    //     .probe4                     (rd_data                                        ),
    //     .probe5                     (u_spi_master_ctrl.cs                           ),
    //     .probe6                     (u_spi_master_ctrl.spi_miso                     ),
    //     .probe7                     (u_spi_master_ctrl.spi_mosi                     ),
    //     .probe8                     (u_spi_master_ctrl.spi_clk                      ),
    //     .probe9                     (u_spi_master_ctrl.spi_csn                      ),
    //     .probe10                     (u_spi_master_ctrl.trans_cnt                    ),
    //     .probe11                     (u_spi_master_ctrl.div_cnt                      ),
    //     .probe12                     (u_spi_master_ctrl.rd_data_d                    ),
    //     .probe13                     (isbusy                   )
    // );

endmodule           
