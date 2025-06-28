----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2025 10:35:03 PM
-- Design Name: 
-- Module Name: file_combine - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity file_combine is
    Port ( 
        Clk, reset: in std_logic;
        button: in std_logic;
        RS232_A9: in std_logic;
        RS232_D10: out std_logic;
        data_in: in std_logic_vector(7 downto 0);
        CAT: out std_logic;
        led: out std_logic_vector(6 downto 0)
        );
end file_combine;

architecture Behavioral of file_combine is
    signal button_out: std_logic;
    signal tmp_done: std_logic;
begin
    A0: entity work.debounce
    port map(
        clk => clk,
        button_in => button,
        button_out => button_out,
        reset => reset
    );
    
    A1: entity work.combine
    port map(
        Clk100M => clk,
        RX => RS232_A9,
        reset => reset,
        led => led,
        CAT => CAT,
        done => tmp_done
    );
    
    A2: entity work.tx_UART
    port map(
        clk => clk,
        rst => reset,
        tx_data_in => data_in,
        tx_data_out => RS232_D10,
        done => tmp_done,
        tx_start => button_out
    );
end Behavioral;
