`timescale 1ns/1ns
module drv_mcp3202_tb();

reg     rstn;
reg     clk;
reg     ap_ready;
wire    ap_vaild;
reg     [1:0] mode;
wire    [11:0] data;
reg     [11:0] Segment_data;
reg     port_din;
wire    port_dout;
wire    port_clk;
wire    port_cs;
reg     CLK1Hz;

drv_mcp3202 drv_mcp3202_ut(rstn,clk,ap_ready,ap_vaild,mode,data,port_din,port_dout,port_clk,port_cs);        

always #5  clk = ~ clk;
always #200 CLK1Hz = ~ CLK1Hz;

always @(negedge rstn, posedge ap_vaild,posedge CLK1Hz) begin
    if(!rstn) begin
        ap_ready <= 1'b0;
        Segment_data <= 12'habc;
    end else begin
        if(ap_vaild) begin
            Segment_data <= data;
            ap_ready <= 1'b0;
        end
        else begin
            ap_ready <= 1'b1;
        end
    end
end

integer index;
initial begin
    rstn = 0;
    clk = 0;
    ap_ready = 0;
    mode = 2'b00;
    port_din = 1'b0;
    CLK1Hz = 1'b0;
    #10 rstn = 1;
    // #10 ap_ready = 1;
    @(posedge ap_ready);
    #40 ; //Wait Write 40 unit time; 
    for (index = 0; index < 13; index = index + 1) #10 port_din = ($random%2);

    @(posedge ap_ready);
    #40 ; //Wait Write 40 unit time; 
    for (index = 0; index < 13; index = index + 1) #10 port_din = ($random%2);
    #300 $stop;
    #10 $finish;
end

endmodule