----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2025 04:21:37 PM
-- Design Name: 
-- Module Name: tb_Adder - Behavioral
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

entity tb_Adder is
--  Port ( );
end tb_Adder;

architecture Behavioral of tb_Adder is
    signal baud_clk, done, C_out: std_logic;
    signal button, rst: std_logic := '1';
    signal data_in, S: std_logic_vector(7 downto 0);
    constant time_period: time := 10ns;
begin
    uut: entity work.Adder
    port map(
        baud_clk => baud_clk,
        rst => rst,
        done => done,
        button => button,
        C_out => C_out,
        data_in => data_in,
        S => S
    );
    
    time_proc: process
    begin
        baud_clk <= '0';
        wait for time_period/2;
        baud_clk <= '1';
        wait for time_period/2;
    end process;
    
    stim_proc: process
    begin
        wait for 5ns;
        done <= '1';
        data_in <= "00101111";
        wait for 10ns;
        
        done <= '0';
        wait for 20ns;
        
        done <= '1';
        data_in <= "11001111";
        wait for 5ns;
        
        done <= '0';
        wait for 20ns;
         
        button <= '0';
        wait for 10ns;
        
        button <= '1';
        wait for 10ns;
        
        wait;
    end process;
end Behavioral;
