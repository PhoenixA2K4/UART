----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2025 01:10:35 PM
-- Design Name: 
-- Module Name: divider - Behavioral
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

entity divider is
    generic(N: integer);
    Port ( 
        Clk100M, rst: in std_logic;
        Clk1s: out std_logic
    );
end divider;

architecture Behavioral of divider is
    signal tmp: std_logic := '0';
    signal counter: integer range 1 to N/2 := 1;
begin
    process(Clk100M, rst)
    begin
        if(rst = '0') then
            counter <= 1;
            tmp <= '0';
        else
            if(rising_edge(Clk100M)) then
                if(counter = N/2) then
                    tmp <= not tmp;
                    counter <= 1;
                else 
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;
      Clk1s <= tmp;
end Behavioral;
