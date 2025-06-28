----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/15/2025 12:12:44 PM
-- Design Name: 
-- Module Name: Combine_file - Behavioral
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

entity Combine_file is
    Port (
        Clk100M : in std_logic;
        reset: in std_logic;
        enable: in std_logic;
        data_in: in std_logic;
        led: out std_logic_vector(6 downto 0);
        CAT: out std_logic
     );
end Combine_file;

architecture Behavioral of Combine_file is
    signal tmp_done: std_logic;
    signal ascii: std_logic_vector(7 downto 0);
    signal led_1, led_2: std_logic_vector(3 downto 0);
    signal clock: std_logic;
begin
    U0: entity work.Receiver
    port map(
        clk => Clk100M, 
        rst => reset,
        done => tmp_done,
        rx_data_in => data_in,
        rx_data_out => ascii,
        div => clock
    );
    
    U1: entity work.FSM
    port map(
        Clk => clock,
        rst => reset,
        enable => enable,
        data_in => ascii,
        done => tmp_done,
        data_out(3 downto 0) => led_1,
        data_out( 7 downto 4  ) => led_2
    );
    
    U2: entity work.LEDS_OUT
    port map(
        A => led_1,
        B => led_2,
        reset => reset,
        Clk100M => Clk100M,
        led => led,
        CAT => CAT
    );
end Behavioral;

