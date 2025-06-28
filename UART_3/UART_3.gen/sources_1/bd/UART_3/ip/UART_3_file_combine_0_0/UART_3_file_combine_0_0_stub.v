// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 17 22:48:01 2025
// Host        : LAPTOP-HRR3FUNQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Acer/Downloads/UART_3/UART_3.gen/sources_1/bd/UART_3/ip/UART_3_file_combine_0_0/UART_3_file_combine_0_0_stub.v
// Design      : UART_3_file_combine_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "file_combine,Vivado 2020.2" *)
module UART_3_file_combine_0_0(Clk, reset, button, RS232_A9, RS232_D10, data_in, 
  CAT, led)
/* synthesis syn_black_box black_box_pad_pin="Clk,reset,button,RS232_A9,RS232_D10,data_in[7:0],CAT,led[6:0]" */;
  input Clk;
  input reset;
  input button;
  input RS232_A9;
  output RS232_D10;
  input [7:0]data_in;
  output CAT;
  output [6:0]led;
endmodule
