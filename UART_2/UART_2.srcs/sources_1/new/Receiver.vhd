----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2025 10:17:43 AM
-- Design Name: 
-- Module Name: rx_UART - Behavioral
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

entity Receiver is
    Port ( 
        clk, rst: in std_logic;
        rx_data_in: in std_logic;
        rx_data_out: out std_logic_vector( 7 downto 0 );
        done: out std_logic ;
        div: out std_logic
    );
end Receiver;

architecture Behavioral of Receiver is
    type ST is ( IDLE, START, DATA, STOP );
    signal current_state: ST := IDLE;
    
    signal baud_clk: std_logic := '0';
    signal data_stored: std_logic_vector (7 downto 0);
begin
    Baud_generator: process(clk)
    variable N : integer range 0 to 651 := 0;   --651
    begin
        if(rising_edge(clk)) then
            if( rst = '0' ) then
                N := 0;
                baud_clk <= '0';
            else
                if(N = 651) then
                    baud_clk <= not baud_clk;
                    N := 0;
                else 
                    N := N + 1;
                    baud_clk <= '0';
                end if;
            end if;
        end if;
    end process;
    div <= baud_clk;
   
    
    FSM_UART_receiver: process(clk, baud_clk)
        variable sample_data: integer range 0 to 14 := 0;
        variable data_counter: integer range 0 to 7 := 0;
    begin   
        if(rising_edge(clk)) then
            if( rst = '0' ) then    
                done <= '0';
                sample_data := 0;
                data_counter := 0;
                rx_data_out <= (others => '0');
                current_state <= IDLE;
            else
                if(baud_clk = '1') then
                    case current_state is
                        when IDLE =>
                            done <= '0';
                            data_counter := 0;
                            sample_data := 0;
                            data_stored <= (others => '0');
                            if( rx_data_in = '0') then
                                current_state <= START;
                            end if;
                        when START =>
                            if( sample_data = 7 ) then
                                current_state <= DATA;
                                sample_data := 0;
                            else 
                                sample_data := sample_data + 1;
                            end if;
                        when DATA =>
                            if( sample_data = 14 ) then
                                data_stored(data_counter)<= rx_data_in;
                                sample_data := 0;
                            if(data_counter = 7 ) then
                                current_state <= STOP;
                                sample_data := 0;
                            else 
                                data_counter := data_counter + 1;
                            end if;
                            else 
                                sample_data := sample_data + 1;
                            end if;
                        when STOP => 
                            if(sample_data = 14) then
                                rx_data_out <= data_stored;
                                done <= '1';
                                current_state <= IDLE;
                            else 
                                sample_data := sample_data + 1;       
                            end if;
                        when others =>
                            current_state <= IDLE;
                    end case;
        end if;
            end if;   
                end if;                     
    end process;
end Behavioral;
