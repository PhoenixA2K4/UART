----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2025 02:55:29 PM
-- Design Name: 
-- Module Name: t_UART - Behavioral
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

entity tx_UART is
    Port (
        clk, rst, tx_start: in std_logic;
        tx_data_in: in std_logic_vector (7 downto 0 ) ;
        tx_data_out: out std_logic
     );
end tx_UART;

architecture Behavioral of tx_UART is
    type ST is ( IDLE, START, DATA, STOP );
    signal current_state :ST := IDLE;
    signal data_stored: std_logic_vector ( 7 downto 0 ):=(others => '0');
    signal tx_enable, start_rst: std_logic := '0';
    signal baud_clk: std_logic:= '0';
    signal data_counter: integer range 0 to 7:=0;
    signal rst_counter: std_logic := '1';
  
begin
frequency_divider: process
      variable UART_clk : integer range 0 to 10417 := 0 ;   --10417
begin
    WAIT UNTIL RISING_EDGE(CLK);
    if( rst = '0') then
        baud_clk <= '0';
        UART_clk := 0;
    else
        if( UART_clk = 10417 ) then 
            baud_clk <= not baud_clk;
            UART_clk := 0;
        else
            UART_clk := UART_clk + 1;
            baud_clk <= '0';
        end if;
    end if;
end process;
    
    --div <= baud_clk;

Data_store_block: process(clk)
begin
    if( rising_edge (clk) ) then
        if( rst = '0') or (start_rst = '1' ) then
            tx_enable <= '0';
        else
            if( tx_start = '1' and tx_enable = '0') then
                tx_enable <= '1';
                data_stored <= tx_data_in;
            end if;
       end if;
    end if;
end process;

data_counter_block: process(clk, baud_clk)
begin
    if(rising_edge(clk))then
        if(rst = '0') or (rst_counter = '1') then
            data_counter <= 0;
        elsif( baud_clk = '1' ) then
            data_counter <= data_counter + 1;
        end if;
    end if;
end process;

FSM_UART: process(clk)
begin
if( rising_edge(clk)) then
    if( rst = '0' ) then
        current_state <= IDLE;
        rst_counter <= '1';
        start_rst <= '1';
        tx_data_out <= '1';
    else
        if(baud_clk = '1') then
            case current_state is
                when IDLE =>
                    rst_counter <= '1';
                    --tx_enable <= '1';
                    start_rst <= '0';
                    tx_data_out <= '1';
                    if( tx_enable = '1' ) then
                        current_state <= START;
                    end if;
                when START =>
                    rst_counter <= '0';
                    tx_data_out <= '0';
                    current_state <= DATA;
                when DATA =>
                    tx_data_out <= data_stored( data_counter );
                    if( data_counter = 7 ) then
                        rst_counter <= '1';
                        current_state <= STOP;
                    end if;
                when STOP =>
                    tx_data_out <= '1';
                    start_rst <= '1';
                    current_state <= IDLE;
                when others => 
                    current_state <= IDLE;
            end case;
end if;
    end if;
        end if;
end process;
end Behavioral;

