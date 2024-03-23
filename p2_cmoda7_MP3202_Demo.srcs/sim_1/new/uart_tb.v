module uart_tb();

reg     clk;
reg     ap_rstn;
reg     ap_ready;
wire    ap_vaild;
wire    tx;
reg [7:0] data;
reg tx_parity;
reg rx_parity;
wire [7:0] data_out;
wire rx_ap_vaild;

uart_tx uart_tx_tb(clk,ap_rstn,ap_ready,ap_vaild,tx,tx_parity,data);
uart_rx uart_rx_tb(clk,ap_rstn,ap_ready,rx_ap_vaild,tx,rx_parity,data_out);

always begin 
    #5 clk = ~clk;
end

initial begin
    // Parity Check Enable;
    clk = 0;
    ap_rstn = 0;
    ap_ready = 0;
    tx_parity = 1;
    rx_parity = 1;
    data = "W";         //Odd Check - 1;
    #10 ap_rstn  = 1;
    #10 ap_ready = 1;
    #250 ;
    #10 ap_ready = 0;
    data = 8'b01111010; //Odd Check - 1;
    #10 ap_ready = 1;
    #250 $stop;

    // Parity Check Disable;
    clk = 0;
    ap_rstn = 0;
    ap_ready = 0;
    tx_parity = 0;
    rx_parity = 0;
    data = 8'b01011010;
    #10 ap_rstn  = 1;
    #10 ap_ready = 1;
    #250 ;
    #10 ap_ready = 0;
    data = 8'b01111010;
    #10 ap_ready = 1;
    #250 $stop;


    // Parity Check Enable - Generate a Error;
    clk = 0;
    ap_rstn = 0;
    ap_ready = 0;
    tx_parity = 0;
    rx_parity = 1;
    data = 8'b01011010;//Odd Check - 0;
    #10 ap_rstn  = 1;
    #10 ap_ready = 1;
    #250 ;
    #10 ap_ready = 0;
    data = 8'b00111010;//Odd Check - 0;
    #10 ap_ready = 1;
    #250 $stop;

    #10 $finish;
end

endmodule