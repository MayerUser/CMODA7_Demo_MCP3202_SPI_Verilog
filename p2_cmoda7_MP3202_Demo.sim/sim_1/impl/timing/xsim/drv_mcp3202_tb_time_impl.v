// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Mar 22 15:52:49 2024
// Host        : Mayer-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/prj_FPGA/p2_cmoda7_MP3202_Demo/p2_cmoda7_MP3202_Demo.sim/sim_1/impl/timing/xsim/drv_mcp3202_tb_time_impl.v
// Design      : top_module
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module clock_div
   (CLK,
    clkout_r_reg_0,
    adc_clk_TRI);
  output CLK;
  input clkout_r_reg_0;
  input adc_clk_TRI;

  wire CLK;
  wire adc_clk_TRI;
  wire clkout_r_i_1__0_n_0;
  wire clkout_r_reg_0;
  wire [13:0]cnter;
  wire cnter0_carry__0_n_0;
  wire cnter0_carry__1_n_0;
  wire cnter0_carry_n_0;
  wire \cnter[13]_i_2_n_0 ;
  wire \cnter[13]_i_3_n_0 ;
  wire \cnter[13]_i_4_n_0 ;
  wire \cnter_reg_n_0_[0] ;
  wire \cnter_reg_n_0_[10] ;
  wire \cnter_reg_n_0_[11] ;
  wire \cnter_reg_n_0_[12] ;
  wire \cnter_reg_n_0_[13] ;
  wire \cnter_reg_n_0_[1] ;
  wire \cnter_reg_n_0_[2] ;
  wire \cnter_reg_n_0_[3] ;
  wire \cnter_reg_n_0_[4] ;
  wire \cnter_reg_n_0_[5] ;
  wire \cnter_reg_n_0_[6] ;
  wire \cnter_reg_n_0_[7] ;
  wire \cnter_reg_n_0_[8] ;
  wire \cnter_reg_n_0_[9] ;
  wire [13:1]data0;
  wire [2:0]NLW_cnter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_cnter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_cnter0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_cnter0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_cnter0_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h9)) 
    clkout_r_i_1__0
       (.I0(\cnter[13]_i_2_n_0 ),
        .I1(CLK),
        .O(clkout_r_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clkout_r_reg
       (.C(clkout_r_reg_0),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(clkout_r_i_1__0_n_0),
        .Q(CLK));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnter0_carry
       (.CI(1'b0),
        .CO({cnter0_carry_n_0,NLW_cnter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\cnter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\cnter_reg_n_0_[4] ,\cnter_reg_n_0_[3] ,\cnter_reg_n_0_[2] ,\cnter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnter0_carry__0
       (.CI(cnter0_carry_n_0),
        .CO({cnter0_carry__0_n_0,NLW_cnter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\cnter_reg_n_0_[8] ,\cnter_reg_n_0_[7] ,\cnter_reg_n_0_[6] ,\cnter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnter0_carry__1
       (.CI(cnter0_carry__0_n_0),
        .CO({cnter0_carry__1_n_0,NLW_cnter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\cnter_reg_n_0_[12] ,\cnter_reg_n_0_[11] ,\cnter_reg_n_0_[10] ,\cnter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnter0_carry__2
       (.CI(cnter0_carry__1_n_0),
        .CO(NLW_cnter0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnter0_carry__2_O_UNCONNECTED[3:1],data0[13]}),
        .S({1'b0,1'b0,1'b0,\cnter_reg_n_0_[13] }));
  LUT1 #(
    .INIT(2'h1)) 
    \cnter[0]_i_1__0 
       (.I0(\cnter_reg_n_0_[0] ),
        .O(cnter[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnter[10]_i_1 
       (.I0(\cnter[13]_i_2_n_0 ),
        .I1(data0[10]),
        .O(cnter[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnter[11]_i_1 
       (.I0(\cnter[13]_i_2_n_0 ),
        .I1(data0[11]),
        .O(cnter[11]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnter[12]_i_1 
       (.I0(\cnter[13]_i_2_n_0 ),
        .I1(data0[12]),
        .O(cnter[12]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnter[13]_i_1 
       (.I0(\cnter[13]_i_2_n_0 ),
        .I1(data0[13]),
        .O(cnter[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \cnter[13]_i_2 
       (.I0(\cnter[13]_i_3_n_0 ),
        .I1(\cnter_reg_n_0_[3] ),
        .I2(\cnter_reg_n_0_[2] ),
        .I3(\cnter_reg_n_0_[4] ),
        .I4(\cnter_reg_n_0_[5] ),
        .I5(\cnter[13]_i_4_n_0 ),
        .O(\cnter[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cnter[13]_i_3 
       (.I0(\cnter_reg_n_0_[7] ),
        .I1(\cnter_reg_n_0_[6] ),
        .I2(\cnter_reg_n_0_[9] ),
        .I3(\cnter_reg_n_0_[8] ),
        .O(\cnter[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \cnter[13]_i_4 
       (.I0(\cnter_reg_n_0_[12] ),
        .I1(\cnter_reg_n_0_[13] ),
        .I2(\cnter_reg_n_0_[10] ),
        .I3(\cnter_reg_n_0_[11] ),
        .I4(\cnter_reg_n_0_[1] ),
        .I5(\cnter_reg_n_0_[0] ),
        .O(\cnter[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnter[1]_i_1__0 
       (.I0(\cnter[13]_i_2_n_0 ),
        .I1(data0[1]),
        .O(cnter[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnter[2]_i_1__0 
       (.I0(\cnter[13]_i_2_n_0 ),
        .I1(data0[2]),
        .O(cnter[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnter[3]_i_1__0 
       (.I0(\cnter[13]_i_2_n_0 ),
        .I1(data0[3]),
        .O(cnter[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnter[4]_i_1 
       (.I0(\cnter[13]_i_2_n_0 ),
        .I1(data0[4]),
        .O(cnter[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnter[5]_i_1 
       (.I0(\cnter[13]_i_2_n_0 ),
        .I1(data0[5]),
        .O(cnter[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnter[6]_i_1 
       (.I0(\cnter[13]_i_2_n_0 ),
        .I1(data0[6]),
        .O(cnter[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnter[7]_i_1 
       (.I0(\cnter[13]_i_2_n_0 ),
        .I1(data0[7]),
        .O(cnter[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnter[8]_i_1 
       (.I0(\cnter[13]_i_2_n_0 ),
        .I1(data0[8]),
        .O(cnter[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnter[9]_i_1 
       (.I0(\cnter[13]_i_2_n_0 ),
        .I1(data0[9]),
        .O(cnter[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[0] 
       (.C(clkout_r_reg_0),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[0]),
        .Q(\cnter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[10] 
       (.C(clkout_r_reg_0),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[10]),
        .Q(\cnter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[11] 
       (.C(clkout_r_reg_0),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[11]),
        .Q(\cnter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[12] 
       (.C(clkout_r_reg_0),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[12]),
        .Q(\cnter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[13] 
       (.C(clkout_r_reg_0),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[13]),
        .Q(\cnter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[1] 
       (.C(clkout_r_reg_0),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[1]),
        .Q(\cnter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[2] 
       (.C(clkout_r_reg_0),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[2]),
        .Q(\cnter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[3] 
       (.C(clkout_r_reg_0),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[3]),
        .Q(\cnter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[4] 
       (.C(clkout_r_reg_0),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[4]),
        .Q(\cnter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[5] 
       (.C(clkout_r_reg_0),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[5]),
        .Q(\cnter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[6] 
       (.C(clkout_r_reg_0),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[6]),
        .Q(\cnter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[7] 
       (.C(clkout_r_reg_0),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[7]),
        .Q(\cnter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[8] 
       (.C(clkout_r_reg_0),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[8]),
        .Q(\cnter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[9] 
       (.C(clkout_r_reg_0),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[9]),
        .Q(\cnter_reg_n_0_[9] ));
endmodule

(* ORIG_REF_NAME = "clock_div" *) 
module clock_div__parameterized0
   (clkout_r,
    CLK,
    adc_clk_TRI);
  output clkout_r;
  input CLK;
  input adc_clk_TRI;

  wire CLK;
  wire adc_clk_TRI;
  wire clkout_r;
  wire clkout_r_i_1__1_n_0;
  wire [7:0]cnter;
  wire \cnter[5]_i_2_n_0 ;
  wire \cnter[5]_i_3_n_0 ;
  wire \cnter[6]_i_2_n_0 ;
  wire \cnter[7]_i_2_n_0 ;
  wire \cnter_reg_n_0_[0] ;
  wire \cnter_reg_n_0_[1] ;
  wire \cnter_reg_n_0_[2] ;
  wire \cnter_reg_n_0_[3] ;
  wire \cnter_reg_n_0_[4] ;
  wire \cnter_reg_n_0_[5] ;
  wire \cnter_reg_n_0_[6] ;
  wire \cnter_reg_n_0_[7] ;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h9)) 
    clkout_r_i_1__1
       (.I0(\cnter[5]_i_2_n_0 ),
        .I1(clkout_r),
        .O(clkout_r_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clkout_r_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(clkout_r_i_1__1_n_0),
        .Q(clkout_r));
  LUT1 #(
    .INIT(2'h1)) 
    \cnter[0]_i_1__1 
       (.I0(\cnter_reg_n_0_[0] ),
        .O(cnter[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnter[1]_i_1__1 
       (.I0(\cnter[5]_i_2_n_0 ),
        .I1(\cnter_reg_n_0_[1] ),
        .I2(\cnter_reg_n_0_[0] ),
        .O(cnter[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \cnter[2]_i_1__1 
       (.I0(\cnter[5]_i_2_n_0 ),
        .I1(\cnter_reg_n_0_[2] ),
        .I2(\cnter_reg_n_0_[0] ),
        .I3(\cnter_reg_n_0_[1] ),
        .O(cnter[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \cnter[3]_i_1__1 
       (.I0(\cnter[5]_i_2_n_0 ),
        .I1(\cnter_reg_n_0_[3] ),
        .I2(\cnter_reg_n_0_[2] ),
        .I3(\cnter_reg_n_0_[1] ),
        .I4(\cnter_reg_n_0_[0] ),
        .O(cnter[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \cnter[4]_i_1__0 
       (.I0(\cnter[5]_i_2_n_0 ),
        .I1(\cnter_reg_n_0_[4] ),
        .I2(\cnter_reg_n_0_[2] ),
        .I3(\cnter_reg_n_0_[1] ),
        .I4(\cnter_reg_n_0_[3] ),
        .I5(\cnter_reg_n_0_[0] ),
        .O(cnter[4]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \cnter[5]_i_1__0 
       (.I0(\cnter[5]_i_2_n_0 ),
        .I1(\cnter_reg_n_0_[5] ),
        .I2(\cnter[5]_i_3_n_0 ),
        .I3(\cnter_reg_n_0_[4] ),
        .I4(\cnter_reg_n_0_[0] ),
        .I5(\cnter_reg_n_0_[3] ),
        .O(cnter[5]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \cnter[5]_i_2 
       (.I0(\cnter_reg_n_0_[1] ),
        .I1(\cnter_reg_n_0_[2] ),
        .I2(\cnter_reg_n_0_[7] ),
        .I3(\cnter[7]_i_2_n_0 ),
        .O(\cnter[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnter[5]_i_3 
       (.I0(\cnter_reg_n_0_[1] ),
        .I1(\cnter_reg_n_0_[2] ),
        .O(\cnter[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCCCC3CC4)) 
    \cnter[6]_i_1__0 
       (.I0(\cnter_reg_n_0_[7] ),
        .I1(\cnter_reg_n_0_[6] ),
        .I2(\cnter_reg_n_0_[2] ),
        .I3(\cnter_reg_n_0_[1] ),
        .I4(\cnter[6]_i_2_n_0 ),
        .O(cnter[6]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnter[6]_i_2 
       (.I0(\cnter_reg_n_0_[4] ),
        .I1(\cnter_reg_n_0_[0] ),
        .I2(\cnter_reg_n_0_[3] ),
        .I3(\cnter_reg_n_0_[5] ),
        .O(\cnter[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA68)) 
    \cnter[7]_i_1__0 
       (.I0(\cnter_reg_n_0_[7] ),
        .I1(\cnter_reg_n_0_[2] ),
        .I2(\cnter_reg_n_0_[1] ),
        .I3(\cnter[7]_i_2_n_0 ),
        .O(cnter[7]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnter[7]_i_2 
       (.I0(\cnter_reg_n_0_[5] ),
        .I1(\cnter_reg_n_0_[3] ),
        .I2(\cnter_reg_n_0_[0] ),
        .I3(\cnter_reg_n_0_[4] ),
        .I4(\cnter_reg_n_0_[6] ),
        .O(\cnter[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[0]),
        .Q(\cnter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[1]),
        .Q(\cnter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[2]),
        .Q(\cnter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[3]),
        .Q(\cnter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[4]),
        .Q(\cnter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[5]),
        .Q(\cnter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[6]),
        .Q(\cnter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[7]),
        .Q(\cnter_reg_n_0_[7] ));
endmodule

(* ORIG_REF_NAME = "clock_div" *) 
module clock_div__parameterized1
   (CLK1MHz,
    adc_clk_OBUF,
    CLK,
    adc_clk_TRI,
    adc_csn_OBUF);
  output CLK1MHz;
  output adc_clk_OBUF;
  input CLK;
  input adc_clk_TRI;
  input adc_csn_OBUF;

  wire CLK;
  wire CLK1MHz;
  wire adc_clk_OBUF;
  wire adc_clk_TRI;
  wire adc_csn_OBUF;
  wire clkout_r_i_1_n_0;
  wire clkout_r_n_0;
  wire [5:1]cnter;
  wire \cnter[0]_i_1__2_n_0 ;
  wire \cnter_reg_n_0_[0] ;
  wire \cnter_reg_n_0_[1] ;
  wire \cnter_reg_n_0_[2] ;
  wire \cnter_reg_n_0_[3] ;
  wire \cnter_reg_n_0_[4] ;
  wire \cnter_reg_n_0_[5] ;

  LUT2 #(
    .INIT(4'hE)) 
    adc_clk_OBUFT_inst_i_1
       (.I0(CLK1MHz),
        .I1(adc_csn_OBUF),
        .O(adc_clk_OBUF));
  LUT2 #(
    .INIT(4'h7)) 
    clkout_r
       (.I0(\cnter_reg_n_0_[0] ),
        .I1(\cnter_reg_n_0_[1] ),
        .O(clkout_r_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00004000)) 
    clkout_r_i_1
       (.I0(clkout_r_n_0),
        .I1(\cnter_reg_n_0_[3] ),
        .I2(\cnter_reg_n_0_[4] ),
        .I3(\cnter_reg_n_0_[5] ),
        .I4(\cnter_reg_n_0_[2] ),
        .I5(CLK1MHz),
        .O(clkout_r_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clkout_r_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(clkout_r_i_1_n_0),
        .Q(CLK1MHz));
  LUT1 #(
    .INIT(2'h1)) 
    \cnter[0]_i_1__2 
       (.I0(\cnter_reg_n_0_[0] ),
        .O(\cnter[0]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnter[1]_i_1 
       (.I0(\cnter_reg_n_0_[0] ),
        .I1(\cnter_reg_n_0_[1] ),
        .O(cnter[1]));
  LUT6 #(
    .INIT(64'h5F205FA05FA05FA0)) 
    \cnter[2]_i_1 
       (.I0(\cnter_reg_n_0_[0] ),
        .I1(\cnter_reg_n_0_[3] ),
        .I2(\cnter_reg_n_0_[1] ),
        .I3(\cnter_reg_n_0_[2] ),
        .I4(\cnter_reg_n_0_[4] ),
        .I5(\cnter_reg_n_0_[5] ),
        .O(cnter[2]));
  LUT6 #(
    .INIT(64'h6C4C6CCC6CCC6CCC)) 
    \cnter[3]_i_1 
       (.I0(\cnter_reg_n_0_[0] ),
        .I1(\cnter_reg_n_0_[3] ),
        .I2(\cnter_reg_n_0_[1] ),
        .I3(\cnter_reg_n_0_[2] ),
        .I4(\cnter_reg_n_0_[4] ),
        .I5(\cnter_reg_n_0_[5] ),
        .O(cnter[3]));
  LUT6 #(
    .INIT(64'h7F7F80007FFF8000)) 
    \cnter[4]_i_1 
       (.I0(\cnter_reg_n_0_[0] ),
        .I1(\cnter_reg_n_0_[3] ),
        .I2(\cnter_reg_n_0_[1] ),
        .I3(\cnter_reg_n_0_[2] ),
        .I4(\cnter_reg_n_0_[4] ),
        .I5(\cnter_reg_n_0_[5] ),
        .O(cnter[4]));
  LUT6 #(
    .INIT(64'h7F7FFFFF80000000)) 
    \cnter[5]_i_1 
       (.I0(\cnter_reg_n_0_[0] ),
        .I1(\cnter_reg_n_0_[3] ),
        .I2(\cnter_reg_n_0_[1] ),
        .I3(\cnter_reg_n_0_[2] ),
        .I4(\cnter_reg_n_0_[4] ),
        .I5(\cnter_reg_n_0_[5] ),
        .O(cnter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\cnter[0]_i_1__2_n_0 ),
        .Q(\cnter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[1]),
        .Q(\cnter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[2]),
        .Q(\cnter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[3]),
        .Q(\cnter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[4]),
        .Q(\cnter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(cnter[5]),
        .Q(\cnter_reg_n_0_[5] ));
endmodule

module drv_mcp3202
   (adc_din_OBUF,
    led_OBUF,
    adc_csn_OBUF,
    ap_vaild_reg_0,
    ap_vaild_reg_1,
    ap_vaild_reg_2,
    ap_vaild_reg_3,
    ap_vaild_reg_4,
    ap_vaild_reg_5,
    ap_vaild_reg_6,
    ap_vaild_reg_7,
    ap_vaild_reg_8,
    \data_reg[0]_0 ,
    \data_reg[1]_0 ,
    \data_reg[6]_0 ,
    \data_reg[8]_0 ,
    \data_reg[10]_0 ,
    ap_vaild_reg_9,
    ap_vaild_reg_10,
    ap_vaild_reg_11,
    ap_vaild_reg_12,
    ap_vaild_reg_13,
    ap_vaild_reg_14,
    \data_reg[10]_1 ,
    \data_reg[8]_1 ,
    \data_reg[6]_1 ,
    \data_reg[1]_1 ,
    \data_reg[0]_1 ,
    CLK,
    adc_clk_TRI,
    adc_ready,
    pio20_OBUF);
  output adc_din_OBUF;
  output [0:0]led_OBUF;
  output adc_csn_OBUF;
  output ap_vaild_reg_0;
  output ap_vaild_reg_1;
  output ap_vaild_reg_2;
  output ap_vaild_reg_3;
  output ap_vaild_reg_4;
  output ap_vaild_reg_5;
  output ap_vaild_reg_6;
  output ap_vaild_reg_7;
  output ap_vaild_reg_8;
  output \data_reg[0]_0 ;
  output \data_reg[1]_0 ;
  output \data_reg[6]_0 ;
  output \data_reg[8]_0 ;
  output \data_reg[10]_0 ;
  output ap_vaild_reg_9;
  output ap_vaild_reg_10;
  output ap_vaild_reg_11;
  output ap_vaild_reg_12;
  output ap_vaild_reg_13;
  output ap_vaild_reg_14;
  output \data_reg[10]_1 ;
  output \data_reg[8]_1 ;
  output \data_reg[6]_1 ;
  output \data_reg[1]_1 ;
  output \data_reg[0]_1 ;
  input CLK;
  input adc_clk_TRI;
  input adc_ready;
  input pio20_OBUF;

  wire CLK;
  wire [11:0]Data_Receive;
  wire \Data_Receive[0]_i_1_n_0 ;
  wire \Data_Receive[10]_i_1_n_0 ;
  wire \Data_Receive[10]_i_2_n_0 ;
  wire \Data_Receive[11]_i_1_n_0 ;
  wire \Data_Receive[11]_i_2_n_0 ;
  wire \Data_Receive[11]_i_3_n_0 ;
  wire \Data_Receive[11]_i_4_n_0 ;
  wire \Data_Receive[1]_i_1_n_0 ;
  wire \Data_Receive[2]_i_1_n_0 ;
  wire \Data_Receive[3]_i_1_n_0 ;
  wire \Data_Receive[3]_i_2_n_0 ;
  wire \Data_Receive[4]_i_1_n_0 ;
  wire \Data_Receive[5]_i_1_n_0 ;
  wire \Data_Receive[6]_i_1_n_0 ;
  wire \Data_Receive[7]_i_1_n_0 ;
  wire \Data_Receive[7]_i_2_n_0 ;
  wire \Data_Receive[8]_i_1_n_0 ;
  wire \Data_Receive[8]_i_2_n_0 ;
  wire \Data_Receive[9]_i_1_n_0 ;
  wire \Data_Receive[9]_i_2_n_0 ;
  wire \FSM_sequential_fsm_statu[0]_i_1_n_0 ;
  wire \FSM_sequential_fsm_statu[0]_i_2_n_0 ;
  wire \FSM_sequential_fsm_statu[0]_i_3_n_0 ;
  wire \FSM_sequential_fsm_statu[1]_i_1_n_0 ;
  wire \FSM_sequential_fsm_statu[1]_i_2_n_0 ;
  wire \FSM_sequential_fsm_statu[2]_inv_i_1_n_0 ;
  wire adc_clk_TRI;
  wire adc_csn_OBUF;
  wire adc_din_OBUF;
  wire adc_ready;
  wire ap_vaild_i_1_n_0;
  wire ap_vaild_reg_0;
  wire ap_vaild_reg_1;
  wire ap_vaild_reg_10;
  wire ap_vaild_reg_11;
  wire ap_vaild_reg_12;
  wire ap_vaild_reg_13;
  wire ap_vaild_reg_14;
  wire ap_vaild_reg_2;
  wire ap_vaild_reg_3;
  wire ap_vaild_reg_4;
  wire ap_vaild_reg_5;
  wire ap_vaild_reg_6;
  wire ap_vaild_reg_7;
  wire ap_vaild_reg_8;
  wire ap_vaild_reg_9;
  wire [3:0]cnter;
  wire \cnter[3]_i_2_n_0 ;
  wire \cnter[4]_i_1__1_n_0 ;
  wire \cnter[4]_i_2_n_0 ;
  wire \cnter[4]_i_3_n_0 ;
  wire [4:0]cnter_neg;
  wire \cnter_neg_reg_n_0_[0] ;
  wire \cnter_neg_reg_n_0_[1] ;
  wire \cnter_neg_reg_n_0_[2] ;
  wire \cnter_neg_reg_n_0_[3] ;
  wire \cnter_neg_reg_n_0_[4] ;
  wire \cnter_reg_n_0_[0] ;
  wire \cnter_reg_n_0_[1] ;
  wire \cnter_reg_n_0_[2] ;
  wire \cnter_reg_n_0_[3] ;
  wire \cnter_reg_n_0_[4] ;
  wire [11:0]data;
  wire [11:0]data0_in;
  wire \data[11]_i_1_n_0 ;
  wire \data_reg[0]_0 ;
  wire \data_reg[0]_1 ;
  wire \data_reg[10]_0 ;
  wire \data_reg[10]_1 ;
  wire \data_reg[1]_0 ;
  wire \data_reg[1]_1 ;
  wire \data_reg[6]_0 ;
  wire \data_reg[6]_1 ;
  wire \data_reg[8]_0 ;
  wire \data_reg[8]_1 ;
  wire [2:0]fsm_statu;
  wire [0:0]led_OBUF;
  wire pio20_OBUF;
  wire port_cs_i_1_n_0;
  wire port_dout_i_1_n_0;

  LUT6 #(
    .INIT(64'hFFFBF3F300080000)) 
    \Data_Receive[0]_i_1 
       (.I0(pio20_OBUF),
        .I1(fsm_statu[2]),
        .I2(fsm_statu[0]),
        .I3(\FSM_sequential_fsm_statu[0]_i_3_n_0 ),
        .I4(fsm_statu[1]),
        .I5(Data_Receive[0]),
        .O(\Data_Receive[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF333300800000)) 
    \Data_Receive[10]_i_1 
       (.I0(pio20_OBUF),
        .I1(\Data_Receive[11]_i_2_n_0 ),
        .I2(\Data_Receive[10]_i_2_n_0 ),
        .I3(\Data_Receive[11]_i_4_n_0 ),
        .I4(fsm_statu[1]),
        .I5(Data_Receive[10]),
        .O(\Data_Receive[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Data_Receive[10]_i_2 
       (.I0(\cnter_neg_reg_n_0_[1] ),
        .I1(\cnter_neg_reg_n_0_[0] ),
        .O(\Data_Receive[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF333300800000)) 
    \Data_Receive[11]_i_1 
       (.I0(pio20_OBUF),
        .I1(\Data_Receive[11]_i_2_n_0 ),
        .I2(\Data_Receive[11]_i_3_n_0 ),
        .I3(\Data_Receive[11]_i_4_n_0 ),
        .I4(fsm_statu[1]),
        .I5(Data_Receive[11]),
        .O(\Data_Receive[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \Data_Receive[11]_i_2 
       (.I0(fsm_statu[0]),
        .I1(fsm_statu[2]),
        .O(\Data_Receive[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Data_Receive[11]_i_3 
       (.I0(\cnter_neg_reg_n_0_[0] ),
        .I1(\cnter_neg_reg_n_0_[1] ),
        .O(\Data_Receive[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFABFD)) 
    \Data_Receive[11]_i_4 
       (.I0(\cnter_neg_reg_n_0_[3] ),
        .I1(\cnter_neg_reg_n_0_[0] ),
        .I2(\cnter_neg_reg_n_0_[1] ),
        .I3(\cnter_neg_reg_n_0_[2] ),
        .I4(\cnter_neg_reg_n_0_[4] ),
        .O(\Data_Receive[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF333300800000)) 
    \Data_Receive[1]_i_1 
       (.I0(pio20_OBUF),
        .I1(\Data_Receive[11]_i_2_n_0 ),
        .I2(\Data_Receive[9]_i_2_n_0 ),
        .I3(\Data_Receive[3]_i_2_n_0 ),
        .I4(fsm_statu[1]),
        .I5(Data_Receive[1]),
        .O(\Data_Receive[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF333300800000)) 
    \Data_Receive[2]_i_1 
       (.I0(pio20_OBUF),
        .I1(\Data_Receive[11]_i_2_n_0 ),
        .I2(\Data_Receive[10]_i_2_n_0 ),
        .I3(\Data_Receive[3]_i_2_n_0 ),
        .I4(fsm_statu[1]),
        .I5(Data_Receive[2]),
        .O(\Data_Receive[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF333300800000)) 
    \Data_Receive[3]_i_1 
       (.I0(pio20_OBUF),
        .I1(\Data_Receive[11]_i_2_n_0 ),
        .I2(\Data_Receive[11]_i_3_n_0 ),
        .I3(\Data_Receive[3]_i_2_n_0 ),
        .I4(fsm_statu[1]),
        .I5(Data_Receive[3]),
        .O(\Data_Receive[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFBFFFFD)) 
    \Data_Receive[3]_i_2 
       (.I0(\cnter_neg_reg_n_0_[4] ),
        .I1(\cnter_neg_reg_n_0_[0] ),
        .I2(\cnter_neg_reg_n_0_[3] ),
        .I3(\cnter_neg_reg_n_0_[1] ),
        .I4(\cnter_neg_reg_n_0_[2] ),
        .O(\Data_Receive[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFB333300080000)) 
    \Data_Receive[4]_i_1 
       (.I0(pio20_OBUF),
        .I1(\Data_Receive[11]_i_2_n_0 ),
        .I2(\Data_Receive[8]_i_2_n_0 ),
        .I3(\Data_Receive[7]_i_2_n_0 ),
        .I4(fsm_statu[1]),
        .I5(Data_Receive[4]),
        .O(\Data_Receive[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF333300800000)) 
    \Data_Receive[5]_i_1 
       (.I0(pio20_OBUF),
        .I1(\Data_Receive[11]_i_2_n_0 ),
        .I2(\Data_Receive[9]_i_2_n_0 ),
        .I3(\Data_Receive[7]_i_2_n_0 ),
        .I4(fsm_statu[1]),
        .I5(Data_Receive[5]),
        .O(\Data_Receive[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF333300800000)) 
    \Data_Receive[6]_i_1 
       (.I0(pio20_OBUF),
        .I1(\Data_Receive[11]_i_2_n_0 ),
        .I2(\Data_Receive[10]_i_2_n_0 ),
        .I3(\Data_Receive[7]_i_2_n_0 ),
        .I4(fsm_statu[1]),
        .I5(Data_Receive[6]),
        .O(\Data_Receive[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF333300800000)) 
    \Data_Receive[7]_i_1 
       (.I0(pio20_OBUF),
        .I1(\Data_Receive[11]_i_2_n_0 ),
        .I2(\Data_Receive[11]_i_3_n_0 ),
        .I3(\Data_Receive[7]_i_2_n_0 ),
        .I4(fsm_statu[1]),
        .I5(Data_Receive[7]),
        .O(\Data_Receive[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFBBBBF)) 
    \Data_Receive[7]_i_2 
       (.I0(\cnter_neg_reg_n_0_[4] ),
        .I1(\cnter_neg_reg_n_0_[3] ),
        .I2(\cnter_neg_reg_n_0_[0] ),
        .I3(\cnter_neg_reg_n_0_[1] ),
        .I4(\cnter_neg_reg_n_0_[2] ),
        .O(\Data_Receive[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFB333300080000)) 
    \Data_Receive[8]_i_1 
       (.I0(pio20_OBUF),
        .I1(\Data_Receive[11]_i_2_n_0 ),
        .I2(\Data_Receive[8]_i_2_n_0 ),
        .I3(\Data_Receive[11]_i_4_n_0 ),
        .I4(fsm_statu[1]),
        .I5(Data_Receive[8]),
        .O(\Data_Receive[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \Data_Receive[8]_i_2 
       (.I0(\cnter_neg_reg_n_0_[0] ),
        .I1(\cnter_neg_reg_n_0_[1] ),
        .O(\Data_Receive[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBF333300800000)) 
    \Data_Receive[9]_i_1 
       (.I0(pio20_OBUF),
        .I1(\Data_Receive[11]_i_2_n_0 ),
        .I2(\Data_Receive[9]_i_2_n_0 ),
        .I3(\Data_Receive[11]_i_4_n_0 ),
        .I4(fsm_statu[1]),
        .I5(Data_Receive[9]),
        .O(\Data_Receive[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Receive[9]_i_2 
       (.I0(\cnter_neg_reg_n_0_[0] ),
        .I1(\cnter_neg_reg_n_0_[1] ),
        .O(\Data_Receive[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Data_Receive_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\Data_Receive[0]_i_1_n_0 ),
        .Q(Data_Receive[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_Receive_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\Data_Receive[10]_i_1_n_0 ),
        .Q(Data_Receive[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_Receive_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\Data_Receive[11]_i_1_n_0 ),
        .Q(Data_Receive[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_Receive_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\Data_Receive[1]_i_1_n_0 ),
        .Q(Data_Receive[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_Receive_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\Data_Receive[2]_i_1_n_0 ),
        .Q(Data_Receive[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_Receive_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\Data_Receive[3]_i_1_n_0 ),
        .Q(Data_Receive[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_Receive_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\Data_Receive[4]_i_1_n_0 ),
        .Q(Data_Receive[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_Receive_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\Data_Receive[5]_i_1_n_0 ),
        .Q(Data_Receive[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_Receive_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\Data_Receive[6]_i_1_n_0 ),
        .Q(Data_Receive[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_Receive_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\Data_Receive[7]_i_1_n_0 ),
        .Q(Data_Receive[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_Receive_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\Data_Receive[8]_i_1_n_0 ),
        .Q(Data_Receive[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Data_Receive_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\Data_Receive[9]_i_1_n_0 ),
        .Q(Data_Receive[9]));
  LUT6 #(
    .INIT(64'h00002A0822222A08)) 
    \FSM_sequential_fsm_statu[0]_i_1 
       (.I0(\FSM_sequential_fsm_statu[0]_i_2_n_0 ),
        .I1(fsm_statu[1]),
        .I2(\FSM_sequential_fsm_statu[0]_i_3_n_0 ),
        .I3(adc_ready),
        .I4(fsm_statu[0]),
        .I5(\FSM_sequential_fsm_statu[1]_i_2_n_0 ),
        .O(\FSM_sequential_fsm_statu[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_fsm_statu[0]_i_2 
       (.I0(fsm_statu[2]),
        .I1(adc_clk_TRI),
        .O(\FSM_sequential_fsm_statu[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \FSM_sequential_fsm_statu[0]_i_3 
       (.I0(\cnter_neg_reg_n_0_[4] ),
        .I1(\cnter_neg_reg_n_0_[0] ),
        .I2(\cnter_neg_reg_n_0_[3] ),
        .I3(\cnter_neg_reg_n_0_[1] ),
        .I4(\cnter_neg_reg_n_0_[2] ),
        .O(\FSM_sequential_fsm_statu[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h04400040)) 
    \FSM_sequential_fsm_statu[1]_i_1 
       (.I0(adc_clk_TRI),
        .I1(fsm_statu[2]),
        .I2(fsm_statu[1]),
        .I3(fsm_statu[0]),
        .I4(\FSM_sequential_fsm_statu[1]_i_2_n_0 ),
        .O(\FSM_sequential_fsm_statu[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \FSM_sequential_fsm_statu[1]_i_2 
       (.I0(\cnter_reg_n_0_[1] ),
        .I1(\cnter_reg_n_0_[0] ),
        .I2(\cnter_reg_n_0_[2] ),
        .I3(\cnter_reg_n_0_[4] ),
        .I4(\cnter_reg_n_0_[3] ),
        .O(\FSM_sequential_fsm_statu[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFEBFFF)) 
    \FSM_sequential_fsm_statu[2]_inv_i_1 
       (.I0(adc_clk_TRI),
        .I1(fsm_statu[0]),
        .I2(fsm_statu[2]),
        .I3(fsm_statu[1]),
        .I4(adc_ready),
        .O(\FSM_sequential_fsm_statu[2]_inv_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "FSM_WRIT:001,FSM_READ:010,FSM_STOP:011,FSM_VAID:100,FSM_IDLE:000" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_fsm_statu_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\FSM_sequential_fsm_statu[0]_i_1_n_0 ),
        .Q(fsm_statu[0]));
  (* FSM_ENCODED_STATES = "FSM_WRIT:001,FSM_READ:010,FSM_STOP:011,FSM_VAID:100,FSM_IDLE:000" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_fsm_statu_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\FSM_sequential_fsm_statu[1]_i_1_n_0 ),
        .Q(fsm_statu[1]));
  (* FSM_ENCODED_STATES = "FSM_WRIT:001,FSM_READ:010,FSM_STOP:011,FSM_VAID:100,FSM_IDLE:000" *) 
  (* inverted = "yes" *) 
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_fsm_statu_reg[2]_inv 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_fsm_statu[2]_inv_i_1_n_0 ),
        .PRE(adc_clk_TRI),
        .Q(fsm_statu[2]));
  LUT3 #(
    .INIT(8'h08)) 
    \Segment_data_reg[0]_LDC_i_1 
       (.I0(data[0]),
        .I1(led_OBUF),
        .I2(adc_clk_TRI),
        .O(\data_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \Segment_data_reg[0]_LDC_i_2 
       (.I0(adc_clk_TRI),
        .I1(data[0]),
        .I2(led_OBUF),
        .O(\data_reg[0]_1 ));
  LUT3 #(
    .INIT(8'h08)) 
    \Segment_data_reg[10]_LDC_i_1 
       (.I0(data[10]),
        .I1(led_OBUF),
        .I2(adc_clk_TRI),
        .O(\data_reg[10]_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \Segment_data_reg[10]_LDC_i_2 
       (.I0(adc_clk_TRI),
        .I1(data[10]),
        .I2(led_OBUF),
        .O(\data_reg[10]_1 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \Segment_data_reg[11]_LDC_i_1 
       (.I0(led_OBUF),
        .I1(data[11]),
        .I2(adc_clk_TRI),
        .O(ap_vaild_reg_7));
  LUT3 #(
    .INIT(8'h02)) 
    \Segment_data_reg[11]_LDC_i_2 
       (.I0(led_OBUF),
        .I1(data[11]),
        .I2(adc_clk_TRI),
        .O(ap_vaild_reg_8));
  LUT3 #(
    .INIT(8'h08)) 
    \Segment_data_reg[1]_LDC_i_1 
       (.I0(data[1]),
        .I1(led_OBUF),
        .I2(adc_clk_TRI),
        .O(\data_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \Segment_data_reg[1]_LDC_i_2 
       (.I0(adc_clk_TRI),
        .I1(data[1]),
        .I2(led_OBUF),
        .O(\data_reg[1]_1 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \Segment_data_reg[2]_LDC_i_1 
       (.I0(led_OBUF),
        .I1(data[2]),
        .I2(adc_clk_TRI),
        .O(ap_vaild_reg_1));
  LUT3 #(
    .INIT(8'h02)) 
    \Segment_data_reg[2]_LDC_i_2 
       (.I0(led_OBUF),
        .I1(data[2]),
        .I2(adc_clk_TRI),
        .O(ap_vaild_reg_14));
  LUT3 #(
    .INIT(8'hF8)) 
    \Segment_data_reg[3]_LDC_i_1 
       (.I0(led_OBUF),
        .I1(data[3]),
        .I2(adc_clk_TRI),
        .O(ap_vaild_reg_2));
  LUT3 #(
    .INIT(8'h02)) 
    \Segment_data_reg[3]_LDC_i_2 
       (.I0(led_OBUF),
        .I1(data[3]),
        .I2(adc_clk_TRI),
        .O(ap_vaild_reg_13));
  LUT3 #(
    .INIT(8'hF8)) 
    \Segment_data_reg[4]_LDC_i_1 
       (.I0(led_OBUF),
        .I1(data[4]),
        .I2(adc_clk_TRI),
        .O(ap_vaild_reg_3));
  LUT3 #(
    .INIT(8'h02)) 
    \Segment_data_reg[4]_LDC_i_2 
       (.I0(led_OBUF),
        .I1(data[4]),
        .I2(adc_clk_TRI),
        .O(ap_vaild_reg_12));
  LUT3 #(
    .INIT(8'hF8)) 
    \Segment_data_reg[5]_LDC_i_1 
       (.I0(led_OBUF),
        .I1(data[5]),
        .I2(adc_clk_TRI),
        .O(ap_vaild_reg_4));
  LUT3 #(
    .INIT(8'h02)) 
    \Segment_data_reg[5]_LDC_i_2 
       (.I0(led_OBUF),
        .I1(data[5]),
        .I2(adc_clk_TRI),
        .O(ap_vaild_reg_11));
  LUT3 #(
    .INIT(8'h08)) 
    \Segment_data_reg[6]_LDC_i_1 
       (.I0(data[6]),
        .I1(led_OBUF),
        .I2(adc_clk_TRI),
        .O(\data_reg[6]_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \Segment_data_reg[6]_LDC_i_2 
       (.I0(adc_clk_TRI),
        .I1(data[6]),
        .I2(led_OBUF),
        .O(\data_reg[6]_1 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \Segment_data_reg[7]_LDC_i_1 
       (.I0(led_OBUF),
        .I1(data[7]),
        .I2(adc_clk_TRI),
        .O(ap_vaild_reg_5));
  LUT3 #(
    .INIT(8'h02)) 
    \Segment_data_reg[7]_LDC_i_2 
       (.I0(led_OBUF),
        .I1(data[7]),
        .I2(adc_clk_TRI),
        .O(ap_vaild_reg_10));
  LUT3 #(
    .INIT(8'h08)) 
    \Segment_data_reg[8]_LDC_i_1 
       (.I0(data[8]),
        .I1(led_OBUF),
        .I2(adc_clk_TRI),
        .O(\data_reg[8]_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \Segment_data_reg[8]_LDC_i_2 
       (.I0(adc_clk_TRI),
        .I1(data[8]),
        .I2(led_OBUF),
        .O(\data_reg[8]_1 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \Segment_data_reg[9]_LDC_i_1 
       (.I0(led_OBUF),
        .I1(data[9]),
        .I2(adc_clk_TRI),
        .O(ap_vaild_reg_6));
  LUT3 #(
    .INIT(8'h02)) 
    \Segment_data_reg[9]_LDC_i_2 
       (.I0(led_OBUF),
        .I1(data[9]),
        .I2(adc_clk_TRI),
        .O(ap_vaild_reg_9));
  LUT2 #(
    .INIT(4'hE)) 
    adc_ready_i_1
       (.I0(adc_clk_TRI),
        .I1(led_OBUF),
        .O(ap_vaild_reg_0));
  LUT4 #(
    .INIT(16'hFD01)) 
    ap_vaild_i_1
       (.I0(fsm_statu[2]),
        .I1(fsm_statu[1]),
        .I2(fsm_statu[0]),
        .I3(led_OBUF),
        .O(ap_vaild_i_1_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    ap_vaild_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(ap_vaild_i_1_n_0),
        .Q(led_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \cnter[0]_i_1 
       (.I0(\cnter_reg_n_0_[0] ),
        .I1(fsm_statu[1]),
        .I2(fsm_statu[0]),
        .O(cnter[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6660)) 
    \cnter[1]_i_1 
       (.I0(\cnter_reg_n_0_[1] ),
        .I1(\cnter_reg_n_0_[0] ),
        .I2(fsm_statu[1]),
        .I3(fsm_statu[0]),
        .O(cnter[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h6A6A6A00)) 
    \cnter[2]_i_1 
       (.I0(\cnter_reg_n_0_[2] ),
        .I1(\cnter_reg_n_0_[1] ),
        .I2(\cnter_reg_n_0_[0] ),
        .I3(fsm_statu[0]),
        .I4(fsm_statu[1]),
        .O(cnter[2]));
  LUT5 #(
    .INIT(32'h00007F80)) 
    \cnter[3]_i_1 
       (.I0(\cnter_reg_n_0_[0] ),
        .I1(\cnter_reg_n_0_[1] ),
        .I2(\cnter_reg_n_0_[2] ),
        .I3(\cnter_reg_n_0_[3] ),
        .I4(\cnter[3]_i_2_n_0 ),
        .O(cnter[3]));
  LUT3 #(
    .INIT(8'h57)) 
    \cnter[3]_i_2 
       (.I0(fsm_statu[2]),
        .I1(fsm_statu[0]),
        .I2(fsm_statu[1]),
        .O(\cnter[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \cnter[4]_i_1__1 
       (.I0(fsm_statu[2]),
        .I1(fsm_statu[0]),
        .I2(fsm_statu[1]),
        .O(\cnter[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hA6A6A600)) 
    \cnter[4]_i_2 
       (.I0(\cnter_reg_n_0_[4] ),
        .I1(\cnter_reg_n_0_[3] ),
        .I2(\cnter[4]_i_3_n_0 ),
        .I3(fsm_statu[1]),
        .I4(fsm_statu[0]),
        .O(\cnter[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \cnter[4]_i_3 
       (.I0(\cnter_reg_n_0_[2] ),
        .I1(\cnter_reg_n_0_[1] ),
        .I2(\cnter_reg_n_0_[0] ),
        .O(\cnter[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \cnter_neg[0]_i_1 
       (.I0(\cnter_reg_n_0_[0] ),
        .I1(fsm_statu[1]),
        .I2(fsm_statu[0]),
        .O(cnter_neg[0]));
  LUT3 #(
    .INIT(8'hA8)) 
    \cnter_neg[1]_i_1 
       (.I0(\cnter_reg_n_0_[1] ),
        .I1(fsm_statu[1]),
        .I2(fsm_statu[0]),
        .O(cnter_neg[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \cnter_neg[2]_i_1 
       (.I0(\cnter_reg_n_0_[2] ),
        .I1(fsm_statu[1]),
        .I2(fsm_statu[0]),
        .O(cnter_neg[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \cnter_neg[3]_i_1 
       (.I0(\cnter_reg_n_0_[3] ),
        .I1(fsm_statu[1]),
        .I2(fsm_statu[0]),
        .O(cnter_neg[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \cnter_neg[4]_i_1 
       (.I0(\cnter_reg_n_0_[4] ),
        .I1(fsm_statu[1]),
        .I2(fsm_statu[0]),
        .O(cnter_neg[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnter_neg_reg[0] 
       (.C(CLK),
        .CE(\cnter[4]_i_1__1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(cnter_neg[0]),
        .Q(\cnter_neg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnter_neg_reg[1] 
       (.C(CLK),
        .CE(\cnter[4]_i_1__1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(cnter_neg[1]),
        .Q(\cnter_neg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnter_neg_reg[2] 
       (.C(CLK),
        .CE(\cnter[4]_i_1__1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(cnter_neg[2]),
        .Q(\cnter_neg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnter_neg_reg[3] 
       (.C(CLK),
        .CE(\cnter[4]_i_1__1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(cnter_neg[3]),
        .Q(\cnter_neg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnter_neg_reg[4] 
       (.C(CLK),
        .CE(\cnter[4]_i_1__1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(cnter_neg[4]),
        .Q(\cnter_neg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnter_reg[0] 
       (.C(CLK),
        .CE(\cnter[4]_i_1__1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(cnter[0]),
        .Q(\cnter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnter_reg[1] 
       (.C(CLK),
        .CE(\cnter[4]_i_1__1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(cnter[1]),
        .Q(\cnter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnter_reg[2] 
       (.C(CLK),
        .CE(\cnter[4]_i_1__1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(cnter[2]),
        .Q(\cnter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnter_reg[3] 
       (.C(CLK),
        .CE(\cnter[4]_i_1__1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(cnter[3]),
        .Q(\cnter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \cnter_reg[4] 
       (.C(CLK),
        .CE(\cnter[4]_i_1__1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(\cnter[4]_i_2_n_0 ),
        .Q(\cnter_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[0]_i_1 
       (.I0(Data_Receive[0]),
        .I1(fsm_statu[1]),
        .O(data0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[10]_i_1 
       (.I0(Data_Receive[10]),
        .I1(fsm_statu[1]),
        .O(data0_in[10]));
  LUT3 #(
    .INIT(8'h82)) 
    \data[11]_i_1 
       (.I0(fsm_statu[2]),
        .I1(fsm_statu[1]),
        .I2(fsm_statu[0]),
        .O(\data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[11]_i_2 
       (.I0(Data_Receive[11]),
        .I1(fsm_statu[1]),
        .O(data0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[1]_i_1 
       (.I0(Data_Receive[1]),
        .I1(fsm_statu[1]),
        .O(data0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[2]_i_1 
       (.I0(Data_Receive[2]),
        .I1(fsm_statu[1]),
        .O(data0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[3]_i_1 
       (.I0(Data_Receive[3]),
        .I1(fsm_statu[1]),
        .O(data0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[4]_i_1 
       (.I0(Data_Receive[4]),
        .I1(fsm_statu[1]),
        .O(data0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[5]_i_1 
       (.I0(Data_Receive[5]),
        .I1(fsm_statu[1]),
        .O(data0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[6]_i_1 
       (.I0(Data_Receive[6]),
        .I1(fsm_statu[1]),
        .O(data0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[7]_i_1 
       (.I0(Data_Receive[7]),
        .I1(fsm_statu[1]),
        .O(data0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[8]_i_1 
       (.I0(Data_Receive[8]),
        .I1(fsm_statu[1]),
        .O(data0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data[9]_i_1 
       (.I0(Data_Receive[9]),
        .I1(fsm_statu[1]),
        .O(data0_in[9]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[0] 
       (.C(CLK),
        .CE(\data[11]_i_1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(data0_in[0]),
        .Q(data[0]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[10] 
       (.C(CLK),
        .CE(\data[11]_i_1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(data0_in[10]),
        .Q(data[10]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[11] 
       (.C(CLK),
        .CE(\data[11]_i_1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(data0_in[11]),
        .Q(data[11]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[1] 
       (.C(CLK),
        .CE(\data[11]_i_1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(data0_in[1]),
        .Q(data[1]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[2] 
       (.C(CLK),
        .CE(\data[11]_i_1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(data0_in[2]),
        .Q(data[2]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[3] 
       (.C(CLK),
        .CE(\data[11]_i_1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(data0_in[3]),
        .Q(data[3]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[4] 
       (.C(CLK),
        .CE(\data[11]_i_1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(data0_in[4]),
        .Q(data[4]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[5] 
       (.C(CLK),
        .CE(\data[11]_i_1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(data0_in[5]),
        .Q(data[5]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[6] 
       (.C(CLK),
        .CE(\data[11]_i_1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(data0_in[6]),
        .Q(data[6]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[7] 
       (.C(CLK),
        .CE(\data[11]_i_1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(data0_in[7]),
        .Q(data[7]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[8] 
       (.C(CLK),
        .CE(\data[11]_i_1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(data0_in[8]),
        .Q(data[8]));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \data_reg[9] 
       (.C(CLK),
        .CE(\data[11]_i_1_n_0 ),
        .CLR(adc_clk_TRI),
        .D(data0_in[9]),
        .Q(data[9]));
  LUT4 #(
    .INIT(16'hF782)) 
    port_cs_i_1
       (.I0(fsm_statu[2]),
        .I1(fsm_statu[0]),
        .I2(fsm_statu[1]),
        .I3(adc_csn_OBUF),
        .O(port_cs_i_1_n_0));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    port_cs_reg
       (.C(CLK),
        .CE(1'b1),
        .D(port_cs_i_1_n_0),
        .PRE(adc_clk_TRI),
        .Q(adc_csn_OBUF));
  LUT4 #(
    .INIT(16'hF0BF)) 
    port_dout_i_1
       (.I0(\cnter_reg_n_0_[0] ),
        .I1(\cnter_reg_n_0_[1] ),
        .I2(fsm_statu[0]),
        .I3(fsm_statu[1]),
        .O(port_dout_i_1_n_0));
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    port_dout_reg
       (.C(CLK),
        .CE(fsm_statu[2]),
        .D(port_dout_i_1_n_0),
        .PRE(adc_clk_TRI),
        .Q(adc_din_OBUF));
endmodule

module drv_segment
   (Segment_data,
    pio37_OBUF,
    pio47_OBUF,
    pio43_OBUF,
    pio44_OBUF,
    pio48_OBUF,
    pio39_OBUF,
    pio41_OBUF,
    pio42_OBUF,
    pio45_OBUF,
    pio38_OBUF,
    pio46_OBUF,
    \Segment_data_reg[11]_C ,
    \Segment_data_reg[11]_C_0 ,
    \Segment_data_reg[11]_C_1 ,
    \Segment_data_reg[10]_C ,
    \Segment_data_reg[10]_C_0 ,
    \Segment_data_reg[10]_C_1 ,
    \Segment_data_reg[9]_C ,
    \Segment_data_reg[9]_C_0 ,
    \Segment_data_reg[9]_C_1 ,
    \Segment_data_reg[8]_C ,
    \Segment_data_reg[8]_C_0 ,
    \Segment_data_reg[8]_C_1 ,
    \Segment_data_reg[7]_C ,
    \Segment_data_reg[7]_C_0 ,
    \Segment_data_reg[7]_C_1 ,
    \Segment_data_reg[6]_C ,
    \Segment_data_reg[6]_C_0 ,
    \Segment_data_reg[6]_C_1 ,
    \Segment_data_reg[5]_C ,
    \Segment_data_reg[5]_C_0 ,
    \Segment_data_reg[5]_C_1 ,
    \Segment_data_reg[4]_C ,
    \Segment_data_reg[4]_C_0 ,
    \Segment_data_reg[4]_C_1 ,
    \Segment_data_reg[3]_C ,
    \Segment_data_reg[3]_C_0 ,
    \Segment_data_reg[3]_C_1 ,
    \Segment_data_reg[2]_C ,
    \Segment_data_reg[2]_C_0 ,
    \Segment_data_reg[2]_C_1 ,
    \Segment_data_reg[1]_C ,
    \Segment_data_reg[1]_C_0 ,
    \Segment_data_reg[1]_C_1 ,
    \Segment_data_reg[0]_C ,
    \Segment_data_reg[0]_C_0 ,
    \Segment_data_reg[0]_C_1 ,
    CLK,
    adc_clk_TRI);
  output [11:0]Segment_data;
  output pio37_OBUF;
  output pio47_OBUF;
  output pio43_OBUF;
  output pio44_OBUF;
  output pio48_OBUF;
  output pio39_OBUF;
  output pio41_OBUF;
  output pio42_OBUF;
  output pio45_OBUF;
  output pio38_OBUF;
  output pio46_OBUF;
  input \Segment_data_reg[11]_C ;
  input \Segment_data_reg[11]_C_0 ;
  input \Segment_data_reg[11]_C_1 ;
  input \Segment_data_reg[10]_C ;
  input \Segment_data_reg[10]_C_0 ;
  input \Segment_data_reg[10]_C_1 ;
  input \Segment_data_reg[9]_C ;
  input \Segment_data_reg[9]_C_0 ;
  input \Segment_data_reg[9]_C_1 ;
  input \Segment_data_reg[8]_C ;
  input \Segment_data_reg[8]_C_0 ;
  input \Segment_data_reg[8]_C_1 ;
  input \Segment_data_reg[7]_C ;
  input \Segment_data_reg[7]_C_0 ;
  input \Segment_data_reg[7]_C_1 ;
  input \Segment_data_reg[6]_C ;
  input \Segment_data_reg[6]_C_0 ;
  input \Segment_data_reg[6]_C_1 ;
  input \Segment_data_reg[5]_C ;
  input \Segment_data_reg[5]_C_0 ;
  input \Segment_data_reg[5]_C_1 ;
  input \Segment_data_reg[4]_C ;
  input \Segment_data_reg[4]_C_0 ;
  input \Segment_data_reg[4]_C_1 ;
  input \Segment_data_reg[3]_C ;
  input \Segment_data_reg[3]_C_0 ;
  input \Segment_data_reg[3]_C_1 ;
  input \Segment_data_reg[2]_C ;
  input \Segment_data_reg[2]_C_0 ;
  input \Segment_data_reg[2]_C_1 ;
  input \Segment_data_reg[1]_C ;
  input \Segment_data_reg[1]_C_0 ;
  input \Segment_data_reg[1]_C_1 ;
  input \Segment_data_reg[0]_C ;
  input \Segment_data_reg[0]_C_0 ;
  input \Segment_data_reg[0]_C_1 ;
  input CLK;
  input adc_clk_TRI;

  wire CLK;
  wire \FSM_sequential_an_r[0]_i_1_n_0 ;
  wire \FSM_sequential_an_r[1]_i_1_n_0 ;
  wire [11:0]Segment_data;
  wire \Segment_data_reg[0]_C ;
  wire \Segment_data_reg[0]_C_0 ;
  wire \Segment_data_reg[0]_C_1 ;
  wire \Segment_data_reg[10]_C ;
  wire \Segment_data_reg[10]_C_0 ;
  wire \Segment_data_reg[10]_C_1 ;
  wire \Segment_data_reg[11]_C ;
  wire \Segment_data_reg[11]_C_0 ;
  wire \Segment_data_reg[11]_C_1 ;
  wire \Segment_data_reg[1]_C ;
  wire \Segment_data_reg[1]_C_0 ;
  wire \Segment_data_reg[1]_C_1 ;
  wire \Segment_data_reg[2]_C ;
  wire \Segment_data_reg[2]_C_0 ;
  wire \Segment_data_reg[2]_C_1 ;
  wire \Segment_data_reg[3]_C ;
  wire \Segment_data_reg[3]_C_0 ;
  wire \Segment_data_reg[3]_C_1 ;
  wire \Segment_data_reg[4]_C ;
  wire \Segment_data_reg[4]_C_0 ;
  wire \Segment_data_reg[4]_C_1 ;
  wire \Segment_data_reg[5]_C ;
  wire \Segment_data_reg[5]_C_0 ;
  wire \Segment_data_reg[5]_C_1 ;
  wire \Segment_data_reg[6]_C ;
  wire \Segment_data_reg[6]_C_0 ;
  wire \Segment_data_reg[6]_C_1 ;
  wire \Segment_data_reg[7]_C ;
  wire \Segment_data_reg[7]_C_0 ;
  wire \Segment_data_reg[7]_C_1 ;
  wire \Segment_data_reg[8]_C ;
  wire \Segment_data_reg[8]_C_0 ;
  wire \Segment_data_reg[8]_C_1 ;
  wire \Segment_data_reg[9]_C ;
  wire \Segment_data_reg[9]_C_0 ;
  wire \Segment_data_reg[9]_C_1 ;
  wire adc_clk_TRI;
  wire [2:0]an_r;
  wire [2:2]an_r__0;
  wire [3:0]cur_num_r__24;
  wire pio37_OBUF;
  wire pio38_OBUF;
  wire pio39_OBUF;
  wire pio41_OBUF;
  wire pio42_OBUF;
  wire pio43_OBUF;
  wire pio44_OBUF;
  wire pio45_OBUF;
  wire pio46_OBUF;
  wire pio47_OBUF;
  wire pio48_OBUF;

  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_an_r[0]_i_1 
       (.I0(an_r[2]),
        .I1(an_r[0]),
        .O(\FSM_sequential_an_r[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_an_r[1]_i_1 
       (.I0(an_r[1]),
        .I1(an_r[0]),
        .I2(an_r[2]),
        .O(\FSM_sequential_an_r[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_an_r[2]_i_1 
       (.I0(an_r[2]),
        .I1(an_r[0]),
        .I2(an_r[1]),
        .O(an_r__0));
  (* FSM_ENCODED_STATES = "iSTATE:100,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_an_r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\FSM_sequential_an_r[0]_i_1_n_0 ),
        .Q(an_r[0]));
  (* FSM_ENCODED_STATES = "iSTATE:100,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_an_r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(\FSM_sequential_an_r[1]_i_1_n_0 ),
        .Q(an_r[1]));
  (* FSM_ENCODED_STATES = "iSTATE:100,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_an_r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(adc_clk_TRI),
        .D(an_r__0),
        .Q(an_r[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Segment_data[0]_C_i_1 
       (.I0(\Segment_data_reg[0]_C ),
        .I1(\Segment_data_reg[0]_C_0 ),
        .I2(\Segment_data_reg[0]_C_1 ),
        .O(Segment_data[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Segment_data[10]_C_i_1 
       (.I0(\Segment_data_reg[10]_C ),
        .I1(\Segment_data_reg[10]_C_0 ),
        .I2(\Segment_data_reg[10]_C_1 ),
        .O(Segment_data[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Segment_data[11]_C_i_1 
       (.I0(\Segment_data_reg[11]_C ),
        .I1(\Segment_data_reg[11]_C_0 ),
        .I2(\Segment_data_reg[11]_C_1 ),
        .O(Segment_data[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Segment_data[1]_C_i_1 
       (.I0(\Segment_data_reg[1]_C ),
        .I1(\Segment_data_reg[1]_C_0 ),
        .I2(\Segment_data_reg[1]_C_1 ),
        .O(Segment_data[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Segment_data[2]_C_i_1 
       (.I0(\Segment_data_reg[2]_C ),
        .I1(\Segment_data_reg[2]_C_0 ),
        .I2(\Segment_data_reg[2]_C_1 ),
        .O(Segment_data[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Segment_data[3]_C_i_1 
       (.I0(\Segment_data_reg[3]_C ),
        .I1(\Segment_data_reg[3]_C_0 ),
        .I2(\Segment_data_reg[3]_C_1 ),
        .O(Segment_data[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Segment_data[4]_C_i_1 
       (.I0(\Segment_data_reg[4]_C ),
        .I1(\Segment_data_reg[4]_C_0 ),
        .I2(\Segment_data_reg[4]_C_1 ),
        .O(Segment_data[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Segment_data[5]_C_i_1 
       (.I0(\Segment_data_reg[5]_C ),
        .I1(\Segment_data_reg[5]_C_0 ),
        .I2(\Segment_data_reg[5]_C_1 ),
        .O(Segment_data[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Segment_data[6]_C_i_1 
       (.I0(\Segment_data_reg[6]_C ),
        .I1(\Segment_data_reg[6]_C_0 ),
        .I2(\Segment_data_reg[6]_C_1 ),
        .O(Segment_data[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Segment_data[7]_C_i_1 
       (.I0(\Segment_data_reg[7]_C ),
        .I1(\Segment_data_reg[7]_C_0 ),
        .I2(\Segment_data_reg[7]_C_1 ),
        .O(Segment_data[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Segment_data[8]_C_i_1 
       (.I0(\Segment_data_reg[8]_C ),
        .I1(\Segment_data_reg[8]_C_0 ),
        .I2(\Segment_data_reg[8]_C_1 ),
        .O(Segment_data[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \Segment_data[9]_C_i_1 
       (.I0(\Segment_data_reg[9]_C ),
        .I1(\Segment_data_reg[9]_C_0 ),
        .I2(\Segment_data_reg[9]_C_1 ),
        .O(Segment_data[9]));
  LUT3 #(
    .INIT(8'hFD)) 
    pio37_OBUF_inst_i_1
       (.I0(an_r[0]),
        .I1(an_r[2]),
        .I2(an_r[1]),
        .O(pio37_OBUF));
  LUT4 #(
    .INIT(16'hFB6E)) 
    pio38_OBUF_inst_i_1
       (.I0(cur_num_r__24[1]),
        .I1(cur_num_r__24[2]),
        .I2(cur_num_r__24[0]),
        .I3(cur_num_r__24[3]),
        .O(pio38_OBUF));
  LUT6 #(
    .INIT(64'h0000F0AA00FFCC00)) 
    pio38_OBUF_inst_i_2
       (.I0(Segment_data[1]),
        .I1(Segment_data[5]),
        .I2(Segment_data[9]),
        .I3(an_r[1]),
        .I4(an_r[2]),
        .I5(an_r[0]),
        .O(cur_num_r__24[1]));
  LUT6 #(
    .INIT(64'h0000F0AA00FFCC00)) 
    pio38_OBUF_inst_i_3
       (.I0(Segment_data[2]),
        .I1(Segment_data[6]),
        .I2(Segment_data[10]),
        .I3(an_r[1]),
        .I4(an_r[2]),
        .I5(an_r[0]),
        .O(cur_num_r__24[2]));
  LUT6 #(
    .INIT(64'h00000000AFC0A0C0)) 
    pio38_OBUF_inst_i_4
       (.I0(Segment_data[8]),
        .I1(Segment_data[4]),
        .I2(an_r[1]),
        .I3(an_r[0]),
        .I4(Segment_data[0]),
        .I5(an_r[2]),
        .O(cur_num_r__24[0]));
  LUT6 #(
    .INIT(64'h0000F0AA00FFCC00)) 
    pio38_OBUF_inst_i_5
       (.I0(Segment_data[3]),
        .I1(Segment_data[7]),
        .I2(Segment_data[11]),
        .I3(an_r[1]),
        .I4(an_r[2]),
        .I5(an_r[0]),
        .O(cur_num_r__24[3]));
  LUT4 #(
    .INIT(16'h75FB)) 
    pio39_OBUF_inst_i_1
       (.I0(cur_num_r__24[2]),
        .I1(cur_num_r__24[1]),
        .I2(cur_num_r__24[0]),
        .I3(cur_num_r__24[3]),
        .O(pio39_OBUF));
  LUT4 #(
    .INIT(16'h7D6B)) 
    pio41_OBUF_inst_i_1
       (.I0(cur_num_r__24[1]),
        .I1(cur_num_r__24[0]),
        .I2(cur_num_r__24[2]),
        .I3(cur_num_r__24[3]),
        .O(pio41_OBUF));
  LUT4 #(
    .INIT(16'hFD51)) 
    pio42_OBUF_inst_i_1
       (.I0(cur_num_r__24[0]),
        .I1(cur_num_r__24[2]),
        .I2(cur_num_r__24[1]),
        .I3(cur_num_r__24[3]),
        .O(pio42_OBUF));
  LUT3 #(
    .INIT(8'hFD)) 
    pio43_OBUF_inst_i_1
       (.I0(an_r[2]),
        .I1(an_r[0]),
        .I2(an_r[1]),
        .O(pio43_OBUF));
  LUT4 #(
    .INIT(16'hB7EB)) 
    pio44_OBUF_inst_i_1
       (.I0(cur_num_r__24[1]),
        .I1(cur_num_r__24[0]),
        .I2(cur_num_r__24[2]),
        .I3(cur_num_r__24[3]),
        .O(pio44_OBUF));
  LUT4 #(
    .INIT(16'hBF71)) 
    pio45_OBUF_inst_i_1
       (.I0(cur_num_r__24[1]),
        .I1(cur_num_r__24[0]),
        .I2(cur_num_r__24[2]),
        .I3(cur_num_r__24[3]),
        .O(pio45_OBUF));
  LUT3 #(
    .INIT(8'hF7)) 
    pio46_OBUF_inst_i_1
       (.I0(an_r[1]),
        .I1(an_r[0]),
        .I2(an_r[2]),
        .O(pio46_OBUF));
  LUT3 #(
    .INIT(8'hFD)) 
    pio47_OBUF_inst_i_1
       (.I0(an_r[1]),
        .I1(an_r[2]),
        .I2(an_r[0]),
        .O(pio47_OBUF));
  LUT4 #(
    .INIT(16'h279F)) 
    pio48_OBUF_inst_i_1
       (.I0(cur_num_r__24[0]),
        .I1(cur_num_r__24[1]),
        .I2(cur_num_r__24[2]),
        .I3(cur_num_r__24[3]),
        .O(pio48_OBUF));
endmodule

(* ECO_CHECKSUM = "1f7367bc" *) (* SINGLE_CHAN0 = "2'b10" *) (* SINGLE_CHAN1 = "2'b11" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module top_module
   (sysclk,
    btn,
    pio37,
    pio38,
    pio39,
    pio40,
    pio41,
    pio42,
    pio43,
    pio44,
    pio45,
    pio46,
    pio47,
    pio48,
    pio20,
    led,
    adc_din,
    adc_clk,
    adc_csn,
    adc_dout);
  input sysclk;
  input [1:0]btn;
  output pio37;
  output pio38;
  output pio39;
  output pio40;
  output pio41;
  output pio42;
  output pio43;
  output pio44;
  output pio45;
  output pio46;
  output pio47;
  output pio48;
  output pio20;
  output [1:0]led;
  output adc_din;
  output adc_clk;
  output adc_csn;
  input adc_dout;

  wire CLK1MHz;
  wire CLK1MHz_BUFG;
  wire CLK500Hz;
  wire [11:0]Segment_data;
  wire \Segment_data_reg[0]_C_n_0 ;
  wire \Segment_data_reg[0]_LDC_n_0 ;
  wire \Segment_data_reg[0]_P_n_0 ;
  wire \Segment_data_reg[10]_C_n_0 ;
  wire \Segment_data_reg[10]_LDC_n_0 ;
  wire \Segment_data_reg[10]_P_n_0 ;
  wire \Segment_data_reg[11]_C_n_0 ;
  wire \Segment_data_reg[11]_LDC_n_0 ;
  wire \Segment_data_reg[11]_P_n_0 ;
  wire \Segment_data_reg[1]_C_n_0 ;
  wire \Segment_data_reg[1]_LDC_n_0 ;
  wire \Segment_data_reg[1]_P_n_0 ;
  wire \Segment_data_reg[2]_C_n_0 ;
  wire \Segment_data_reg[2]_LDC_n_0 ;
  wire \Segment_data_reg[2]_P_n_0 ;
  wire \Segment_data_reg[3]_C_n_0 ;
  wire \Segment_data_reg[3]_LDC_n_0 ;
  wire \Segment_data_reg[3]_P_n_0 ;
  wire \Segment_data_reg[4]_C_n_0 ;
  wire \Segment_data_reg[4]_LDC_n_0 ;
  wire \Segment_data_reg[4]_P_n_0 ;
  wire \Segment_data_reg[5]_C_n_0 ;
  wire \Segment_data_reg[5]_LDC_n_0 ;
  wire \Segment_data_reg[5]_P_n_0 ;
  wire \Segment_data_reg[6]_C_n_0 ;
  wire \Segment_data_reg[6]_LDC_n_0 ;
  wire \Segment_data_reg[6]_P_n_0 ;
  wire \Segment_data_reg[7]_C_n_0 ;
  wire \Segment_data_reg[7]_LDC_n_0 ;
  wire \Segment_data_reg[7]_P_n_0 ;
  wire \Segment_data_reg[8]_C_n_0 ;
  wire \Segment_data_reg[8]_LDC_n_0 ;
  wire \Segment_data_reg[8]_P_n_0 ;
  wire \Segment_data_reg[9]_C_n_0 ;
  wire \Segment_data_reg[9]_LDC_n_0 ;
  wire \Segment_data_reg[9]_P_n_0 ;
  wire adc_clk;
  wire adc_clk_OBUF;
  wire adc_clk_TRI;
  wire adc_csn;
  wire adc_csn_OBUF;
  wire adc_din;
  wire adc_din_OBUF;
  wire adc_dout;
  wire adc_ready;
  wire [1:0]btn;
  wire clkout_r;
  wire drv_mcp3202_u0_n_10;
  wire drv_mcp3202_u0_n_11;
  wire drv_mcp3202_u0_n_12;
  wire drv_mcp3202_u0_n_13;
  wire drv_mcp3202_u0_n_14;
  wire drv_mcp3202_u0_n_15;
  wire drv_mcp3202_u0_n_16;
  wire drv_mcp3202_u0_n_17;
  wire drv_mcp3202_u0_n_18;
  wire drv_mcp3202_u0_n_19;
  wire drv_mcp3202_u0_n_20;
  wire drv_mcp3202_u0_n_21;
  wire drv_mcp3202_u0_n_22;
  wire drv_mcp3202_u0_n_23;
  wire drv_mcp3202_u0_n_24;
  wire drv_mcp3202_u0_n_25;
  wire drv_mcp3202_u0_n_26;
  wire drv_mcp3202_u0_n_27;
  wire drv_mcp3202_u0_n_3;
  wire drv_mcp3202_u0_n_4;
  wire drv_mcp3202_u0_n_5;
  wire drv_mcp3202_u0_n_6;
  wire drv_mcp3202_u0_n_7;
  wire drv_mcp3202_u0_n_8;
  wire drv_mcp3202_u0_n_9;
  wire [1:0]led;
  wire [0:0]led_OBUF;
  wire pio20;
  wire pio20_OBUF;
  wire pio37;
  wire pio37_OBUF;
  wire pio38;
  wire pio38_OBUF;
  wire pio39;
  wire pio39_OBUF;
  wire pio40;
  wire pio41;
  wire pio41_OBUF;
  wire pio42;
  wire pio42_OBUF;
  wire pio43;
  wire pio43_OBUF;
  wire pio44;
  wire pio44_OBUF;
  wire pio45;
  wire pio45_OBUF;
  wire pio46;
  wire pio46_OBUF;
  wire pio47;
  wire pio47_OBUF;
  wire pio48;
  wire pio48_OBUF;
  wire sysclk;
  wire sysclk_IBUF;
  wire sysclk_IBUF_BUFG;

initial begin
 $sdf_annotate("drv_mcp3202_tb_time_impl.sdf",,,,"tool_control");
end
  BUFG CLK1MHz_BUFG_inst
       (.I(CLK1MHz),
        .O(CLK1MHz_BUFG));
  FDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[0]_C 
       (.C(clkout_r),
        .CE(1'b1),
        .CLR(drv_mcp3202_u0_n_27),
        .D(Segment_data[0]),
        .Q(\Segment_data_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[0]_LDC 
       (.CLR(drv_mcp3202_u0_n_27),
        .D(1'b1),
        .G(drv_mcp3202_u0_n_12),
        .GE(1'b1),
        .Q(\Segment_data_reg[0]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \Segment_data_reg[0]_P 
       (.C(clkout_r),
        .CE(1'b1),
        .D(Segment_data[0]),
        .PRE(drv_mcp3202_u0_n_12),
        .Q(\Segment_data_reg[0]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[10]_C 
       (.C(clkout_r),
        .CE(1'b1),
        .CLR(drv_mcp3202_u0_n_23),
        .D(Segment_data[10]),
        .Q(\Segment_data_reg[10]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[10]_LDC 
       (.CLR(drv_mcp3202_u0_n_23),
        .D(1'b1),
        .G(drv_mcp3202_u0_n_16),
        .GE(1'b1),
        .Q(\Segment_data_reg[10]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \Segment_data_reg[10]_P 
       (.C(clkout_r),
        .CE(1'b1),
        .D(Segment_data[10]),
        .PRE(drv_mcp3202_u0_n_16),
        .Q(\Segment_data_reg[10]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[11]_C 
       (.C(clkout_r),
        .CE(1'b1),
        .CLR(drv_mcp3202_u0_n_11),
        .D(Segment_data[11]),
        .Q(\Segment_data_reg[11]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[11]_LDC 
       (.CLR(drv_mcp3202_u0_n_11),
        .D(1'b1),
        .G(drv_mcp3202_u0_n_10),
        .GE(1'b1),
        .Q(\Segment_data_reg[11]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \Segment_data_reg[11]_P 
       (.C(clkout_r),
        .CE(1'b1),
        .D(Segment_data[11]),
        .PRE(drv_mcp3202_u0_n_10),
        .Q(\Segment_data_reg[11]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[1]_C 
       (.C(clkout_r),
        .CE(1'b1),
        .CLR(drv_mcp3202_u0_n_26),
        .D(Segment_data[1]),
        .Q(\Segment_data_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[1]_LDC 
       (.CLR(drv_mcp3202_u0_n_26),
        .D(1'b1),
        .G(drv_mcp3202_u0_n_13),
        .GE(1'b1),
        .Q(\Segment_data_reg[1]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \Segment_data_reg[1]_P 
       (.C(clkout_r),
        .CE(1'b1),
        .D(Segment_data[1]),
        .PRE(drv_mcp3202_u0_n_13),
        .Q(\Segment_data_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[2]_C 
       (.C(clkout_r),
        .CE(1'b1),
        .CLR(drv_mcp3202_u0_n_22),
        .D(Segment_data[2]),
        .Q(\Segment_data_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[2]_LDC 
       (.CLR(drv_mcp3202_u0_n_22),
        .D(1'b1),
        .G(drv_mcp3202_u0_n_4),
        .GE(1'b1),
        .Q(\Segment_data_reg[2]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \Segment_data_reg[2]_P 
       (.C(clkout_r),
        .CE(1'b1),
        .D(Segment_data[2]),
        .PRE(drv_mcp3202_u0_n_4),
        .Q(\Segment_data_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[3]_C 
       (.C(clkout_r),
        .CE(1'b1),
        .CLR(drv_mcp3202_u0_n_21),
        .D(Segment_data[3]),
        .Q(\Segment_data_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[3]_LDC 
       (.CLR(drv_mcp3202_u0_n_21),
        .D(1'b1),
        .G(drv_mcp3202_u0_n_5),
        .GE(1'b1),
        .Q(\Segment_data_reg[3]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \Segment_data_reg[3]_P 
       (.C(clkout_r),
        .CE(1'b1),
        .D(Segment_data[3]),
        .PRE(drv_mcp3202_u0_n_5),
        .Q(\Segment_data_reg[3]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[4]_C 
       (.C(clkout_r),
        .CE(1'b1),
        .CLR(drv_mcp3202_u0_n_20),
        .D(Segment_data[4]),
        .Q(\Segment_data_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[4]_LDC 
       (.CLR(drv_mcp3202_u0_n_20),
        .D(1'b1),
        .G(drv_mcp3202_u0_n_6),
        .GE(1'b1),
        .Q(\Segment_data_reg[4]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \Segment_data_reg[4]_P 
       (.C(clkout_r),
        .CE(1'b1),
        .D(Segment_data[4]),
        .PRE(drv_mcp3202_u0_n_6),
        .Q(\Segment_data_reg[4]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[5]_C 
       (.C(clkout_r),
        .CE(1'b1),
        .CLR(drv_mcp3202_u0_n_19),
        .D(Segment_data[5]),
        .Q(\Segment_data_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[5]_LDC 
       (.CLR(drv_mcp3202_u0_n_19),
        .D(1'b1),
        .G(drv_mcp3202_u0_n_7),
        .GE(1'b1),
        .Q(\Segment_data_reg[5]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \Segment_data_reg[5]_P 
       (.C(clkout_r),
        .CE(1'b1),
        .D(Segment_data[5]),
        .PRE(drv_mcp3202_u0_n_7),
        .Q(\Segment_data_reg[5]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[6]_C 
       (.C(clkout_r),
        .CE(1'b1),
        .CLR(drv_mcp3202_u0_n_25),
        .D(Segment_data[6]),
        .Q(\Segment_data_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[6]_LDC 
       (.CLR(drv_mcp3202_u0_n_25),
        .D(1'b1),
        .G(drv_mcp3202_u0_n_14),
        .GE(1'b1),
        .Q(\Segment_data_reg[6]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \Segment_data_reg[6]_P 
       (.C(clkout_r),
        .CE(1'b1),
        .D(Segment_data[6]),
        .PRE(drv_mcp3202_u0_n_14),
        .Q(\Segment_data_reg[6]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[7]_C 
       (.C(clkout_r),
        .CE(1'b1),
        .CLR(drv_mcp3202_u0_n_18),
        .D(Segment_data[7]),
        .Q(\Segment_data_reg[7]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[7]_LDC 
       (.CLR(drv_mcp3202_u0_n_18),
        .D(1'b1),
        .G(drv_mcp3202_u0_n_8),
        .GE(1'b1),
        .Q(\Segment_data_reg[7]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \Segment_data_reg[7]_P 
       (.C(clkout_r),
        .CE(1'b1),
        .D(Segment_data[7]),
        .PRE(drv_mcp3202_u0_n_8),
        .Q(\Segment_data_reg[7]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[8]_C 
       (.C(clkout_r),
        .CE(1'b1),
        .CLR(drv_mcp3202_u0_n_24),
        .D(Segment_data[8]),
        .Q(\Segment_data_reg[8]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[8]_LDC 
       (.CLR(drv_mcp3202_u0_n_24),
        .D(1'b1),
        .G(drv_mcp3202_u0_n_15),
        .GE(1'b1),
        .Q(\Segment_data_reg[8]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \Segment_data_reg[8]_P 
       (.C(clkout_r),
        .CE(1'b1),
        .D(Segment_data[8]),
        .PRE(drv_mcp3202_u0_n_15),
        .Q(\Segment_data_reg[8]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[9]_C 
       (.C(clkout_r),
        .CE(1'b1),
        .CLR(drv_mcp3202_u0_n_17),
        .D(Segment_data[9]),
        .Q(\Segment_data_reg[9]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Segment_data_reg[9]_LDC 
       (.CLR(drv_mcp3202_u0_n_17),
        .D(1'b1),
        .G(drv_mcp3202_u0_n_9),
        .GE(1'b1),
        .Q(\Segment_data_reg[9]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \Segment_data_reg[9]_P 
       (.C(clkout_r),
        .CE(1'b1),
        .D(Segment_data[9]),
        .PRE(drv_mcp3202_u0_n_9),
        .Q(\Segment_data_reg[9]_P_n_0 ));
  OBUFT adc_clk_OBUFT_inst
       (.I(adc_clk_OBUF),
        .O(adc_clk),
        .T(adc_clk_TRI));
  OBUF adc_csn_OBUF_inst
       (.I(adc_csn_OBUF),
        .O(adc_csn));
  OBUF adc_din_OBUF_inst
       (.I(adc_din_OBUF),
        .O(adc_din));
  IBUF adc_dout_IBUF_inst
       (.I(adc_dout),
        .O(pio20_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    adc_ready_reg
       (.C(clkout_r),
        .CE(1'b1),
        .CLR(drv_mcp3202_u0_n_3),
        .D(1'b1),
        .Q(adc_ready));
  IBUF \btn_IBUF[1]_inst 
       (.I(btn[1]),
        .O(adc_clk_TRI));
  clock_div clk_div_u1
       (.CLK(CLK500Hz),
        .adc_clk_TRI(adc_clk_TRI),
        .clkout_r_reg_0(sysclk_IBUF_BUFG));
  clock_div__parameterized0 clk_div_u2
       (.CLK(CLK500Hz),
        .adc_clk_TRI(adc_clk_TRI),
        .clkout_r(clkout_r));
  clock_div__parameterized1 clk_div_u3
       (.CLK(sysclk_IBUF_BUFG),
        .CLK1MHz(CLK1MHz),
        .adc_clk_OBUF(adc_clk_OBUF),
        .adc_clk_TRI(adc_clk_TRI),
        .adc_csn_OBUF(adc_csn_OBUF));
  drv_mcp3202 drv_mcp3202_u0
       (.CLK(CLK1MHz_BUFG),
        .adc_clk_TRI(adc_clk_TRI),
        .adc_csn_OBUF(adc_csn_OBUF),
        .adc_din_OBUF(adc_din_OBUF),
        .adc_ready(adc_ready),
        .ap_vaild_reg_0(drv_mcp3202_u0_n_3),
        .ap_vaild_reg_1(drv_mcp3202_u0_n_4),
        .ap_vaild_reg_10(drv_mcp3202_u0_n_18),
        .ap_vaild_reg_11(drv_mcp3202_u0_n_19),
        .ap_vaild_reg_12(drv_mcp3202_u0_n_20),
        .ap_vaild_reg_13(drv_mcp3202_u0_n_21),
        .ap_vaild_reg_14(drv_mcp3202_u0_n_22),
        .ap_vaild_reg_2(drv_mcp3202_u0_n_5),
        .ap_vaild_reg_3(drv_mcp3202_u0_n_6),
        .ap_vaild_reg_4(drv_mcp3202_u0_n_7),
        .ap_vaild_reg_5(drv_mcp3202_u0_n_8),
        .ap_vaild_reg_6(drv_mcp3202_u0_n_9),
        .ap_vaild_reg_7(drv_mcp3202_u0_n_10),
        .ap_vaild_reg_8(drv_mcp3202_u0_n_11),
        .ap_vaild_reg_9(drv_mcp3202_u0_n_17),
        .\data_reg[0]_0 (drv_mcp3202_u0_n_12),
        .\data_reg[0]_1 (drv_mcp3202_u0_n_27),
        .\data_reg[10]_0 (drv_mcp3202_u0_n_16),
        .\data_reg[10]_1 (drv_mcp3202_u0_n_23),
        .\data_reg[1]_0 (drv_mcp3202_u0_n_13),
        .\data_reg[1]_1 (drv_mcp3202_u0_n_26),
        .\data_reg[6]_0 (drv_mcp3202_u0_n_14),
        .\data_reg[6]_1 (drv_mcp3202_u0_n_25),
        .\data_reg[8]_0 (drv_mcp3202_u0_n_15),
        .\data_reg[8]_1 (drv_mcp3202_u0_n_24),
        .led_OBUF(led_OBUF),
        .pio20_OBUF(pio20_OBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF),
        .O(led[0]));
  OBUFT \led_OBUF[1]_inst 
       (.I(1'b0),
        .O(led[1]),
        .T(1'b1));
  OBUF pio20_OBUF_inst
       (.I(pio20_OBUF),
        .O(pio20));
  OBUF pio37_OBUF_inst
       (.I(pio37_OBUF),
        .O(pio37));
  OBUF pio38_OBUF_inst
       (.I(pio38_OBUF),
        .O(pio38));
  OBUF pio39_OBUF_inst
       (.I(pio39_OBUF),
        .O(pio39));
  OBUF pio40_OBUF_inst
       (.I(1'b0),
        .O(pio40));
  OBUF pio41_OBUF_inst
       (.I(pio41_OBUF),
        .O(pio41));
  OBUF pio42_OBUF_inst
       (.I(pio42_OBUF),
        .O(pio42));
  OBUF pio43_OBUF_inst
       (.I(pio43_OBUF),
        .O(pio43));
  OBUF pio44_OBUF_inst
       (.I(pio44_OBUF),
        .O(pio44));
  OBUF pio45_OBUF_inst
       (.I(pio45_OBUF),
        .O(pio45));
  OBUF pio46_OBUF_inst
       (.I(pio46_OBUF),
        .O(pio46));
  OBUF pio47_OBUF_inst
       (.I(pio47_OBUF),
        .O(pio47));
  OBUF pio48_OBUF_inst
       (.I(pio48_OBUF),
        .O(pio48));
  drv_segment segment_u0
       (.CLK(CLK500Hz),
        .Segment_data(Segment_data),
        .\Segment_data_reg[0]_C (\Segment_data_reg[0]_P_n_0 ),
        .\Segment_data_reg[0]_C_0 (\Segment_data_reg[0]_LDC_n_0 ),
        .\Segment_data_reg[0]_C_1 (\Segment_data_reg[0]_C_n_0 ),
        .\Segment_data_reg[10]_C (\Segment_data_reg[10]_P_n_0 ),
        .\Segment_data_reg[10]_C_0 (\Segment_data_reg[10]_LDC_n_0 ),
        .\Segment_data_reg[10]_C_1 (\Segment_data_reg[10]_C_n_0 ),
        .\Segment_data_reg[11]_C (\Segment_data_reg[11]_P_n_0 ),
        .\Segment_data_reg[11]_C_0 (\Segment_data_reg[11]_LDC_n_0 ),
        .\Segment_data_reg[11]_C_1 (\Segment_data_reg[11]_C_n_0 ),
        .\Segment_data_reg[1]_C (\Segment_data_reg[1]_P_n_0 ),
        .\Segment_data_reg[1]_C_0 (\Segment_data_reg[1]_LDC_n_0 ),
        .\Segment_data_reg[1]_C_1 (\Segment_data_reg[1]_C_n_0 ),
        .\Segment_data_reg[2]_C (\Segment_data_reg[2]_P_n_0 ),
        .\Segment_data_reg[2]_C_0 (\Segment_data_reg[2]_LDC_n_0 ),
        .\Segment_data_reg[2]_C_1 (\Segment_data_reg[2]_C_n_0 ),
        .\Segment_data_reg[3]_C (\Segment_data_reg[3]_P_n_0 ),
        .\Segment_data_reg[3]_C_0 (\Segment_data_reg[3]_LDC_n_0 ),
        .\Segment_data_reg[3]_C_1 (\Segment_data_reg[3]_C_n_0 ),
        .\Segment_data_reg[4]_C (\Segment_data_reg[4]_P_n_0 ),
        .\Segment_data_reg[4]_C_0 (\Segment_data_reg[4]_LDC_n_0 ),
        .\Segment_data_reg[4]_C_1 (\Segment_data_reg[4]_C_n_0 ),
        .\Segment_data_reg[5]_C (\Segment_data_reg[5]_P_n_0 ),
        .\Segment_data_reg[5]_C_0 (\Segment_data_reg[5]_LDC_n_0 ),
        .\Segment_data_reg[5]_C_1 (\Segment_data_reg[5]_C_n_0 ),
        .\Segment_data_reg[6]_C (\Segment_data_reg[6]_P_n_0 ),
        .\Segment_data_reg[6]_C_0 (\Segment_data_reg[6]_LDC_n_0 ),
        .\Segment_data_reg[6]_C_1 (\Segment_data_reg[6]_C_n_0 ),
        .\Segment_data_reg[7]_C (\Segment_data_reg[7]_P_n_0 ),
        .\Segment_data_reg[7]_C_0 (\Segment_data_reg[7]_LDC_n_0 ),
        .\Segment_data_reg[7]_C_1 (\Segment_data_reg[7]_C_n_0 ),
        .\Segment_data_reg[8]_C (\Segment_data_reg[8]_P_n_0 ),
        .\Segment_data_reg[8]_C_0 (\Segment_data_reg[8]_LDC_n_0 ),
        .\Segment_data_reg[8]_C_1 (\Segment_data_reg[8]_C_n_0 ),
        .\Segment_data_reg[9]_C (\Segment_data_reg[9]_P_n_0 ),
        .\Segment_data_reg[9]_C_0 (\Segment_data_reg[9]_LDC_n_0 ),
        .\Segment_data_reg[9]_C_1 (\Segment_data_reg[9]_C_n_0 ),
        .adc_clk_TRI(adc_clk_TRI),
        .pio37_OBUF(pio37_OBUF),
        .pio38_OBUF(pio38_OBUF),
        .pio39_OBUF(pio39_OBUF),
        .pio41_OBUF(pio41_OBUF),
        .pio42_OBUF(pio42_OBUF),
        .pio43_OBUF(pio43_OBUF),
        .pio44_OBUF(pio44_OBUF),
        .pio45_OBUF(pio45_OBUF),
        .pio46_OBUF(pio46_OBUF),
        .pio47_OBUF(pio47_OBUF),
        .pio48_OBUF(pio48_OBUF));
  BUFG sysclk_IBUF_BUFG_inst
       (.I(sysclk_IBUF),
        .O(sysclk_IBUF_BUFG));
  IBUF sysclk_IBUF_inst
       (.I(sysclk),
        .O(sysclk_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
