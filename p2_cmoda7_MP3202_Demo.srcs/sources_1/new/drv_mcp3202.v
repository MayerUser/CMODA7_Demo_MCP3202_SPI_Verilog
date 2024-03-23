/*
 * Module: drv_mcp3202
 * Date : 2024/03/21
 * Author : Maoyang
 * Description:
 * This Verilog module implements an SPI interface for the MCP3202 Analog-to-Digital Converter (ADC).
 * It manages the communication process through a finite state machine (FSM) to read analog data and convert it to a digital format.
 * 
 * Inputs:
 * - rstn: Active low reset signal.
 * - clk: Clock signal.
 * - ap_ready: Signal indicating the application is ready for data processing.
 * - mode: 2-bit input to select the ADC channel and configuration.
 *          localparam  SINGLE_CHAN0   = 2'b10; - CHANNEL 0;
 *          localparam  SINGLE_CHAN1   = 2'b11; - CHANNEL 1;
 *          localparam  DIFFER_CHAN01  = 2'b00;  - DIFFERENTIAL CHANNEL 01
 *          localparam  DIFFER_CHAN10  = 2'b01;  - DIFFERENTIAL CHANNEL 10
 * - port_din: Serial data input from the ADC.
 * 
 * Outputs:
 * - ap_vaild: Signal that indicates valid data is available.
 * - data: 12-bit output holding the ADC conversion result.
 * - port_dout: Serial data output to the ADC.
 * - port_clk: Clock signal for the ADC.
 * - port_cs: Chip select signal for the ADC, active low.
 * 
 * Functionality:
 * - The module configures the ADC based on the mode input.
 * - It uses an FSM to control the SPI communication process, including sending control bits, reading the ADC data, and signaling when new data is available.
 * - The ADC conversion result is made available as a 12-bit output.
 * - The module ensures synchronization with the external ADC device through careful management of clock and control signals.
 * 
 * Implementation Details:
 * - The Data_Transmit wire is used to send control signals to the ADC.
 * - The Data_Receive register captures the ADC output.
 * - The FSM transitions through several states (IDLE, WRITE, READ, STOP) to manage the entire data transfer process.
 * - The cnter_writ and cnter_read registers are used to track progress through the transmit and receive phases, respectively.
 */
 
module drv_mcp3202(
    input rstn,
    input clk,
    input   ap_ready,
    output  reg ap_vaild,
    input   [1:0] mode,
    output  [11:0] data,

    input   port_din,
    output  reg port_dout,
    output  port_clk,
    output  reg port_cs
);

wire    [3:0]      Data_Transmit; // 4 bits CONTROL;
reg     [12:0]     Data_Receive;  // 1 bit NULL + 12 bits DATA;

assign Data_Transmit[3]    = 1'b1;
assign Data_Transmit[0]    = 1'b1;
assign Data_Transmit[2:1] = mode;

reg [1:0]   fsm_statu,fsm_next;
localparam FSM_IDLE = 2'b00;
localparam FSM_WRIT = 2'b10;
localparam FSM_READ = 2'b11;
localparam FSM_STOP = 2'b01;

reg [1:0] cnter_writ;
reg [3:0] cnter_read;

//FSM statu transfer;
always @(posedge clk, negedge rstn) begin
    if (!rstn)  fsm_statu <= FSM_IDLE;
    else        fsm_statu <= fsm_next;
end

//FSM Transfer Condition;
always @(*)begin
    if(!rstn) fsm_next <= FSM_IDLE;
    else begin
        case (fsm_statu)
            FSM_IDLE : fsm_next <= (ap_ready)? FSM_WRIT : FSM_IDLE;
            FSM_WRIT : fsm_next <= (2'd0 == cnter_writ)? FSM_READ : FSM_WRIT;
            FSM_READ : fsm_next <= (2'd0 == cnter_read)? FSM_STOP : FSM_READ;
            FSM_STOP : fsm_next <= (!ap_ready)? FSM_STOP : FSM_IDLE;
            default  : fsm_next <= FSM_IDLE;
        endcase
    end
end

//FSM Output - SPI Write Data
always @(negedge rstn,negedge clk)begin
    if (!rstn) begin
        cnter_writ  <= 2'd3;
        port_dout   <= 1'b1;
        port_cs     <= 1'b1;
    end else begin
        case (fsm_statu)
            FSM_IDLE : begin 
                cnter_writ  <= 2'd3;
                port_dout   <= 1'b1;
                port_cs     <= 1'b1;
            end
            FSM_WRIT : begin 
                port_cs     <= 1'b0;
                port_dout   <= Data_Transmit[cnter_writ];
                cnter_writ  <= cnter_writ - 1'b1;
            end
            FSM_READ : begin 
                port_cs     <= 1'b0;
                port_dout   <= 1'b1;
            end
            FSM_STOP : port_cs     <= 1'b1;
            default  : ;
        endcase
    end
end

//FSM Output - SPI Read  Data
always @(negedge rstn,posedge clk)begin
    if (!rstn) begin
        cnter_read  <= 4'd13;
        Data_Receive <= 13'h00;
        ap_vaild = 1'b0;
    end else begin
        case (fsm_statu)
            FSM_IDLE : begin
                ap_vaild = 1'b0; 
                cnter_read  <= 4'd13;
            end
            FSM_WRIT : begin 
                Data_Receive <= 13'h00;
            end
            FSM_READ : begin 
                cnter_read <= cnter_read - 1'b1;
                Data_Receive[cnter_read] <= port_din;
            end
            FSM_STOP : ap_vaild = 1'b1;
            default  : ;
        endcase
    end
end

assign port_clk = clk | port_cs;
assign data = Data_Receive[11:0];

endmodule