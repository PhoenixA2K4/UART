----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2025 01:39:57 PM
-- Design Name: 
-- Module Name: LEDS_OUT - Behavioral
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

entity LEDS_OUT is
    Port ( 
        A: in std_logic_vector(3 downto 0);
        B: in std_logic_vector(3 downto 0);
        Clk100M: in std_logic;
        reset: in std_logic;
        led: out std_logic_vector(6 downto 0);
        CAT: out std_logic
    );
end LEDS_OUT;

architecture Behavioral of LEDS_OUT is
    signal clock: std_logic;
    --signal B_tmp: std_logic_vector(3 downto 0) := "1111";
    signal choose: std_logic;
    signal mux_out: std_logic_vector(3 downto 0);
begin
    A0:entity work.divider
    generic map(N => 1e6)
    port map(
        Clk100M => Clk100M,
        rst => reset,
        Clk1s => choose
    );
    
    A1:entity work.mux_2
    port map(
        A => A,
        B => B,
        sel => choose,
        Y => mux_out
    );
    
    A2:entity work.segment_15
    port map(
        data_in => mux_out,
        data_out => led
    );
    
    CAT <= choose;
end Behavioral;

