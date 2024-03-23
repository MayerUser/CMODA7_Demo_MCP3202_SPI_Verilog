`timescale 1ns / 1ps

module clock_div_tb();

reg rstn;
reg clksrc;
wire clkout;
clock_div clock_div_tb(rstn,clksrc,clkout);
defparam clock_div_tb.FREQ_INPUT = 12_000_000;
defparam clock_div_tb.FREQ_OUTPUT = 1_000_000;

always begin
    #5 clksrc = ~clksrc;
end

initial begin
    clksrc = 0;
    rstn = 0;
    #12
    rstn = 1;         
end

endmodule
