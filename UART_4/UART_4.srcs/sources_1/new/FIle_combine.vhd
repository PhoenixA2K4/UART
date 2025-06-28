----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2025 11:30:57 PM
-- Design Name: 
-- Module Name: FIle_combine - Behavioral
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

entity FIle_combine is
    Port ( 
        Clk, reset, button: in std_logic;
        RS232_A9: in std_logic;
        RS232_D10: out std_logic
    );
end FIle_combine;

architecture Behavioral of FIle_combine is
    signal tmp_done, clock: std_logic;
    signal data_out: std_logic_vector(7 downto 0);
    signal data_in: std_logic_vector(7 downto 0);
    signal sw: std_logic;
begin
    A0: entity work.UART_rx
    port map(
        clk => Clk,
        rst => reset,
        rx_data_in => RS232_A9,
        rx_data_out => data_out,
        done => tmp_done,
        div => clock
    );
    
    A1: entity work.Registor
    port map(
        clk => clk,
        rst => reset,
        done => tmp_done,
        button => sw,
        data_in => data_out,
        data_out => data_in
    );
    
    A2:entity work.debounce
    port map(
        clk => clk,
        reset => reset,
        button_in => button,
        button_out => sw
    );
    
    A3: entity work.tx_UART
    port map(
        clk => clk,
        rst => reset,
        tx_start => sw,
        tx_data_in => data_in,
        tx_data_out => RS232_D10
    );
    
    
end Behavioral;
