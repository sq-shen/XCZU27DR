//----------------------------------------------------------------------------
// Title : ROM for tile configuration
// Project : Ultrascale+ RF Data Converter Subsystem
//----------------------------------------------------------------------------
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 

`timescale 1ps/1ps

module design_1_usp_rf_data_converter_0_0_device_rom (
    aux_clk,
    data_index,
    data_out,
    addr_out,
    tile_out
  );

    input aux_clk;

    input [10:0] data_index;

    output [15:0] data_out;
    output [10:0] addr_out;
    output [2:0]  tile_out;

    reg [29:0] data;

    // The 30-bit data in the array follows the format below:
    // 29:27 |  26:24  |    23:16    |    15:0
    // Tile  |  Slice  | DRP Address |  DRP Data

    (* rom_style = "distributed" *) reg [29:0] data_array [0:77] = '{
       30'h07280280,  // SYSREF Distribution (ADC0)
       30'h0f230000,  // Clock Network Control 0 (ADC1)
       30'h0f240001,  // Clock Network Control 1 (ADC1)
       30'h0f17002e,  // PLL FB Div (ADC1)
       30'h0f0c00c1,  // PLL Output Divide (ADC1)
       30'h0f100010,  // PLL Ref clock divide (ADC1)
       30'h0f000080,  // PLL SDM CONFIG0 (ADC1)
       30'h0f060111,  // PLL SDM seed (ADC1)
       30'h0f070011,  // PLL SDM seed setup (ADC1)
       30'h0f0e0507,  // PLL ChargePump setup (ADC1)
       30'h0f12ffff,  // PLL ChargePump setup (ADC1)
       30'h0f137f9c,  // PLL loop filter setup (ADC1)
       30'h0f140006,  // PLL loop filter setup (ADC1)
       30'h0f155800,  // PLL VCO setup (ADC1)
       30'h0f160008,  // PLL VCO setup (ADC1)
       30'h0f0a7a3e,  // PLL Coarse Frequency setup (ADC1)
       30'h0f0b7008,  // PLL Coarse Frequency setup (ADC1)
       30'h0f11003d,  // PLL Voltage Regulator setup (ADC1)
       30'h0f2c0022,  // CLK_DIV (ADC1)
       30'h0f280600,  // SYSREF Distribution (ADC1)
       30'h0f2dffc0,  // HSCOM_PWR_MASK (ADC1)
       30'h08020101,  // ADC10 Data Width
       30'h08100003,  // ADC10 Decimation Config
       30'h08110004,  // ADC10 Decimation Mode
       30'h08200000,  // ADC10 Mixer Config 0
       30'h08210924,  // ADC10 Mixer Config 1
       30'h083a0020,  // ADC10 Switch Matrix Config
       30'h087101f1,  // ADC10 RX MC Config 0
       30'h08518243,  // ADC10 TI_DCB_CTRL0
       30'h0855904a,  // ADC10 TI_TIME_SKEW_CTRL0
       30'h08060001,  // ADC10 FABRIC_DEBUG
       30'h09020101,  // ADC11 Data Width
       30'h09100003,  // ADC11 Decimation Config
       30'h09110004,  // ADC11 Decimation Mode
       30'h09200000,  // ADC11 Mixer Config 0
       30'h09210924,  // ADC11 Mixer Config 1
       30'h093a0024,  // ADC11 Switch Matrix Config
       30'h097101f9,  // ADC11 RX MC Config 0
       30'h09518247,  // ADC11 TI_DCB_CTRL0
       30'h0955904a,  // ADC11 TI_TIME_SKEW_CTRL0
       30'h09060001,  // ADC11 FABRIC_DEBUG
       30'h17288880,  // SYSREF Distribution (ADC2)
       30'h1f281700,  // SYSREF Distribution (ADC3)
       30'h27230000,  // Clock Network Control 0 (DAC0)
       30'h27240001,  // Clock Network Control 1 (DAC0)
       30'h2717002e,  // PLL FB Div (DAC0)
       30'h270c00c1,  // PLL Output Divide (DAC0)
       30'h27100010,  // PLL Ref clock divide (DAC0)
       30'h27000080,  // PLL SDM CONFIG0 (DAC0)
       30'h27060111,  // PLL SDM seed (DAC0)
       30'h27070011,  // PLL SDM seed setup (DAC0)
       30'h270e0507,  // PLL ChargePump setup (DAC0)
       30'h2712ffff,  // PLL ChargePump setup (DAC0)
       30'h27137f9c,  // PLL loop filter setup (DAC0)
       30'h27140006,  // PLL loop filter setup (DAC0)
       30'h27155800,  // PLL VCO setup (DAC0)
       30'h27160008,  // PLL VCO setup (DAC0)
       30'h270a7a3e,  // PLL Coarse Frequency setup (DAC0)
       30'h270b7008,  // PLL Coarse Frequency setup (DAC0)
       30'h2711003d,  // PLL Voltage Regulator setup (DAC0)
       30'h272c0011,  // CLK_DIV (DAC0)
       30'h2728c980,  // SYSREF Distribution (DAC0)
       30'h272dffc0,  // HSCOM_PWR_MASK (DAC0)
       30'h20020101,  // DAC00 Data Width
       30'h20100004,  // DAC00 Interpolation Control
       30'h20110000,  // DAC00 Interpolation Data
       30'h20200000,  // DAC00 Mixer Config 0
       30'h20210924,  // DAC00 Mixer Config 1
       30'h20300000,  // DAC00 Inv Sinc Filter
       30'h20310040,  // DAC00 Multiband Config
       30'h20600001,  // DAC00 Decoder Control
       30'h20610001,  // DAC00 Decoder Clock Enable
       30'h20710000,  // DAC00 MC_CONFIG0
       30'h20734858,  // DAC00 MC_CONFIG2
       30'h207487c0,  // DAC00 MC_CONFIG3
       30'h20070001,  // DAC00 FABRIC_DEBUG
       30'h2f280100,  // SYSREF Distribution (DAC1)
       30'h00000000};

    //-------------------------------------------------------------------------
    // Output the tile number, address and data for the DRP writes
    // depending on the data_index input
    //-------------------------------------------------------------------------
    always @(posedge aux_clk)
    begin
      data <= data_array[data_index];
    end

    assign data_out = data[15:0];
    assign addr_out = data[26:16];
    assign tile_out = data[29:27];

endmodule
