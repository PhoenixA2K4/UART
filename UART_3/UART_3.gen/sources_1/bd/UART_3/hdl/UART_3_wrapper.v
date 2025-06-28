//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Thu Apr 17 22:47:23 2025
//Host        : LAPTOP-HRR3FUNQ running 64-bit major release  (build 9200)
//Command     : generate_target UART_3_wrapper.bd
//Design      : UART_3_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module UART_3_wrapper
   (CAT_0,
    RS232_A9_0,
    RS232_D10_0,
    button_0,
    clk_0,
    led_0,
    reset_0);
  output CAT_0;
  input RS232_A9_0;
  output RS232_D10_0;
  input button_0;
  input clk_0;
  output [6:0]led_0;
  input reset_0;

  wire CAT_0;
  wire RS232_A9_0;
  wire RS232_D10_0;
  wire button_0;
  wire clk_0;
  wire [6:0]led_0;
  wire reset_0;

  UART_3 UART_3_i
       (.CAT_0(CAT_0),
        .RS232_A9_0(RS232_A9_0),
        .RS232_D10_0(RS232_D10_0),
        .button_0(button_0),
        .clk_0(clk_0),
        .led_0(led_0),
        .reset_0(reset_0));
endmodule
