----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2025 12:52:20 PM
-- Design Name: 
-- Module Name: mux_2 - Behavioral
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

entity mux_2 is
    Port (
        A, B: in std_logic_vector( 3 downto 0 );
        sel: in std_logic;
        Y: out std_logic_vector(3 downto 0)
     );
end mux_2;

architecture Behavioral of mux_2 is
begin
    with sel select
        Y <= A when '0',
            B when others;
end Behavioral;

