----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2025 08:52:18 PM
-- Design Name: 
-- Module Name: file_combine - Behavioral
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

entity file_combine is
    Port (
        Clk100M, reset: in std_logic;
        data_in: in std_logic;
        button: in std_logic;
        led: out std_logic_vector(6 downto 0);
        CAT: out std_logic;
        Cout: out std_logic
     );
end file_combine;

architecture Behavioral of file_combine is
    signal tmp_done, clock: std_logic;
    signal led_1, led_2: std_logic_vector( 3 downto 0);
    signal data: std_logic_vector(7 downto 0);
begin
    A: entity work.Registor
    port map(
        baud_clk => clock,
        rst => reset,
        data_in => data,
        done => tmp_done,
        button => button,
        data_out(3 downto 0) => led_1,
        data_out(7 downto 4) => led_2,
        Cout => Cout
    );
    
    B: entity work.rx_UART
    port map(
        clk => Clk100M,
        rst => reset,
        rx_data_in => data_in,
        rx_data_out => data,
        done => tmp_done,
        div => clock
    );
    
    C: entity work.LEDS_OUT
    port map(
        A => led_1,
        B => led_2,
        reset => reset,
        Clk100M => CLk100M,
        led => led,
        CAT => CAT
    );

end Behavioral;
