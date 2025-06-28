----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2025 11:12:32 PM
-- Design Name: 
-- Module Name: tb_registor - Behavioral
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

entity tb_registor is
--  Port ( );
end tb_registor;

architecture Behavioral of tb_registor is
    signal clk, done, button: std_logic;
    signal rst : std_logic := '1';
    signal data_in, data_out: std_logic_vector(7 downto 0);
    constant clk_pe: time:= 10ns;
begin
    uut: entity work.Registor
    port map(
        clk => clk,
        rst => rst,
        done => done,
        button => button,
        data_in => data_in,
        data_out => data_out
    );
    
    clk_proc: process
    begin
        clk <= '0';
        wait for clk_pe/2;
        clk <= '1';
        wait for clk_pe/2;
    end process;
    
    stim_proc: process
    begin
        wait for 5ns;
        done <= '1';
        data_in <= "00111111";
        button <= '0';
        
        wait for 5ns;
        done <= '0';
        button <= '0';
        
        wait for 10ns;
        done <= '1';
        data_in <= "10101111";
        button <= '0';
        
        wait for 8ns;
        done <= '0';
        button <= '0';
        
        wait for 10ns;
        done <= '1';
        data_in <= "00001111";
        button <= '0';
        
        wait for 10ns;
        done <= '0';
        button <= '1';
        
        wait for 8ns;
        button <= '0';
        
        wait for 8ns;
        button <= '1';
        
        wait for 8ns;
        button <= '0';
        
        wait for 8ns;
        button <= '1';
        
        wait for 12ns;
        button <= '0';
        
        wait;
        
        end process;
        
end Behavioral;
