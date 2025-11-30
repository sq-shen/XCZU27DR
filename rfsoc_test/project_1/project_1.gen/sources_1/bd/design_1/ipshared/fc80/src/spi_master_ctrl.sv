`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/08 10:48:57
// Design Name: 
// Module Name: spi_ctrl
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


module spi_master_ctrl#(
    parameter   ADDR_WIDTH              = 16                ,
    parameter   DATA_WIDTH              = 8
)(
    input                               sys_clk             ,
    input                               sys_rst             ,
    input                               en                  ,
    input                               rw_en               ,           //1-> wr, 0->rd
    input                               irq_en              ,
    input                               clear_irq           ,
    input                               cs_sel              ,
    input   [ADDR_WIDTH-2:0]            addr                ,
    input   [DATA_WIDTH-1:0]            wr_data             ,
    output  [DATA_WIDTH-1:0]            rd_data             ,
    output   reg                        irq_out             ,
    output   reg                        is_busy             ,
    

    output                              spi_csn             ,
    output                              spi_csn1            ,

    output   reg                        spi_clk             ,
    output                              spi_sdio_t          ,
    output   reg                        spi_mosi            ,
    input                               spi_miso            
    );

    localparam                          IDLE    = 3'd0      ;
    localparam                          CS_L    = 3'd1      ;
    localparam                          WR_ADDR = 3'd2      ;
    localparam                          WR_DATA = 3'd3      ;
    localparam                          RD_DATA = 3'd4      ;
    localparam                          CS_H    = 3'd5      ;

    reg     [2:0]                       cs , ns             ;
    reg                                 en_d                ;
    reg                                 en_d1               ;

    reg                                 run                 ;
    reg                                 done                ;
    reg     [3:0]                       div_cnt      = 0    ;
    reg     [5:0]                       trans_cnt    = 0    ;
    reg                                 rw_flag      = 0    ;       //wr -> 1; rd -> 0
    reg                                 spi_csn_d    = 0    ;
    // reg                                 spi_mosi            ;

    // reg                                 spi_miso            ;

    // assign spi_sdio = (cs == RD_DATA)? 1'bz: spi_mosi;
    assign spi_sdio_t = (cs == RD_DATA)? 1'b1 :1'b0;
    assign spi_csn = ~cs_sel? spi_csn_d: 1'b1;
    assign spi_csn1 = cs_sel? spi_csn_d: 1'b1;
    //----------------------------------------------------------------
    reg     [ADDR_WIDTH-1:0]            rw_addr             ;
    reg     [DATA_WIDTH-1:0]            wr_data_d           ;
    reg     [DATA_WIDTH-1:0]            rd_data_d  = 0      ;
         
    // always @(posedge sys_clk)begin
    //     spi_miso <= spi_sdio;
    // end

    // always @(posedge sys_clk)begin
    //     // if(en && rw_en)rw_addr <= {1'b0, addr};
    //     // else if(en && ~rw_en)rw_addr <= {1'b1, addr};
    // end

    // always @(posedge sys_clk)begin
    //     if(en && rw_en)wr_data_d <= wr_data;
    // end

    always @(posedge sys_clk)begin
        en_d <= en;
        en_d1 <= en_d;
    end

    always @(posedge sys_clk)begin
        if(en && rw_en)rw_flag <= 1'b1;
        else if(en && ~rw_en)rw_flag <= 1'b0;
    end

    //--------------------------------------------------------------

    always @(posedge sys_clk)begin
        if(sys_rst)cs <= IDLE;
        else cs <= ns;
    end

    always @(*)begin
        case(cs)
            IDLE:begin
                if(en_d)ns = CS_L;
                else ns = IDLE;
            end
            CS_L:begin
                ns = WR_ADDR;
            end
            WR_ADDR:begin
                if(trans_cnt == ADDR_WIDTH && rw_flag)ns = WR_DATA;
                else if(trans_cnt == ADDR_WIDTH)ns = RD_DATA;
                else ns = WR_ADDR;
            end
            WR_DATA:begin
                if(trans_cnt == DATA_WIDTH)ns = CS_H;
                else ns = WR_DATA;
            end
            RD_DATA:begin
                if(trans_cnt == DATA_WIDTH)ns = CS_H;
                else ns = RD_DATA;
            end
            CS_H:begin
                ns = IDLE;
            end
            default:ns = IDLE;
        endcase
    end
    //----------------------------------------------------------------
    always @(posedge sys_clk)begin
        if(sys_rst)spi_csn_d <= 1'b1;
        else if(cs == CS_L)spi_csn_d <= 1'b0;
        else if(cs == CS_H)spi_csn_d <= 1'b1;
    end

    always @(posedge sys_clk)begin
        if(run && div_cnt == 7)div_cnt <= 'd0;
        else if(run)div_cnt <= div_cnt + 1'b1;
        else div_cnt <= 'd0;
    end

    always @(posedge sys_clk)begin
        if(cs == IDLE)spi_clk <= 1'b0;
        else if(div_cnt == 3)spi_clk <= 1'b1;
        else if(div_cnt == 7)spi_clk <= 1'b0;
    end

    always @(posedge sys_clk)begin
        if(cs == IDLE)run <= 'd0;
        else if(en_d1)run <= 'd1;
    end

    always @(posedge sys_clk)begin
        if(cs == IDLE)trans_cnt <= 'd0;
        else if(cs == WR_ADDR && trans_cnt==ADDR_WIDTH)
            trans_cnt <= 'd0;
        else if((cs == WR_ADDR || cs == WR_DATA || cs == RD_DATA)&& div_cnt==7)
            trans_cnt <= trans_cnt + 1'b1;
    end

    always @(posedge sys_clk)begin
        if(cs == WR_ADDR && div_cnt == 0)spi_mosi <= rw_addr[ADDR_WIDTH-1];
        else if(cs == WR_DATA && div_cnt == 1)spi_mosi <= wr_data_d[DATA_WIDTH-1];
    end

    always @(posedge sys_clk)begin
        if(en && rw_en)rw_addr <= {1'b0, addr};
        else if(en && ~rw_en)rw_addr <= {1'b1, addr};
        else if(cs == WR_ADDR && div_cnt == 0)rw_addr <= {rw_addr[ADDR_WIDTH-2:0], 1'b0};
    end

    always @(posedge sys_clk)begin
        if(en && rw_en)wr_data_d <= wr_data;
        else if(cs == WR_DATA && div_cnt == 1)wr_data_d <= {wr_data_d[DATA_WIDTH-2:0], 1'b0};
    end

    always @(posedge sys_clk)begin
        if(cs == RD_DATA && div_cnt == 3)begin
            rd_data_d[0] <= spi_miso;
            rd_data_d[DATA_WIDTH-1:1] <= rd_data_d[DATA_WIDTH-2:0];
        end
    end

    // always @(posedge sys_clk)begin
    //     if(cs == RD_DATA && div_cnt == 3)rd_data_d <= rd_data_d >> 1;
    //     // if(cs == RD_DATA && div_cnt == 3)rd_data_d <= {rd_data_d[DATA_WIDTH-1], rd_data_d[DATA_WIDTH-1:1]};
    // end

    always @(posedge sys_clk)begin
        if(cs == IDLE)is_busy <= 1'b0;
        else is_busy <= 1'b1;
    end

    always @(posedge sys_clk)begin
        if(clear_irq)irq_out <= 1'b0;
        else if(cs == CS_H && irq_en)irq_out <= 1'b1;
    end

    assign rd_data = rd_data_d;

endmodule
