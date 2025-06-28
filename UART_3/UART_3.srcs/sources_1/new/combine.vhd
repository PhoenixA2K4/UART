----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2025 02:43:31 PM
-- Design Name: 
-- Module Name: combine - Behavioral
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

entity combine is
    Port ( 
        Clk100M, reset : in std_logic;
        Rx: in std_logic;
        led: out std_logic_vector(6 downto 0);
        CAT: out std_logic;
        done: out std_logic
    );
end combine;

architecture Behavioral of combine is
    --signal choose: std_logic;
    signal led_1, led_2: std_logic_vector (3 downto 0);
begin
    A0: entity work.UART_rx
    port map(
        clk => Clk100M,
        rst => reset,
        rx_data_in => Rx,
        rx_data_out(3 downto 0) => led_1,
        rx_data_out(7 downto 4) => led_2,
        done => done
    );
    
    A1: entity work.LEDS_OUT
    port map(
        Clk100M => Clk100M,
        reset => reset,
        A => led_1,
        B => led_2,
        led => led,
        CAT => CAT
    );
end Behavioral;
