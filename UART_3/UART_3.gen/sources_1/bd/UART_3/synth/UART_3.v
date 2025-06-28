//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Thu Apr 17 22:47:23 2025
//Host        : LAPTOP-HRR3FUNQ running 64-bit major release  (build 9200)
//Command     : generate_target UART_3.bd
//Design      : UART_3
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "UART_3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=UART_3,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "UART_3.hwdef" *) 
module UART_3
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET reset_0, CLK_DOMAIN UART_3_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  output [6:0]led_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_0;

  wire RS232_A9_0_1;
  wire button_0_1;
  wire clk_0_1;
  wire file_combine_0_CAT;
  wire file_combine_0_RS232_D10;
  wire [6:0]file_combine_0_led;
  wire reset_0_1;
  wire [7:0]vio_0_probe_out0;

  assign CAT_0 = file_combine_0_CAT;
  assign RS232_A9_0_1 = RS232_A9_0;
  assign RS232_D10_0 = file_combine_0_RS232_D10;
  assign button_0_1 = button_0;
  assign clk_0_1 = clk_0;
  assign led_0[6:0] = file_combine_0_led;
  assign reset_0_1 = reset_0;
  UART_3_file_combine_0_0 file_combine_0
       (.CAT(file_combine_0_CAT),
        .Clk(clk_0_1),
        .RS232_A9(RS232_A9_0_1),
        .RS232_D10(file_combine_0_RS232_D10),
        .button(button_0_1),
        .data_in(vio_0_probe_out0),
        .led(file_combine_0_led),
        .reset(reset_0_1));
  UART_3_ila_0_0 ila_0
       (.clk(clk_0_1),
        .probe0(vio_0_probe_out0),
        .probe1(RS232_A9_0_1),
        .probe2(button_0_1),
        .probe3(reset_0_1),
        .probe4(file_combine_0_RS232_D10),
        .probe5(file_combine_0_CAT),
        .probe6(file_combine_0_led));
  UART_3_vio_0_0 vio_0
       (.clk(clk_0_1),
        .probe_out0(vio_0_probe_out0));
endmodule
