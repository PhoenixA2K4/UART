----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2025 01:09:07 AM
-- Design Name: 
-- Module Name: Registor_matrix - Behavioral
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

entity Registor is
    Port ( 
        Clk: in std_logic;
        rst: in std_logic;
        done: in std_logic;
        button: in std_logic;
        data_in: in std_logic_vector(7 downto 0);
        data_out: inout std_logic_vector(7 downto 0)
    );
end Registor;

architecture Behavioral of Registor is
    type registor is array(0 to 1000) of std_logic_vector(7 downto 0);
    signal RF: registor;
    signal tmp: std_logic_vector(7 downto 0);
    signal counter: integer range 0 to 1000 := 0;
    signal cnt: integer range 0 to 1000:= 0;
begin
                       
    process(clk, rst)
    begin
        if(rst = '0') then
            RF <= (others => x"20");
        else
            if(rising_edge(clk)) then
                if(done = '1') then
                    RF(counter) <= data_in;
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;
    
    process(clk,button)
    begin
        if(rising_edge(clk)) then
            if(button = '1') then
                data_out <= RF(cnt);
                cnt <= cnt + 1;
            end if;     
        end if;
    end process;
end Behavioral;
