// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Apr 17 22:48:01 2025
// Host        : LAPTOP-HRR3FUNQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Acer/Downloads/UART_3/UART_3.gen/sources_1/bd/UART_3/ip/UART_3_file_combine_0_0/UART_3_file_combine_0_0_sim_netlist.v
// Design      : UART_3_file_combine_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "UART_3_file_combine_0_0,file_combine,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "file_combine,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module UART_3_file_combine_0_0
   (Clk,
    reset,
    button,
    RS232_A9,
    RS232_D10,
    data_in,
    CAT,
    led);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN UART_3_clk_0, INSERT_VIP 0" *) input Clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input button;
  input RS232_A9;
  output RS232_D10;
  input [7:0]data_in;
  output CAT;
  output [6:0]led;

  wire CAT;
  wire Clk;
  wire RS232_A9;
  wire RS232_D10;
  wire button;
  wire [7:0]data_in;
  wire [6:0]led;
  wire reset;

  UART_3_file_combine_0_0_file_combine inst
       (.Clk(Clk),
        .RS232_A9(RS232_A9),
        .RS232_D10(RS232_D10),
        .button(button),
        .data_in(data_in),
        .led(led),
        .reset(reset),
        .tmp_reg(CAT));
endmodule

(* ORIG_REF_NAME = "LEDS_OUT" *) 
module UART_3_file_combine_0_0_LEDS_OUT
   (tmp_reg,
    Clk,
    \counter_reg[18] );
  output tmp_reg;
  input Clk;
  input \counter_reg[18] ;

  wire Clk;
  wire \counter_reg[18] ;
  wire tmp_reg;

  UART_3_file_combine_0_0_divider A0
       (.Clk(Clk),
        .\counter_reg[18]_0 (\counter_reg[18] ),
        .tmp_reg_0(tmp_reg));
endmodule

(* ORIG_REF_NAME = "UART_rx" *) 
module UART_3_file_combine_0_0_UART_rx
   (tmp_done,
    reset_0,
    led,
    Clk,
    reset,
    RS232_A9,
    led_2_sp_1);
  output tmp_done;
  output reset_0;
  output [6:0]led;
  input Clk;
  input reset;
  input RS232_A9;
  input led_2_sp_1;

  wire [3:0]\A1/mux_out ;
  wire \Baud_generator.N[8]_i_2_n_0 ;
  wire \Baud_generator.N[9]_i_2_n_0 ;
  wire \Baud_generator.N[9]_i_3_n_0 ;
  wire \Baud_generator.N[9]_i_4_n_0 ;
  wire \Baud_generator.N[9]_i_5_n_0 ;
  wire Clk;
  wire \FSM_UART_receiver.data_counter[0]_i_1_n_0 ;
  wire \FSM_UART_receiver.data_counter[1]_i_1_n_0 ;
  wire \FSM_UART_receiver.data_counter[2]_i_1_n_0 ;
  wire \FSM_UART_receiver.data_counter[2]_i_2_n_0 ;
  wire \FSM_UART_receiver.sample_data[0]_i_1_n_0 ;
  wire \FSM_UART_receiver.sample_data[1]_i_1_n_0 ;
  wire \FSM_UART_receiver.sample_data[2]_i_1_n_0 ;
  wire \FSM_UART_receiver.sample_data[3]_i_1_n_0 ;
  wire \FSM_UART_receiver.sample_data[3]_i_2_n_0 ;
  wire \FSM_UART_receiver.sample_data[3]_i_3_n_0 ;
  wire \FSM_UART_receiver.sample_data_reg_n_0_[0] ;
  wire \FSM_UART_receiver.sample_data_reg_n_0_[1] ;
  wire \FSM_UART_receiver.sample_data_reg_n_0_[2] ;
  wire \FSM_UART_receiver.sample_data_reg_n_0_[3] ;
  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_3_n_0 ;
  wire \FSM_sequential_current_state[1]_i_4_n_0 ;
  wire [9:0]N;
  wire RS232_A9;
  wire baud_clk;
  wire baud_clk_i_1_n_0;
  wire [1:0]current_state__0;
  wire [3:3]data_stored;
  wire \data_stored[0]_i_1_n_0 ;
  wire \data_stored[1]_i_1_n_0 ;
  wire \data_stored[1]_i_2_n_0 ;
  wire \data_stored[2]_i_1_n_0 ;
  wire \data_stored[3]_i_1_n_0 ;
  wire \data_stored[3]_i_2_n_0 ;
  wire \data_stored[4]_i_1_n_0 ;
  wire \data_stored[5]_i_1_n_0 ;
  wire \data_stored[5]_i_2_n_0 ;
  wire \data_stored[6]_i_1_n_0 ;
  wire \data_stored[6]_i_3_n_0 ;
  wire \data_stored[7]_i_1_n_0 ;
  wire \data_stored[7]_i_2_n_0 ;
  wire \data_stored[7]_i_3_n_0 ;
  wire \data_stored[7]_i_4_n_0 ;
  wire \data_stored_reg_n_0_[0] ;
  wire \data_stored_reg_n_0_[1] ;
  wire \data_stored_reg_n_0_[2] ;
  wire \data_stored_reg_n_0_[3] ;
  wire \data_stored_reg_n_0_[4] ;
  wire \data_stored_reg_n_0_[5] ;
  wire \data_stored_reg_n_0_[6] ;
  wire \data_stored_reg_n_0_[7] ;
  wire [6:0]led;
  wire [3:0]led_2;
  wire led_2_sn_1;
  wire reset;
  wire reset_0;
  wire \rx_data_out[7]_i_1_n_0 ;
  wire \rx_data_out_reg_n_0_[0] ;
  wire \rx_data_out_reg_n_0_[1] ;
  wire \rx_data_out_reg_n_0_[2] ;
  wire \rx_data_out_reg_n_0_[3] ;
  wire [2:0]sel0;
  wire [9:0]sel0__0;
  wire tmp_done;

  assign led_2_sn_1 = led_2_sp_1;
  LUT1 #(
    .INIT(2'h1)) 
    \Baud_generator.N[0]_i_1 
       (.I0(sel0__0[0]),
        .O(N[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \Baud_generator.N[1]_i_1 
       (.I0(\Baud_generator.N[9]_i_2_n_0 ),
        .I1(sel0__0[1]),
        .I2(sel0__0[0]),
        .O(N[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \Baud_generator.N[2]_i_1 
       (.I0(\Baud_generator.N[9]_i_2_n_0 ),
        .I1(sel0__0[2]),
        .I2(sel0__0[0]),
        .I3(sel0__0[1]),
        .O(N[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \Baud_generator.N[3]_i_1 
       (.I0(\Baud_generator.N[9]_i_2_n_0 ),
        .I1(sel0__0[3]),
        .I2(sel0__0[2]),
        .I3(sel0__0[1]),
        .I4(sel0__0[0]),
        .O(N[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \Baud_generator.N[4]_i_1 
       (.I0(\Baud_generator.N[9]_i_2_n_0 ),
        .I1(sel0__0[4]),
        .I2(sel0__0[2]),
        .I3(sel0__0[3]),
        .I4(sel0__0[0]),
        .I5(sel0__0[1]),
        .O(N[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h88882888)) 
    \Baud_generator.N[5]_i_1 
       (.I0(\Baud_generator.N[9]_i_2_n_0 ),
        .I1(sel0__0[5]),
        .I2(sel0__0[4]),
        .I3(sel0__0[2]),
        .I4(\Baud_generator.N[8]_i_2_n_0 ),
        .O(N[5]));
  LUT6 #(
    .INIT(64'h8888888828888888)) 
    \Baud_generator.N[6]_i_1 
       (.I0(\Baud_generator.N[9]_i_2_n_0 ),
        .I1(sel0__0[6]),
        .I2(sel0__0[5]),
        .I3(sel0__0[2]),
        .I4(sel0__0[4]),
        .I5(\Baud_generator.N[8]_i_2_n_0 ),
        .O(N[6]));
  LUT5 #(
    .INIT(32'h82888888)) 
    \Baud_generator.N[7]_i_1 
       (.I0(\Baud_generator.N[9]_i_2_n_0 ),
        .I1(sel0__0[7]),
        .I2(\Baud_generator.N[8]_i_2_n_0 ),
        .I3(sel0__0[6]),
        .I4(\Baud_generator.N[9]_i_3_n_0 ),
        .O(N[7]));
  LUT6 #(
    .INIT(64'h8888888828888888)) 
    \Baud_generator.N[8]_i_1 
       (.I0(\Baud_generator.N[9]_i_2_n_0 ),
        .I1(sel0__0[8]),
        .I2(sel0__0[6]),
        .I3(\Baud_generator.N[9]_i_3_n_0 ),
        .I4(sel0__0[7]),
        .I5(\Baud_generator.N[8]_i_2_n_0 ),
        .O(N[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \Baud_generator.N[8]_i_2 
       (.I0(sel0__0[1]),
        .I1(sel0__0[0]),
        .I2(sel0__0[3]),
        .O(\Baud_generator.N[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888828888888)) 
    \Baud_generator.N[9]_i_1 
       (.I0(\Baud_generator.N[9]_i_2_n_0 ),
        .I1(sel0__0[9]),
        .I2(\Baud_generator.N[9]_i_3_n_0 ),
        .I3(sel0__0[6]),
        .I4(sel0__0[8]),
        .I5(\Baud_generator.N[9]_i_4_n_0 ),
        .O(N[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \Baud_generator.N[9]_i_2 
       (.I0(\Baud_generator.N[9]_i_5_n_0 ),
        .I1(sel0__0[7]),
        .I2(sel0__0[1]),
        .I3(sel0__0[0]),
        .I4(sel0__0[3]),
        .O(\Baud_generator.N[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \Baud_generator.N[9]_i_3 
       (.I0(sel0__0[4]),
        .I1(sel0__0[2]),
        .I2(sel0__0[5]),
        .O(\Baud_generator.N[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \Baud_generator.N[9]_i_4 
       (.I0(sel0__0[3]),
        .I1(sel0__0[0]),
        .I2(sel0__0[1]),
        .I3(sel0__0[7]),
        .O(\Baud_generator.N[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \Baud_generator.N[9]_i_5 
       (.I0(sel0__0[8]),
        .I1(sel0__0[9]),
        .I2(sel0__0[5]),
        .I3(sel0__0[6]),
        .I4(sel0__0[4]),
        .I5(sel0__0[2]),
        .O(\Baud_generator.N[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Baud_generator.N_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(N[0]),
        .Q(sel0__0[0]),
        .R(reset_0));
  FDRE #(
    .INIT(1'b0)) 
    \Baud_generator.N_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(N[1]),
        .Q(sel0__0[1]),
        .R(reset_0));
  FDRE #(
    .INIT(1'b0)) 
    \Baud_generator.N_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(N[2]),
        .Q(sel0__0[2]),
        .R(reset_0));
  FDRE #(
    .INIT(1'b0)) 
    \Baud_generator.N_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(N[3]),
        .Q(sel0__0[3]),
        .R(reset_0));
  FDRE #(
    .INIT(1'b0)) 
    \Baud_generator.N_reg[4] 
       (.C(Clk),
        .CE(1'b1),
        .D(N[4]),
        .Q(sel0__0[4]),
        .R(reset_0));
  FDRE #(
    .INIT(1'b0)) 
    \Baud_generator.N_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(N[5]),
        .Q(sel0__0[5]),
        .R(reset_0));
  FDRE #(
    .INIT(1'b0)) 
    \Baud_generator.N_reg[6] 
       (.C(Clk),
        .CE(1'b1),
        .D(N[6]),
        .Q(sel0__0[6]),
        .R(reset_0));
  FDRE #(
    .INIT(1'b0)) 
    \Baud_generator.N_reg[7] 
       (.C(Clk),
        .CE(1'b1),
        .D(N[7]),
        .Q(sel0__0[7]),
        .R(reset_0));
  FDRE #(
    .INIT(1'b0)) 
    \Baud_generator.N_reg[8] 
       (.C(Clk),
        .CE(1'b1),
        .D(N[8]),
        .Q(sel0__0[8]),
        .R(reset_0));
  FDRE #(
    .INIT(1'b0)) 
    \Baud_generator.N_reg[9] 
       (.C(Clk),
        .CE(1'b1),
        .D(N[9]),
        .Q(sel0__0[9]),
        .R(reset_0));
  LUT6 #(
    .INIT(64'hE5A50000F0F0F0F0)) 
    \FSM_UART_receiver.data_counter[0]_i_1 
       (.I0(\FSM_UART_receiver.sample_data[3]_i_3_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(current_state__0[1]),
        .I5(\FSM_UART_receiver.data_counter[2]_i_2_n_0 ),
        .O(\FSM_UART_receiver.data_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEF500000FF00FF00)) 
    \FSM_UART_receiver.data_counter[1]_i_1 
       (.I0(\FSM_UART_receiver.sample_data[3]_i_3_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(current_state__0[1]),
        .I5(\FSM_UART_receiver.data_counter[2]_i_2_n_0 ),
        .O(\FSM_UART_receiver.data_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDCCC0000CCCCCCCC)) 
    \FSM_UART_receiver.data_counter[2]_i_1 
       (.I0(\FSM_UART_receiver.sample_data[3]_i_3_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(current_state__0[1]),
        .I5(\FSM_UART_receiver.data_counter[2]_i_2_n_0 ),
        .O(\FSM_UART_receiver.data_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_UART_receiver.data_counter[2]_i_2 
       (.I0(baud_clk),
        .I1(current_state__0[0]),
        .O(\FSM_UART_receiver.data_counter[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_UART_receiver.data_counter_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(\FSM_UART_receiver.data_counter[0]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(reset_0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_UART_receiver.data_counter_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(\FSM_UART_receiver.data_counter[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(reset_0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_UART_receiver.data_counter_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(\FSM_UART_receiver.data_counter[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(reset_0));
  LUT6 #(
    .INIT(64'h00000000BFFFAAAA)) 
    \FSM_UART_receiver.sample_data[0]_i_1 
       (.I0(current_state__0[0]),
        .I1(\FSM_UART_receiver.sample_data_reg_n_0_[2] ),
        .I2(\FSM_UART_receiver.sample_data_reg_n_0_[1] ),
        .I3(\FSM_UART_receiver.sample_data_reg_n_0_[3] ),
        .I4(current_state__0[1]),
        .I5(\FSM_UART_receiver.sample_data_reg_n_0_[0] ),
        .O(\FSM_UART_receiver.sample_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFF0FF700000)) 
    \FSM_UART_receiver.sample_data[1]_i_1 
       (.I0(\FSM_UART_receiver.sample_data_reg_n_0_[2] ),
        .I1(\FSM_UART_receiver.sample_data_reg_n_0_[3] ),
        .I2(current_state__0[1]),
        .I3(current_state__0[0]),
        .I4(\FSM_UART_receiver.sample_data_reg_n_0_[1] ),
        .I5(\FSM_UART_receiver.sample_data_reg_n_0_[0] ),
        .O(\FSM_UART_receiver.sample_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FCFC00F400FC00)) 
    \FSM_UART_receiver.sample_data[2]_i_1 
       (.I0(\FSM_UART_receiver.sample_data_reg_n_0_[3] ),
        .I1(current_state__0[1]),
        .I2(current_state__0[0]),
        .I3(\FSM_UART_receiver.sample_data_reg_n_0_[2] ),
        .I4(\FSM_UART_receiver.sample_data_reg_n_0_[1] ),
        .I5(\FSM_UART_receiver.sample_data_reg_n_0_[0] ),
        .O(\FSM_UART_receiver.sample_data[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \FSM_UART_receiver.sample_data[3]_i_1 
       (.I0(\FSM_UART_receiver.sample_data[3]_i_3_n_0 ),
        .I1(current_state__0[1]),
        .I2(current_state__0[0]),
        .I3(baud_clk),
        .O(\FSM_UART_receiver.sample_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0AE0E0E0C0E0E0E0)) 
    \FSM_UART_receiver.sample_data[3]_i_2 
       (.I0(current_state__0[1]),
        .I1(current_state__0[0]),
        .I2(\FSM_UART_receiver.sample_data_reg_n_0_[3] ),
        .I3(\FSM_UART_receiver.sample_data_reg_n_0_[2] ),
        .I4(\FSM_UART_receiver.sample_data_reg_n_0_[1] ),
        .I5(\FSM_UART_receiver.sample_data_reg_n_0_[0] ),
        .O(\FSM_UART_receiver.sample_data[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_UART_receiver.sample_data[3]_i_3 
       (.I0(\FSM_UART_receiver.sample_data_reg_n_0_[3] ),
        .I1(\FSM_UART_receiver.sample_data_reg_n_0_[1] ),
        .I2(\FSM_UART_receiver.sample_data_reg_n_0_[2] ),
        .I3(\FSM_UART_receiver.sample_data_reg_n_0_[0] ),
        .O(\FSM_UART_receiver.sample_data[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_UART_receiver.sample_data_reg[0] 
       (.C(Clk),
        .CE(\FSM_UART_receiver.sample_data[3]_i_1_n_0 ),
        .D(\FSM_UART_receiver.sample_data[0]_i_1_n_0 ),
        .Q(\FSM_UART_receiver.sample_data_reg_n_0_[0] ),
        .R(reset_0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_UART_receiver.sample_data_reg[1] 
       (.C(Clk),
        .CE(\FSM_UART_receiver.sample_data[3]_i_1_n_0 ),
        .D(\FSM_UART_receiver.sample_data[1]_i_1_n_0 ),
        .Q(\FSM_UART_receiver.sample_data_reg_n_0_[1] ),
        .R(reset_0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_UART_receiver.sample_data_reg[2] 
       (.C(Clk),
        .CE(\FSM_UART_receiver.sample_data[3]_i_1_n_0 ),
        .D(\FSM_UART_receiver.sample_data[2]_i_1_n_0 ),
        .Q(\FSM_UART_receiver.sample_data_reg_n_0_[2] ),
        .R(reset_0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_UART_receiver.sample_data_reg[3] 
       (.C(Clk),
        .CE(\FSM_UART_receiver.sample_data[3]_i_1_n_0 ),
        .D(\FSM_UART_receiver.sample_data[3]_i_2_n_0 ),
        .Q(\FSM_UART_receiver.sample_data_reg_n_0_[3] ),
        .R(reset_0));
  LUT6 #(
    .INIT(64'h0000FFCFFFFF0050)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(RS232_A9),
        .I1(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I2(baud_clk),
        .I3(current_state__0[1]),
        .I4(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I5(current_state__0[0]),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6C6C7C6C)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(current_state__0[1]),
        .I2(current_state__0[0]),
        .I3(baud_clk),
        .I4(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A8888888)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(baud_clk),
        .I1(current_state__0[0]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .I5(\FSM_sequential_current_state[1]_i_4_n_0 ),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(\FSM_UART_receiver.sample_data_reg_n_0_[0] ),
        .I1(\FSM_UART_receiver.sample_data_reg_n_0_[1] ),
        .I2(\FSM_UART_receiver.sample_data_reg_n_0_[2] ),
        .I3(\FSM_UART_receiver.sample_data_reg_n_0_[3] ),
        .O(\FSM_sequential_current_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \FSM_sequential_current_state[1]_i_4 
       (.I0(\FSM_UART_receiver.sample_data_reg_n_0_[0] ),
        .I1(\FSM_UART_receiver.sample_data_reg_n_0_[2] ),
        .I2(\FSM_UART_receiver.sample_data_reg_n_0_[1] ),
        .I3(\FSM_UART_receiver.sample_data_reg_n_0_[3] ),
        .I4(current_state__0[1]),
        .O(\FSM_sequential_current_state[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00,start:01,data:10,stop:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state__0[0]),
        .R(reset_0));
  (* FSM_ENCODED_STATES = "idle:00,start:01,data:10,stop:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(current_state__0[1]),
        .R(reset_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    baud_clk_i_1
       (.I0(baud_clk),
        .I1(reset),
        .I2(\Baud_generator.N[9]_i_2_n_0 ),
        .O(baud_clk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    baud_clk_reg
       (.C(Clk),
        .CE(1'b1),
        .D(baud_clk_i_1_n_0),
        .Q(baud_clk),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAFFFBAAAA0008)) 
    \data_stored[0]_i_1 
       (.I0(data_stored),
        .I1(\data_stored[6]_i_3_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\data_stored[7]_i_4_n_0 ),
        .I5(\data_stored_reg_n_0_[0] ),
        .O(\data_stored[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \data_stored[1]_i_1 
       (.I0(data_stored),
        .I1(\data_stored[7]_i_3_n_0 ),
        .I2(\data_stored[1]_i_2_n_0 ),
        .I3(sel0[0]),
        .I4(\data_stored[7]_i_4_n_0 ),
        .I5(\data_stored_reg_n_0_[1] ),
        .O(\data_stored[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \data_stored[1]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .O(\data_stored[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \data_stored[2]_i_1 
       (.I0(data_stored),
        .I1(\data_stored[6]_i_3_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\data_stored[7]_i_4_n_0 ),
        .I5(\data_stored_reg_n_0_[2] ),
        .O(\data_stored[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFBAAAA0008)) 
    \data_stored[3]_i_1 
       (.I0(data_stored),
        .I1(\data_stored[7]_i_3_n_0 ),
        .I2(\data_stored[3]_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\data_stored[7]_i_4_n_0 ),
        .I5(\data_stored_reg_n_0_[3] ),
        .O(\data_stored[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \data_stored[3]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(\data_stored[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    \data_stored[4]_i_1 
       (.I0(data_stored),
        .I1(\data_stored[6]_i_3_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\data_stored[7]_i_4_n_0 ),
        .I5(\data_stored_reg_n_0_[4] ),
        .O(\data_stored[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \data_stored[5]_i_1 
       (.I0(data_stored),
        .I1(\data_stored[7]_i_3_n_0 ),
        .I2(\data_stored[5]_i_2_n_0 ),
        .I3(sel0[0]),
        .I4(\data_stored[7]_i_4_n_0 ),
        .I5(\data_stored_reg_n_0_[5] ),
        .O(\data_stored[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_stored[5]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .O(\data_stored[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    \data_stored[6]_i_1 
       (.I0(data_stored),
        .I1(\data_stored[6]_i_3_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(\data_stored[7]_i_4_n_0 ),
        .I5(\data_stored_reg_n_0_[6] ),
        .O(\data_stored[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_stored[6]_i_2 
       (.I0(current_state__0[1]),
        .I1(RS232_A9),
        .O(data_stored));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \data_stored[6]_i_3 
       (.I0(\FSM_UART_receiver.sample_data[3]_i_3_n_0 ),
        .I1(current_state__0[0]),
        .I2(baud_clk),
        .I3(reset),
        .I4(sel0[0]),
        .O(\data_stored[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8888F8FF88880800)) 
    \data_stored[7]_i_1 
       (.I0(current_state__0[1]),
        .I1(RS232_A9),
        .I2(\data_stored[7]_i_2_n_0 ),
        .I3(\data_stored[7]_i_3_n_0 ),
        .I4(\data_stored[7]_i_4_n_0 ),
        .I5(\data_stored_reg_n_0_[7] ),
        .O(\data_stored[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \data_stored[7]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(\data_stored[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \data_stored[7]_i_3 
       (.I0(reset),
        .I1(\FSM_UART_receiver.data_counter[2]_i_2_n_0 ),
        .I2(\FSM_UART_receiver.sample_data_reg_n_0_[0] ),
        .I3(\FSM_UART_receiver.sample_data_reg_n_0_[2] ),
        .I4(\FSM_UART_receiver.sample_data_reg_n_0_[1] ),
        .I5(\FSM_UART_receiver.sample_data_reg_n_0_[3] ),
        .O(\data_stored[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \data_stored[7]_i_4 
       (.I0(reset),
        .I1(baud_clk),
        .I2(current_state__0[0]),
        .I3(current_state__0[1]),
        .O(\data_stored[7]_i_4_n_0 ));
  FDRE \data_stored_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(\data_stored[0]_i_1_n_0 ),
        .Q(\data_stored_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_stored_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(\data_stored[1]_i_1_n_0 ),
        .Q(\data_stored_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_stored_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(\data_stored[2]_i_1_n_0 ),
        .Q(\data_stored_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_stored_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(\data_stored[3]_i_1_n_0 ),
        .Q(\data_stored_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_stored_reg[4] 
       (.C(Clk),
        .CE(1'b1),
        .D(\data_stored[4]_i_1_n_0 ),
        .Q(\data_stored_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_stored_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(\data_stored[5]_i_1_n_0 ),
        .Q(\data_stored_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_stored_reg[6] 
       (.C(Clk),
        .CE(1'b1),
        .D(\data_stored[6]_i_1_n_0 ),
        .Q(\data_stored_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_stored_reg[7] 
       (.C(Clk),
        .CE(1'b1),
        .D(\data_stored[7]_i_1_n_0 ),
        .Q(\data_stored_reg_n_0_[7] ),
        .R(1'b0));
  FDRE done_reg
       (.C(Clk),
        .CE(\rx_data_out[7]_i_1_n_0 ),
        .D(baud_clk),
        .Q(tmp_done),
        .R(reset_0));
  LUT6 #(
    .INIT(64'hABFBFFFFFD5DAAAA)) 
    \led[0]_INST_0 
       (.I0(\A1/mux_out [3]),
        .I1(\rx_data_out_reg_n_0_[0] ),
        .I2(led_2_sn_1),
        .I3(led_2[0]),
        .I4(\A1/mux_out [2]),
        .I5(\A1/mux_out [1]),
        .O(led[0]));
  LUT6 #(
    .INIT(64'hAE6FAEAEAE6F6F6F)) 
    \led[1]_INST_0 
       (.I0(\A1/mux_out [3]),
        .I1(\A1/mux_out [2]),
        .I2(\A1/mux_out [0]),
        .I3(led_2[1]),
        .I4(led_2_sn_1),
        .I5(\rx_data_out_reg_n_0_[1] ),
        .O(led[1]));
  LUT6 #(
    .INIT(64'hAAAA8A80EFEAFFFF)) 
    \led[2]_INST_0 
       (.I0(\A1/mux_out [3]),
        .I1(led_2[1]),
        .I2(led_2_sn_1),
        .I3(\rx_data_out_reg_n_0_[1] ),
        .I4(\A1/mux_out [2]),
        .I5(\A1/mux_out [0]),
        .O(led[2]));
  LUT6 #(
    .INIT(64'h333EEE3EDDDBBBDB)) 
    \led[3]_INST_0 
       (.I0(\A1/mux_out [3]),
        .I1(\A1/mux_out [2]),
        .I2(\rx_data_out_reg_n_0_[1] ),
        .I3(led_2_sn_1),
        .I4(led_2[1]),
        .I5(\A1/mux_out [0]),
        .O(led[3]));
  LUT6 #(
    .INIT(64'h7F677F7F7F676767)) 
    \led[4]_INST_0 
       (.I0(\A1/mux_out [3]),
        .I1(\A1/mux_out [2]),
        .I2(\A1/mux_out [1]),
        .I3(led_2[0]),
        .I4(led_2_sn_1),
        .I5(\rx_data_out_reg_n_0_[0] ),
        .O(led[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[4]_INST_0_i_1 
       (.I0(led_2[1]),
        .I1(led_2_sn_1),
        .I2(\rx_data_out_reg_n_0_[1] ),
        .O(\A1/mux_out [1]));
  LUT6 #(
    .INIT(64'h494449997F777FFF)) 
    \led[5]_INST_0 
       (.I0(\A1/mux_out [3]),
        .I1(\A1/mux_out [0]),
        .I2(led_2[1]),
        .I3(led_2_sn_1),
        .I4(\rx_data_out_reg_n_0_[1] ),
        .I5(\A1/mux_out [2]),
        .O(led[5]));
  LUT6 #(
    .INIT(64'hDDD666D6FFFBBBFB)) 
    \led[6]_INST_0 
       (.I0(\A1/mux_out [3]),
        .I1(\A1/mux_out [2]),
        .I2(\rx_data_out_reg_n_0_[1] ),
        .I3(led_2_sn_1),
        .I4(led_2[1]),
        .I5(\A1/mux_out [0]),
        .O(led[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[6]_INST_0_i_1 
       (.I0(led_2[3]),
        .I1(led_2_sn_1),
        .I2(\rx_data_out_reg_n_0_[3] ),
        .O(\A1/mux_out [3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[6]_INST_0_i_2 
       (.I0(led_2[2]),
        .I1(led_2_sn_1),
        .I2(\rx_data_out_reg_n_0_[2] ),
        .O(\A1/mux_out [2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led[6]_INST_0_i_3 
       (.I0(led_2[0]),
        .I1(led_2_sn_1),
        .I2(\rx_data_out_reg_n_0_[0] ),
        .O(\A1/mux_out [0]));
  LUT4 #(
    .INIT(16'h0080)) 
    \rx_data_out[7]_i_1 
       (.I0(baud_clk),
        .I1(current_state__0[0]),
        .I2(current_state__0[1]),
        .I3(\FSM_UART_receiver.sample_data[3]_i_3_n_0 ),
        .O(\rx_data_out[7]_i_1_n_0 ));
  FDRE \rx_data_out_reg[0] 
       (.C(Clk),
        .CE(\rx_data_out[7]_i_1_n_0 ),
        .D(\data_stored_reg_n_0_[0] ),
        .Q(\rx_data_out_reg_n_0_[0] ),
        .R(reset_0));
  FDRE \rx_data_out_reg[1] 
       (.C(Clk),
        .CE(\rx_data_out[7]_i_1_n_0 ),
        .D(\data_stored_reg_n_0_[1] ),
        .Q(\rx_data_out_reg_n_0_[1] ),
        .R(reset_0));
  FDRE \rx_data_out_reg[2] 
       (.C(Clk),
        .CE(\rx_data_out[7]_i_1_n_0 ),
        .D(\data_stored_reg_n_0_[2] ),
        .Q(\rx_data_out_reg_n_0_[2] ),
        .R(reset_0));
  FDRE \rx_data_out_reg[3] 
       (.C(Clk),
        .CE(\rx_data_out[7]_i_1_n_0 ),
        .D(\data_stored_reg_n_0_[3] ),
        .Q(\rx_data_out_reg_n_0_[3] ),
        .R(reset_0));
  FDRE \rx_data_out_reg[4] 
       (.C(Clk),
        .CE(\rx_data_out[7]_i_1_n_0 ),
        .D(\data_stored_reg_n_0_[4] ),
        .Q(led_2[0]),
        .R(reset_0));
  FDRE \rx_data_out_reg[5] 
       (.C(Clk),
        .CE(\rx_data_out[7]_i_1_n_0 ),
        .D(\data_stored_reg_n_0_[5] ),
        .Q(led_2[1]),
        .R(reset_0));
  FDRE \rx_data_out_reg[6] 
       (.C(Clk),
        .CE(\rx_data_out[7]_i_1_n_0 ),
        .D(\data_stored_reg_n_0_[6] ),
        .Q(led_2[2]),
        .R(reset_0));
  FDRE \rx_data_out_reg[7] 
       (.C(Clk),
        .CE(\rx_data_out[7]_i_1_n_0 ),
        .D(\data_stored_reg_n_0_[7] ),
        .Q(led_2[3]),
        .R(reset_0));
  LUT1 #(
    .INIT(2'h1)) 
    tx_data_out_i_1
       (.I0(reset),
        .O(reset_0));
endmodule

(* ORIG_REF_NAME = "combine" *) 
module UART_3_file_combine_0_0_combine
   (tmp_done,
    reset_0,
    tmp_reg,
    led,
    Clk,
    reset,
    RS232_A9);
  output tmp_done;
  output reset_0;
  output tmp_reg;
  output [6:0]led;
  input Clk;
  input reset;
  input RS232_A9;

  wire Clk;
  wire RS232_A9;
  wire [6:0]led;
  wire reset;
  wire reset_0;
  wire tmp_done;
  wire tmp_reg;

  UART_3_file_combine_0_0_UART_rx A0
       (.Clk(Clk),
        .RS232_A9(RS232_A9),
        .led(led),
        .led_2_sp_1(tmp_reg),
        .reset(reset),
        .reset_0(reset_0),
        .tmp_done(tmp_done));
  UART_3_file_combine_0_0_LEDS_OUT A1
       (.Clk(Clk),
        .\counter_reg[18] (reset_0),
        .tmp_reg(tmp_reg));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module UART_3_file_combine_0_0_debounce
   (flipflop_4,
    flipflop_3,
    flipflop_4_reg_0,
    button,
    Clk,
    reset);
  output flipflop_4;
  output flipflop_3;
  input flipflop_4_reg_0;
  input button;
  input Clk;
  input reset;

  wire Clk;
  wire button;
  wire count0_carry__0_i_1_n_0;
  wire count0_carry__0_i_2_n_0;
  wire count0_carry__0_n_3;
  wire count0_carry_i_1_n_0;
  wire count0_carry_i_2_n_0;
  wire count0_carry_i_3_n_0;
  wire count0_carry_i_4_n_0;
  wire count0_carry_i_5_n_0;
  wire count0_carry_i_6_n_0;
  wire count0_carry_i_7_n_0;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire flipflop_1;
  wire flipflop_2;
  wire flipflop_3;
  wire flipflop_3_i_1_n_0;
  wire flipflop_4;
  wire flipflop_4_reg_0;
  wire \pause_counter.count[0]_i_1_n_0 ;
  wire \pause_counter.count[0]_i_3_n_0 ;
  wire [13:4]\pause_counter.count_reg ;
  wire \pause_counter.count_reg[0]_i_2_n_0 ;
  wire \pause_counter.count_reg[0]_i_2_n_1 ;
  wire \pause_counter.count_reg[0]_i_2_n_2 ;
  wire \pause_counter.count_reg[0]_i_2_n_3 ;
  wire \pause_counter.count_reg[0]_i_2_n_4 ;
  wire \pause_counter.count_reg[0]_i_2_n_5 ;
  wire \pause_counter.count_reg[0]_i_2_n_6 ;
  wire \pause_counter.count_reg[0]_i_2_n_7 ;
  wire \pause_counter.count_reg[12]_i_1_n_3 ;
  wire \pause_counter.count_reg[12]_i_1_n_6 ;
  wire \pause_counter.count_reg[12]_i_1_n_7 ;
  wire \pause_counter.count_reg[4]_i_1_n_0 ;
  wire \pause_counter.count_reg[4]_i_1_n_1 ;
  wire \pause_counter.count_reg[4]_i_1_n_2 ;
  wire \pause_counter.count_reg[4]_i_1_n_3 ;
  wire \pause_counter.count_reg[4]_i_1_n_4 ;
  wire \pause_counter.count_reg[4]_i_1_n_5 ;
  wire \pause_counter.count_reg[4]_i_1_n_6 ;
  wire \pause_counter.count_reg[4]_i_1_n_7 ;
  wire \pause_counter.count_reg[8]_i_1_n_0 ;
  wire \pause_counter.count_reg[8]_i_1_n_1 ;
  wire \pause_counter.count_reg[8]_i_1_n_2 ;
  wire \pause_counter.count_reg[8]_i_1_n_3 ;
  wire \pause_counter.count_reg[8]_i_1_n_4 ;
  wire \pause_counter.count_reg[8]_i_1_n_5 ;
  wire \pause_counter.count_reg[8]_i_1_n_6 ;
  wire \pause_counter.count_reg[8]_i_1_n_7 ;
  wire \pause_counter.count_reg_n_0_[0] ;
  wire \pause_counter.count_reg_n_0_[1] ;
  wire \pause_counter.count_reg_n_0_[2] ;
  wire \pause_counter.count_reg_n_0_[3] ;
  wire reset;
  wire [3:0]NLW_count0_carry_O_UNCONNECTED;
  wire [3:1]NLW_count0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_count0_carry__0_O_UNCONNECTED;
  wire [3:1]\NLW_pause_counter.count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_pause_counter.count_reg[12]_i_1_O_UNCONNECTED ;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({count0_carry_i_1_n_0,count0_carry_i_2_n_0,1'b0,count0_carry_i_3_n_0}),
        .O(NLW_count0_carry_O_UNCONNECTED[3:0]),
        .S({count0_carry_i_4_n_0,count0_carry_i_5_n_0,count0_carry_i_6_n_0,count0_carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({NLW_count0_carry__0_CO_UNCONNECTED[3:1],count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,count0_carry__0_i_1_n_0}),
        .O(NLW_count0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,count0_carry__0_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    count0_carry__0_i_1
       (.I0(\pause_counter.count_reg [13]),
        .O(count0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count0_carry__0_i_2
       (.I0(\pause_counter.count_reg [13]),
        .I1(\pause_counter.count_reg [12]),
        .O(count0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry_i_1
       (.I0(\pause_counter.count_reg [10]),
        .I1(\pause_counter.count_reg [11]),
        .O(count0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count0_carry_i_2
       (.I0(\pause_counter.count_reg [8]),
        .I1(\pause_counter.count_reg [9]),
        .O(count0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry_i_3
       (.I0(\pause_counter.count_reg [5]),
        .I1(\pause_counter.count_reg [4]),
        .O(count0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count0_carry_i_4
       (.I0(\pause_counter.count_reg [10]),
        .I1(\pause_counter.count_reg [11]),
        .O(count0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count0_carry_i_5
       (.I0(\pause_counter.count_reg [9]),
        .I1(\pause_counter.count_reg [8]),
        .O(count0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry_i_6
       (.I0(\pause_counter.count_reg [6]),
        .I1(\pause_counter.count_reg [7]),
        .O(count0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count0_carry_i_7
       (.I0(\pause_counter.count_reg [4]),
        .I1(\pause_counter.count_reg [5]),
        .O(count0_carry_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flipflop_1_reg
       (.C(Clk),
        .CE(1'b1),
        .D(button),
        .Q(flipflop_1),
        .R(flipflop_4_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    flipflop_2_reg
       (.C(Clk),
        .CE(1'b1),
        .D(flipflop_1),
        .Q(flipflop_2),
        .R(flipflop_4_reg_0));
  LUT4 #(
    .INIT(16'hFE40)) 
    flipflop_3_i_1
       (.I0(count0_carry__0_n_3),
        .I1(flipflop_1),
        .I2(flipflop_2),
        .I3(flipflop_3),
        .O(flipflop_3_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flipflop_3_reg
       (.C(Clk),
        .CE(1'b1),
        .D(flipflop_3_i_1_n_0),
        .Q(flipflop_3),
        .R(flipflop_4_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    flipflop_4_reg
       (.C(Clk),
        .CE(1'b1),
        .D(flipflop_3),
        .Q(flipflop_4),
        .R(flipflop_4_reg_0));
  LUT3 #(
    .INIT(8'h6F)) 
    \pause_counter.count[0]_i_1 
       (.I0(flipflop_1),
        .I1(flipflop_2),
        .I2(reset),
        .O(\pause_counter.count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pause_counter.count[0]_i_3 
       (.I0(\pause_counter.count_reg_n_0_[0] ),
        .O(\pause_counter.count[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[0] 
       (.C(Clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[0]_i_2_n_7 ),
        .Q(\pause_counter.count_reg_n_0_[0] ),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pause_counter.count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pause_counter.count_reg[0]_i_2_n_0 ,\pause_counter.count_reg[0]_i_2_n_1 ,\pause_counter.count_reg[0]_i_2_n_2 ,\pause_counter.count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pause_counter.count_reg[0]_i_2_n_4 ,\pause_counter.count_reg[0]_i_2_n_5 ,\pause_counter.count_reg[0]_i_2_n_6 ,\pause_counter.count_reg[0]_i_2_n_7 }),
        .S({\pause_counter.count_reg_n_0_[3] ,\pause_counter.count_reg_n_0_[2] ,\pause_counter.count_reg_n_0_[1] ,\pause_counter.count[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[10] 
       (.C(Clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[8]_i_1_n_5 ),
        .Q(\pause_counter.count_reg [10]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[11] 
       (.C(Clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[8]_i_1_n_4 ),
        .Q(\pause_counter.count_reg [11]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[12] 
       (.C(Clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[12]_i_1_n_7 ),
        .Q(\pause_counter.count_reg [12]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pause_counter.count_reg[12]_i_1 
       (.CI(\pause_counter.count_reg[8]_i_1_n_0 ),
        .CO({\NLW_pause_counter.count_reg[12]_i_1_CO_UNCONNECTED [3:1],\pause_counter.count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pause_counter.count_reg[12]_i_1_O_UNCONNECTED [3:2],\pause_counter.count_reg[12]_i_1_n_6 ,\pause_counter.count_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,\pause_counter.count_reg [13:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[13] 
       (.C(Clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[12]_i_1_n_6 ),
        .Q(\pause_counter.count_reg [13]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[1] 
       (.C(Clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[0]_i_2_n_6 ),
        .Q(\pause_counter.count_reg_n_0_[1] ),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[2] 
       (.C(Clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[0]_i_2_n_5 ),
        .Q(\pause_counter.count_reg_n_0_[2] ),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[3] 
       (.C(Clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[0]_i_2_n_4 ),
        .Q(\pause_counter.count_reg_n_0_[3] ),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[4] 
       (.C(Clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[4]_i_1_n_7 ),
        .Q(\pause_counter.count_reg [4]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pause_counter.count_reg[4]_i_1 
       (.CI(\pause_counter.count_reg[0]_i_2_n_0 ),
        .CO({\pause_counter.count_reg[4]_i_1_n_0 ,\pause_counter.count_reg[4]_i_1_n_1 ,\pause_counter.count_reg[4]_i_1_n_2 ,\pause_counter.count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pause_counter.count_reg[4]_i_1_n_4 ,\pause_counter.count_reg[4]_i_1_n_5 ,\pause_counter.count_reg[4]_i_1_n_6 ,\pause_counter.count_reg[4]_i_1_n_7 }),
        .S(\pause_counter.count_reg [7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[5] 
       (.C(Clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[4]_i_1_n_6 ),
        .Q(\pause_counter.count_reg [5]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[6] 
       (.C(Clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[4]_i_1_n_5 ),
        .Q(\pause_counter.count_reg [6]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[7] 
       (.C(Clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[4]_i_1_n_4 ),
        .Q(\pause_counter.count_reg [7]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[8] 
       (.C(Clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[8]_i_1_n_7 ),
        .Q(\pause_counter.count_reg [8]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pause_counter.count_reg[8]_i_1 
       (.CI(\pause_counter.count_reg[4]_i_1_n_0 ),
        .CO({\pause_counter.count_reg[8]_i_1_n_0 ,\pause_counter.count_reg[8]_i_1_n_1 ,\pause_counter.count_reg[8]_i_1_n_2 ,\pause_counter.count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pause_counter.count_reg[8]_i_1_n_4 ,\pause_counter.count_reg[8]_i_1_n_5 ,\pause_counter.count_reg[8]_i_1_n_6 ,\pause_counter.count_reg[8]_i_1_n_7 }),
        .S(\pause_counter.count_reg [11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \pause_counter.count_reg[9] 
       (.C(Clk),
        .CE(count0_carry__0_n_3),
        .D(\pause_counter.count_reg[8]_i_1_n_6 ),
        .Q(\pause_counter.count_reg [9]),
        .R(\pause_counter.count[0]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "divider" *) 
module UART_3_file_combine_0_0_divider
   (tmp_reg_0,
    Clk,
    \counter_reg[18]_0 );
  output tmp_reg_0;
  input Clk;
  input \counter_reg[18]_0 ;

  wire Clk;
  wire [18:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__2_n_4;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry__3_n_3;
  wire counter0_carry__3_n_6;
  wire counter0_carry__3_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire [18:0]counter_0;
  wire \counter_reg[18]_0 ;
  wire tmp_i_1_n_0;
  wire tmp_i_2_n_0;
  wire tmp_i_3_n_0;
  wire tmp_i_4_n_0;
  wire tmp_i_5_n_0;
  wire tmp_i_6_n_0;
  wire tmp_reg_0;
  wire [3:1]NLW_counter0_carry__3_CO_UNCONNECTED;
  wire [3:2]NLW_counter0_carry__3_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S(counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__2_n_4,counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .S(counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({NLW_counter0_carry__3_CO_UNCONNECTED[3:1],counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__3_O_UNCONNECTED[3:2],counter0_carry__3_n_6,counter0_carry__3_n_7}),
        .S({1'b0,1'b0,counter[18:17]}));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[10]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry__1_n_6),
        .O(counter_0[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[11]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry__1_n_5),
        .O(counter_0[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[12]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry__1_n_4),
        .O(counter_0[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[13]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry__2_n_7),
        .O(counter_0[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[14]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry__2_n_6),
        .O(counter_0[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[15]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry__2_n_5),
        .O(counter_0[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[16]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry__2_n_4),
        .O(counter_0[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[17]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry__3_n_7),
        .O(counter_0[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[18]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry__3_n_6),
        .O(counter_0[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[1]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry_n_7),
        .O(counter_0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[2]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry_n_6),
        .O(counter_0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[3]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry_n_5),
        .O(counter_0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[4]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry_n_4),
        .O(counter_0[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[5]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry__0_n_7),
        .O(counter_0[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[6]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry__0_n_6),
        .O(counter_0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[7]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry__0_n_5),
        .O(counter_0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[8]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry__0_n_4),
        .O(counter_0[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter[9]_i_1 
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(counter0_carry__1_n_7),
        .O(counter_0[9]));
  FDPE #(
    .INIT(1'b1)) 
    \counter_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(counter_0[0]),
        .PRE(\counter_reg[18]_0 ),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[12]),
        .Q(counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[13]),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[14]),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[15]),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[16]),
        .Q(counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[17]),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[18]),
        .Q(counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[8]),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(counter_0[9]),
        .Q(counter[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    tmp_i_1
       (.I0(tmp_i_2_n_0),
        .I1(tmp_i_3_n_0),
        .I2(tmp_i_4_n_0),
        .I3(tmp_i_5_n_0),
        .I4(tmp_i_6_n_0),
        .I5(tmp_reg_0),
        .O(tmp_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tmp_i_2
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[4]),
        .I3(counter[3]),
        .O(tmp_i_2_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    tmp_i_3
       (.I0(counter[13]),
        .I1(counter[14]),
        .I2(counter[16]),
        .I3(counter[15]),
        .O(tmp_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    tmp_i_4
       (.I0(counter[18]),
        .I1(counter[17]),
        .I2(counter[0]),
        .O(tmp_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tmp_i_5
       (.I0(counter[10]),
        .I1(counter[9]),
        .I2(counter[12]),
        .I3(counter[11]),
        .O(tmp_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    tmp_i_6
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[8]),
        .I3(counter[7]),
        .O(tmp_i_6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    tmp_reg
       (.C(Clk),
        .CE(1'b1),
        .CLR(\counter_reg[18]_0 ),
        .D(tmp_i_1_n_0),
        .Q(tmp_reg_0));
endmodule

(* ORIG_REF_NAME = "file_combine" *) 
module UART_3_file_combine_0_0_file_combine
   (tmp_reg,
    led,
    RS232_D10,
    RS232_A9,
    Clk,
    button,
    reset,
    data_in);
  output tmp_reg;
  output [6:0]led;
  output RS232_D10;
  input RS232_A9;
  input Clk;
  input button;
  input reset;
  input [7:0]data_in;

  wire A1_n_1;
  wire Clk;
  wire RS232_A9;
  wire RS232_D10;
  wire button;
  wire [7:0]data_in;
  wire flipflop_3;
  wire flipflop_4;
  wire [6:0]led;
  wire reset;
  wire tmp_done;
  wire tmp_reg;

  UART_3_file_combine_0_0_debounce A0
       (.Clk(Clk),
        .button(button),
        .flipflop_3(flipflop_3),
        .flipflop_4(flipflop_4),
        .flipflop_4_reg_0(A1_n_1),
        .reset(reset));
  UART_3_file_combine_0_0_combine A1
       (.Clk(Clk),
        .RS232_A9(RS232_A9),
        .led(led),
        .reset(reset),
        .reset_0(A1_n_1),
        .tmp_done(tmp_done),
        .tmp_reg(tmp_reg));
  UART_3_file_combine_0_0_tx_UART A2
       (.Clk(Clk),
        .RS232_D10(RS232_D10),
        .data_in(data_in),
        .flipflop_3(flipflop_3),
        .flipflop_4(flipflop_4),
        .reset(reset),
        .start_rst_reg_0(A1_n_1),
        .tmp_done(tmp_done));
endmodule

(* ORIG_REF_NAME = "tx_UART" *) 
module UART_3_file_combine_0_0_tx_UART
   (RS232_D10,
    Clk,
    start_rst_reg_0,
    reset,
    tmp_done,
    flipflop_4,
    flipflop_3,
    data_in);
  output RS232_D10;
  input Clk;
  input start_rst_reg_0;
  input reset;
  input tmp_done;
  input flipflop_4;
  input flipflop_3;
  input [7:0]data_in;

  wire Clk;
  wire \FSM_onehot_current_state[3]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_2_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_onehot_current_state_reg_n_0_[3] ;
  wire RS232_D10;
  wire [13:0]UART_clk;
  wire baud_clk;
  wire baud_clk_i_1__0_n_0;
  wire \data_counter[0]_i_1_n_0 ;
  wire \data_counter[1]_i_1_n_0 ;
  wire \data_counter[2]_i_1_n_0 ;
  wire \data_counter_reg_n_0_[0] ;
  wire \data_counter_reg_n_0_[1] ;
  wire \data_counter_reg_n_0_[2] ;
  wire [7:0]data_in;
  wire data_stored;
  wire \data_stored_reg_n_0_[0] ;
  wire \data_stored_reg_n_0_[1] ;
  wire \data_stored_reg_n_0_[2] ;
  wire \data_stored_reg_n_0_[3] ;
  wire \data_stored_reg_n_0_[4] ;
  wire \data_stored_reg_n_0_[5] ;
  wire \data_stored_reg_n_0_[6] ;
  wire \data_stored_reg_n_0_[7] ;
  wire flipflop_3;
  wire flipflop_4;
  wire \frequency_divider.UART_clk[13]_i_2_n_0 ;
  wire \frequency_divider.UART_clk[13]_i_4_n_0 ;
  wire \frequency_divider.UART_clk[13]_i_5_n_0 ;
  wire \frequency_divider.UART_clk_reg[12]_i_2_n_0 ;
  wire \frequency_divider.UART_clk_reg[12]_i_2_n_1 ;
  wire \frequency_divider.UART_clk_reg[12]_i_2_n_2 ;
  wire \frequency_divider.UART_clk_reg[12]_i_2_n_3 ;
  wire \frequency_divider.UART_clk_reg[12]_i_2_n_4 ;
  wire \frequency_divider.UART_clk_reg[12]_i_2_n_5 ;
  wire \frequency_divider.UART_clk_reg[12]_i_2_n_6 ;
  wire \frequency_divider.UART_clk_reg[12]_i_2_n_7 ;
  wire \frequency_divider.UART_clk_reg[13]_i_3_n_7 ;
  wire \frequency_divider.UART_clk_reg[4]_i_2_n_0 ;
  wire \frequency_divider.UART_clk_reg[4]_i_2_n_1 ;
  wire \frequency_divider.UART_clk_reg[4]_i_2_n_2 ;
  wire \frequency_divider.UART_clk_reg[4]_i_2_n_3 ;
  wire \frequency_divider.UART_clk_reg[4]_i_2_n_4 ;
  wire \frequency_divider.UART_clk_reg[4]_i_2_n_5 ;
  wire \frequency_divider.UART_clk_reg[4]_i_2_n_6 ;
  wire \frequency_divider.UART_clk_reg[4]_i_2_n_7 ;
  wire \frequency_divider.UART_clk_reg[8]_i_2_n_0 ;
  wire \frequency_divider.UART_clk_reg[8]_i_2_n_1 ;
  wire \frequency_divider.UART_clk_reg[8]_i_2_n_2 ;
  wire \frequency_divider.UART_clk_reg[8]_i_2_n_3 ;
  wire \frequency_divider.UART_clk_reg[8]_i_2_n_4 ;
  wire \frequency_divider.UART_clk_reg[8]_i_2_n_5 ;
  wire \frequency_divider.UART_clk_reg[8]_i_2_n_6 ;
  wire \frequency_divider.UART_clk_reg[8]_i_2_n_7 ;
  wire reset;
  wire rst_counter_i_1_n_0;
  wire rst_counter_reg_n_0;
  wire [13:0]sel0__1;
  wire start_rst_i_1_n_0;
  wire start_rst_reg_0;
  wire start_rst_reg_n_0;
  wire tmp_done;
  wire tx_data_out_i_2_n_0;
  wire tx_data_out_i_3_n_0;
  wire tx_data_out_i_4_n_0;
  wire tx_data_out_i_5_n_0;
  wire tx_enable;
  wire tx_enable_i_1_n_0;
  wire [3:0]\NLW_frequency_divider.UART_clk_reg[13]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_frequency_divider.UART_clk_reg[13]_i_3_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFFC888)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(baud_clk),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(tx_enable),
        .I4(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .O(\FSM_onehot_current_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    \FSM_onehot_current_state[3]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\data_counter_reg_n_0_[1] ),
        .I2(\data_counter_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I4(\data_counter_reg_n_0_[2] ),
        .I5(baud_clk),
        .O(\FSM_onehot_current_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:0001,start:0010,data:0100,stop:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(Clk),
        .CE(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ),
        .S(start_rst_reg_0));
  (* FSM_ENCODED_STATES = "idle:0001,start:0010,data:0100,stop:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(Clk),
        .CE(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ),
        .R(start_rst_reg_0));
  (* FSM_ENCODED_STATES = "idle:0001,start:0010,data:0100,stop:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(Clk),
        .CE(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(start_rst_reg_0));
  (* FSM_ENCODED_STATES = "idle:0001,start:0010,data:0100,stop:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(Clk),
        .CE(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ),
        .R(start_rst_reg_0));
  LUT3 #(
    .INIT(8'h04)) 
    baud_clk_i_1__0
       (.I0(baud_clk),
        .I1(reset),
        .I2(\frequency_divider.UART_clk[13]_i_2_n_0 ),
        .O(baud_clk_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    baud_clk_reg
       (.C(Clk),
        .CE(1'b1),
        .D(baud_clk_i_1__0_n_0),
        .Q(baud_clk),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \data_counter[0]_i_1 
       (.I0(\data_counter_reg_n_0_[0] ),
        .I1(baud_clk),
        .I2(reset),
        .I3(rst_counter_reg_n_0),
        .O(\data_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00006A00)) 
    \data_counter[1]_i_1 
       (.I0(\data_counter_reg_n_0_[1] ),
        .I1(baud_clk),
        .I2(\data_counter_reg_n_0_[0] ),
        .I3(reset),
        .I4(rst_counter_reg_n_0),
        .O(\data_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAA0000)) 
    \data_counter[2]_i_1 
       (.I0(\data_counter_reg_n_0_[2] ),
        .I1(baud_clk),
        .I2(\data_counter_reg_n_0_[0] ),
        .I3(\data_counter_reg_n_0_[1] ),
        .I4(reset),
        .I5(rst_counter_reg_n_0),
        .O(\data_counter[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(\data_counter[0]_i_1_n_0 ),
        .Q(\data_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(\data_counter[1]_i_1_n_0 ),
        .Q(\data_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_counter_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(\data_counter[2]_i_1_n_0 ),
        .Q(\data_counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \data_stored[7]_i_1 
       (.I0(reset),
        .I1(start_rst_reg_n_0),
        .I2(tmp_done),
        .I3(tx_enable),
        .I4(flipflop_4),
        .I5(flipflop_3),
        .O(data_stored));
  FDRE #(
    .INIT(1'b0)) 
    \data_stored_reg[0] 
       (.C(Clk),
        .CE(data_stored),
        .D(data_in[0]),
        .Q(\data_stored_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_stored_reg[1] 
       (.C(Clk),
        .CE(data_stored),
        .D(data_in[1]),
        .Q(\data_stored_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_stored_reg[2] 
       (.C(Clk),
        .CE(data_stored),
        .D(data_in[2]),
        .Q(\data_stored_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_stored_reg[3] 
       (.C(Clk),
        .CE(data_stored),
        .D(data_in[3]),
        .Q(\data_stored_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_stored_reg[4] 
       (.C(Clk),
        .CE(data_stored),
        .D(data_in[4]),
        .Q(\data_stored_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_stored_reg[5] 
       (.C(Clk),
        .CE(data_stored),
        .D(data_in[5]),
        .Q(\data_stored_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_stored_reg[6] 
       (.C(Clk),
        .CE(data_stored),
        .D(data_in[6]),
        .Q(\data_stored_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_stored_reg[7] 
       (.C(Clk),
        .CE(data_stored),
        .D(data_in[7]),
        .Q(\data_stored_reg_n_0_[7] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \frequency_divider.UART_clk[0]_i_1 
       (.I0(sel0__1[0]),
        .O(UART_clk[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frequency_divider.UART_clk[10]_i_1 
       (.I0(\frequency_divider.UART_clk[13]_i_2_n_0 ),
        .I1(\frequency_divider.UART_clk_reg[12]_i_2_n_6 ),
        .O(UART_clk[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frequency_divider.UART_clk[11]_i_1 
       (.I0(\frequency_divider.UART_clk[13]_i_2_n_0 ),
        .I1(\frequency_divider.UART_clk_reg[12]_i_2_n_5 ),
        .O(UART_clk[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frequency_divider.UART_clk[12]_i_1 
       (.I0(\frequency_divider.UART_clk[13]_i_2_n_0 ),
        .I1(\frequency_divider.UART_clk_reg[12]_i_2_n_4 ),
        .O(UART_clk[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \frequency_divider.UART_clk[13]_i_1 
       (.I0(\frequency_divider.UART_clk[13]_i_2_n_0 ),
        .I1(\frequency_divider.UART_clk_reg[13]_i_3_n_7 ),
        .O(UART_clk[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \frequency_divider.UART_clk[13]_i_2 
       (.I0(\frequency_divider.UART_clk[13]_i_4_n_0 ),
        .I1(sel0__1[3]),
        .I2(sel0__1[2]),
        .I3(sel0__1[5]),
        .I4(sel0__1[4]),
        .I5(\frequency_divider.UART_clk[13]_i_5_n_0 ),
        .O(\frequency_divider.UART_clk[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \frequency_divider.UART_clk[13]_i_4 
       (.I0(sel0__1[7]),
        .I1(sel0__1[6]),
        .I2(sel0__1[9]),
        .I3(sel0__1[8]),
        .O(\frequency_divider.UART_clk[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \frequency_divider.UART_clk[13]_i_5 
       (.I0(sel0__1[12]),
        .I1(sel0__1[13]),
        .I2(sel0__1[10]),
        .I3(sel0__1[11]),
        .I4(sel0__1[0]),
        .I5(sel0__1[1]),
        .O(\frequency_divider.UART_clk[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frequency_divider.UART_clk[1]_i_1 
       (.I0(\frequency_divider.UART_clk[13]_i_2_n_0 ),
        .I1(\frequency_divider.UART_clk_reg[4]_i_2_n_7 ),
        .O(UART_clk[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frequency_divider.UART_clk[2]_i_1 
       (.I0(\frequency_divider.UART_clk[13]_i_2_n_0 ),
        .I1(\frequency_divider.UART_clk_reg[4]_i_2_n_6 ),
        .O(UART_clk[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frequency_divider.UART_clk[3]_i_1 
       (.I0(\frequency_divider.UART_clk[13]_i_2_n_0 ),
        .I1(\frequency_divider.UART_clk_reg[4]_i_2_n_5 ),
        .O(UART_clk[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frequency_divider.UART_clk[4]_i_1 
       (.I0(\frequency_divider.UART_clk[13]_i_2_n_0 ),
        .I1(\frequency_divider.UART_clk_reg[4]_i_2_n_4 ),
        .O(UART_clk[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frequency_divider.UART_clk[5]_i_1 
       (.I0(\frequency_divider.UART_clk[13]_i_2_n_0 ),
        .I1(\frequency_divider.UART_clk_reg[8]_i_2_n_7 ),
        .O(UART_clk[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frequency_divider.UART_clk[6]_i_1 
       (.I0(\frequency_divider.UART_clk[13]_i_2_n_0 ),
        .I1(\frequency_divider.UART_clk_reg[8]_i_2_n_6 ),
        .O(UART_clk[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frequency_divider.UART_clk[7]_i_1 
       (.I0(\frequency_divider.UART_clk[13]_i_2_n_0 ),
        .I1(\frequency_divider.UART_clk_reg[8]_i_2_n_5 ),
        .O(UART_clk[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frequency_divider.UART_clk[8]_i_1 
       (.I0(\frequency_divider.UART_clk[13]_i_2_n_0 ),
        .I1(\frequency_divider.UART_clk_reg[8]_i_2_n_4 ),
        .O(UART_clk[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frequency_divider.UART_clk[9]_i_1 
       (.I0(\frequency_divider.UART_clk[13]_i_2_n_0 ),
        .I1(\frequency_divider.UART_clk_reg[12]_i_2_n_7 ),
        .O(UART_clk[9]));
  FDRE #(
    .INIT(1'b0)) 
    \frequency_divider.UART_clk_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(UART_clk[0]),
        .Q(sel0__1[0]),
        .R(start_rst_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \frequency_divider.UART_clk_reg[10] 
       (.C(Clk),
        .CE(1'b1),
        .D(UART_clk[10]),
        .Q(sel0__1[10]),
        .R(start_rst_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \frequency_divider.UART_clk_reg[11] 
       (.C(Clk),
        .CE(1'b1),
        .D(UART_clk[11]),
        .Q(sel0__1[11]),
        .R(start_rst_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \frequency_divider.UART_clk_reg[12] 
       (.C(Clk),
        .CE(1'b1),
        .D(UART_clk[12]),
        .Q(sel0__1[12]),
        .R(start_rst_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \frequency_divider.UART_clk_reg[12]_i_2 
       (.CI(\frequency_divider.UART_clk_reg[8]_i_2_n_0 ),
        .CO({\frequency_divider.UART_clk_reg[12]_i_2_n_0 ,\frequency_divider.UART_clk_reg[12]_i_2_n_1 ,\frequency_divider.UART_clk_reg[12]_i_2_n_2 ,\frequency_divider.UART_clk_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frequency_divider.UART_clk_reg[12]_i_2_n_4 ,\frequency_divider.UART_clk_reg[12]_i_2_n_5 ,\frequency_divider.UART_clk_reg[12]_i_2_n_6 ,\frequency_divider.UART_clk_reg[12]_i_2_n_7 }),
        .S(sel0__1[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \frequency_divider.UART_clk_reg[13] 
       (.C(Clk),
        .CE(1'b1),
        .D(UART_clk[13]),
        .Q(sel0__1[13]),
        .R(start_rst_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \frequency_divider.UART_clk_reg[13]_i_3 
       (.CI(\frequency_divider.UART_clk_reg[12]_i_2_n_0 ),
        .CO(\NLW_frequency_divider.UART_clk_reg[13]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_frequency_divider.UART_clk_reg[13]_i_3_O_UNCONNECTED [3:1],\frequency_divider.UART_clk_reg[13]_i_3_n_7 }),
        .S({1'b0,1'b0,1'b0,sel0__1[13]}));
  FDRE #(
    .INIT(1'b0)) 
    \frequency_divider.UART_clk_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(UART_clk[1]),
        .Q(sel0__1[1]),
        .R(start_rst_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \frequency_divider.UART_clk_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(UART_clk[2]),
        .Q(sel0__1[2]),
        .R(start_rst_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \frequency_divider.UART_clk_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(UART_clk[3]),
        .Q(sel0__1[3]),
        .R(start_rst_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \frequency_divider.UART_clk_reg[4] 
       (.C(Clk),
        .CE(1'b1),
        .D(UART_clk[4]),
        .Q(sel0__1[4]),
        .R(start_rst_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \frequency_divider.UART_clk_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\frequency_divider.UART_clk_reg[4]_i_2_n_0 ,\frequency_divider.UART_clk_reg[4]_i_2_n_1 ,\frequency_divider.UART_clk_reg[4]_i_2_n_2 ,\frequency_divider.UART_clk_reg[4]_i_2_n_3 }),
        .CYINIT(sel0__1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frequency_divider.UART_clk_reg[4]_i_2_n_4 ,\frequency_divider.UART_clk_reg[4]_i_2_n_5 ,\frequency_divider.UART_clk_reg[4]_i_2_n_6 ,\frequency_divider.UART_clk_reg[4]_i_2_n_7 }),
        .S(sel0__1[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \frequency_divider.UART_clk_reg[5] 
       (.C(Clk),
        .CE(1'b1),
        .D(UART_clk[5]),
        .Q(sel0__1[5]),
        .R(start_rst_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \frequency_divider.UART_clk_reg[6] 
       (.C(Clk),
        .CE(1'b1),
        .D(UART_clk[6]),
        .Q(sel0__1[6]),
        .R(start_rst_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \frequency_divider.UART_clk_reg[7] 
       (.C(Clk),
        .CE(1'b1),
        .D(UART_clk[7]),
        .Q(sel0__1[7]),
        .R(start_rst_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \frequency_divider.UART_clk_reg[8] 
       (.C(Clk),
        .CE(1'b1),
        .D(UART_clk[8]),
        .Q(sel0__1[8]),
        .R(start_rst_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \frequency_divider.UART_clk_reg[8]_i_2 
       (.CI(\frequency_divider.UART_clk_reg[4]_i_2_n_0 ),
        .CO({\frequency_divider.UART_clk_reg[8]_i_2_n_0 ,\frequency_divider.UART_clk_reg[8]_i_2_n_1 ,\frequency_divider.UART_clk_reg[8]_i_2_n_2 ,\frequency_divider.UART_clk_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frequency_divider.UART_clk_reg[8]_i_2_n_4 ,\frequency_divider.UART_clk_reg[8]_i_2_n_5 ,\frequency_divider.UART_clk_reg[8]_i_2_n_6 ,\frequency_divider.UART_clk_reg[8]_i_2_n_7 }),
        .S(sel0__1[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \frequency_divider.UART_clk_reg[9] 
       (.C(Clk),
        .CE(1'b1),
        .D(UART_clk[9]),
        .Q(sel0__1[9]),
        .R(start_rst_reg_0));
  LUT5 #(
    .INIT(32'hFAFFFAC0)) 
    rst_counter_i_1
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(baud_clk),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I4(rst_counter_reg_n_0),
        .O(rst_counter_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    rst_counter_reg
       (.C(Clk),
        .CE(1'b1),
        .D(rst_counter_i_1_n_0),
        .Q(rst_counter_reg_n_0),
        .S(start_rst_reg_0));
  LUT4 #(
    .INIT(16'hBFA0)) 
    start_rst_i_1
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(baud_clk),
        .I3(start_rst_reg_n_0),
        .O(start_rst_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    start_rst_reg
       (.C(Clk),
        .CE(1'b1),
        .D(start_rst_i_1_n_0),
        .Q(start_rst_reg_n_0),
        .S(start_rst_reg_0));
  LUT3 #(
    .INIT(8'hB8)) 
    tx_data_out_i_2
       (.I0(tx_data_out_i_3_n_0),
        .I1(baud_clk),
        .I2(RS232_D10),
        .O(tx_data_out_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFEEFEFEEEEEEEEE)) 
    tx_data_out_i_3
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(tx_data_out_i_4_n_0),
        .I3(tx_data_out_i_5_n_0),
        .I4(\data_counter_reg_n_0_[0] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(tx_data_out_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_data_out_i_4
       (.I0(\data_stored_reg_n_0_[6] ),
        .I1(\data_stored_reg_n_0_[2] ),
        .I2(\data_counter_reg_n_0_[1] ),
        .I3(\data_stored_reg_n_0_[4] ),
        .I4(\data_counter_reg_n_0_[2] ),
        .I5(\data_stored_reg_n_0_[0] ),
        .O(tx_data_out_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_data_out_i_5
       (.I0(\data_stored_reg_n_0_[7] ),
        .I1(\data_stored_reg_n_0_[3] ),
        .I2(\data_counter_reg_n_0_[1] ),
        .I3(\data_stored_reg_n_0_[5] ),
        .I4(\data_counter_reg_n_0_[2] ),
        .I5(\data_stored_reg_n_0_[1] ),
        .O(tx_data_out_i_5_n_0));
  FDSE tx_data_out_reg
       (.C(Clk),
        .CE(1'b1),
        .D(tx_data_out_i_2_n_0),
        .Q(RS232_D10),
        .S(start_rst_reg_0));
  LUT6 #(
    .INIT(64'h4040444040404040)) 
    tx_enable_i_1
       (.I0(start_rst_reg_n_0),
        .I1(reset),
        .I2(tx_enable),
        .I3(tmp_done),
        .I4(flipflop_4),
        .I5(flipflop_3),
        .O(tx_enable_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_enable_reg
       (.C(Clk),
        .CE(1'b1),
        .D(tx_enable_i_1_n_0),
        .Q(tx_enable),
        .R(1'b0));
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
