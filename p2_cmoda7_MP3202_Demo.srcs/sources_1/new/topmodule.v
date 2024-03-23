/*
 * Module: top_module
 * Date : 2024/03/21
 * Author : Maoyang
 * Description:
 * This top-level module integrates various components to demonstrate a complete system design,
 * including a clock divider, a 7-segment display driver, and an external ADC (Analog-to-Digital Converter) MCP3202 interface.
 * The system operates based on the input from a system clock (sysclk) and two buttons (btn).
 * 
 * Inputs:
 * - sysclk: The system clock input.
 * - btn: 2-button input for system control. btn[1] is used as a reset signal.
 * - adc_dout: Digital output from the MCP3202 ADC.
 * 
 * Outputs:
 * - pio37 to pio48: Pins connected to a 7-segment display for displaying ADC data.
 * - led: 2-bit LED output for indicating system status or errors (not implemented in the given code).
 * - adc_din: Serial data input to the ADC.
 * - adc_clk: Clock signal for the ADC.
 * - adc_csn: Chip select signal for the ADC, active low.
 * 
 * Functionality:
 * 1. The module starts with configuring the system reset based on the btn[1] input.
 * 2. It then sets up three clock dividers to generate different frequencies needed for the 7-segment display and the ADC.
 * 3. The 7-segment display is driven by the `drv_segment` module, which updates the display based on the ADC data.
 * 4. The MCP3202 ADC is configured to operate in single channel mode (CHANNEL 0), with a 2MHz clock.
 * 5. ADC sampling occurs at a frequency of 1Hz, triggered by the CLK1Hz signal. When new ADC data is valid (adc_vaild), it is displayed on the 7-segment display.
 * 
 * Implementation Details:
 * - Clock division is achieved using instances of the `clock_div` module, parameterized to produce the required frequencies for the ADC and the 7-segment display.
 * - The 7-segment display configuration and updating are handled by the `drv_segment` module.
 * - The `drv_mcp3202` module interfaces with the MCP3202 ADC, handling the SPI communication and data conversion process.
 * - The ADC sampling and display update logic is implemented in an always block, which reacts to the ADC's valid data signal and the 1Hz clock signal.
 * 
 * Notes:
 * - This module demonstrates handling of digital and analog inputs, clock management, and driving peripheral devices in a hardware description language.
 */
module top_module(
        input sysclk,
        input [1:0] btn,
        output pio37,
        output pio38,
        output pio39,
        output pio40,
        output pio41,
        output pio42,
        output pio43,
        output pio44,
        output pio45,
        output pio46,
        output pio47,
        output pio48,
        output [1:0] led,
        //External ADC MCP3202 Pin;
        output adc_din,
        output adc_clk,
        output adc_csn,
        input  adc_dout
);

//RESET SYSTEM CONFIG;
wire rstn;
assign rstn = ~btn[1];

//CLOCK TREE CONFIG;
wire CLK500Hz,CLK1Hz,CLK_ADC;

clock_div clk_div_u1(rstn,sysclk,CLK500Hz);
clock_div clk_div_u2(rstn,CLK500Hz,CLK1Hz);
clock_div clk_div_u3(rstn,sysclk,CLK_ADC);

defparam clk_div_u1.FREQ_INPUT  = 12_000_000;
defparam clk_div_u1.FREQ_OUTPUT = 500;
defparam clk_div_u2.FREQ_INPUT  = 500;
defparam clk_div_u2.FREQ_OUTPUT = 1;
defparam clk_div_u3.FREQ_INPUT  = 12_000_000;
defparam clk_div_u3.FREQ_OUTPUT = 2_000_000;

//7SEGMENT DISPLAY CONFIG;
reg [11:0] Segment_data;
drv_segment segment_u0(rstn,CLK500Hz,{4'hE,Segment_data},{pio43,pio46,pio47,pio37},{pio40,pio38,pio45,pio42,pio41,pio39,pio48,pio44});
        
//EXTERNAL ADC MCP3202 CONFIG;
// DRV FREQ : 2MHZ;
// CHANNEL : ONLY CHANNEL 0; 
localparam  SINGLE_CHAN0  = 2'b10;
localparam  SINGLE_CHAN1  = 2'b11;

reg adc_ready;
wire adc_vaild;
wire [11:0] adc_data;

drv_mcp3202 drv_mcp3202_u0(
    .rstn(rstn),
    .clk(CLK_ADC),
    .ap_ready(adc_ready),
    .ap_vaild(adc_vaild),
    .mode(SINGLE_CHAN0),
    .data(adc_data),

    .port_din(adc_dout),
    .port_dout(adc_din), //adc_din
    .port_clk(adc_clk),
    .port_cs(adc_csn)
);

// ADC SAMPLING EVENT (FREQ:1HZ)
always @(negedge rstn, posedge adc_vaild,posedge CLK1Hz) begin
    if(!rstn) begin
        adc_ready <= 1'b0;
        Segment_data <= 12'hABC;
    end else begin
        if(adc_vaild) begin
            Segment_data <= adc_data;
            adc_ready <= 1'b0;
        end
        else begin
            adc_ready <= 1'b1;
        end
    end
end

endmodule