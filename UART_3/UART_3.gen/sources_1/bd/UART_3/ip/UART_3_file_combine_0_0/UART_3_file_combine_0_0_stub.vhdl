-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Apr 17 22:48:01 2025
-- Host        : LAPTOP-HRR3FUNQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Acer/Downloads/UART_3/UART_3.gen/sources_1/bd/UART_3/ip/UART_3_file_combine_0_0/UART_3_file_combine_0_0_stub.vhdl
-- Design      : UART_3_file_combine_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART_3_file_combine_0_0 is
  Port ( 
    Clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    button : in STD_LOGIC;
    RS232_A9 : in STD_LOGIC;
    RS232_D10 : out STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CAT : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end UART_3_file_combine_0_0;

architecture stub of UART_3_file_combine_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,reset,button,RS232_A9,RS232_D10,data_in[7:0],CAT,led[6:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "file_combine,Vivado 2020.2";
begin
end;
