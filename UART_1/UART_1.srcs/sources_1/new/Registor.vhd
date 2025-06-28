----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2025 03:36:56 PM
-- Design Name: 
-- Module Name: Registor - Behavioral
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
use IEEE. std_logic_arith.ALL;
use IEEE. std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Registor is
    Port ( 
        baud_clk: in std_logic;
        rst: in std_logic;
        data_in: in std_logic_vector(7 downto 0);
        done: in std_logic;
        button: in std_logic;
        data_out: out std_logic_vector(7 downto 0);
        Cout: out std_logic
    );
end Registor;

architecture Behavioral of Registor is
    type data is array(0 to 1) of std_logic_vector(7 downto 0);
    signal operator: data;
    signal count: integer range 0 to 1:= 0;
    signal sum: std_logic_vector(8 downto 0);
begin
    process(baud_clk)
    begin
        if(rst = '0') then
            operator <= (others => x"00");
        else 
            if(rising_edge(baud_clk)) then
                if(done = '1') then
                    operator(count) <= data_in;
                    count <= count + 1;
                end if;
            end if;
        end if;
    end process;
    
    process(baud_clk)
    begin
        if(rising_edge(baud_clk)) then
            if(button = '0') then
                sum <= ('0' & operator(0)) + ('0' & operator(1));
            end if;
        end if;
    end process;
    data_out <= sum(7 downto 0);
    cout <= sum(8);
end Behavioral;
