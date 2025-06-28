----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2025 04:16:05 PM
-- Design Name: 
-- Module Name: Adder - Behavioral
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

entity Adder is
    Port ( 
        baud_clk: in std_logic;
        rst: in std_logic;
        button: in std_logic;
        data_in: in std_logic_vector(7 downto 0);
        done: in std_logic;
        C_out: out std_logic;
        S: out std_logic_vector ( 7 downto 0 )
    );
end Adder;

architecture Behavioral of Adder is
    signal tmp_1, tmp_2: std_logic_vector(7 downto 0);
    signal Ci: std_logic := '0';
begin
    A0: entity work.Registor
    port map(
        baud_clk => baud_clk,
        rst => rst,
        data_in => data_in,
        button => button,
        done => done,
        data_out_1 => tmp_1,
        data_out_2 => tmp_2
    );

    A1: entity work.adder_8bit
    port map(
        a => tmp_1,
        b => tmp_2,
        Ci => Ci,
        C_out => C_out,
        S => S
    );
end Behavioral;
