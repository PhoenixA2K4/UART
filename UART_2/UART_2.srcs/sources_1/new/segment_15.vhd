----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2025 01:17:09 PM
-- Design Name: 
-- Module Name: segment_15 - Behavioral
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

entity segment_15 is
    Port (
        data_in: in std_logic_vector (3 downto 0 );
        data_out: out std_logic_vector (6 downto 0)
     );
end segment_15;

architecture Behavioral of segment_15 is
begin
    process(data_in)
    begin
        case data_in is
            when "0000" => data_out <= "1111110";
            when "0001" => data_out <= "0110000";
            when "0010" => data_out <= "1101101";
            when "0011" => data_out <= "1111001";
            when "0100" => data_out <= "0110011";
            when "0101" => data_out <= "1011011";
            when "0110" => data_out <= "1011111";
            when "0111" => data_out <= "1110000";
            when "1000" => data_out <= "1111111";
            when "1001" => data_out <= "1111011";
            when "1010" => data_out <= "1110111";
            when "1011" => data_out <= "0011111";
            when "1100" => data_out <= "1001110";
            when "1101" => data_out <= "0111101";
            when "1110" => data_out <= "1001111";
            when others => data_out <= "1000111";
        end case;
    end process;
end Behavioral;

