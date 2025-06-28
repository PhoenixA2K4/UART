----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/15/2025 10:25:03 AM
-- Design Name: 
-- Module Name: FSM - Behavioral
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

entity FSM is
    Port ( 
        Clk: in std_logic;
        enable: in std_logic;
        data_in: in std_logic_vector(7 downto 0);
        rst: in std_logic;
        data_out: out std_logic_vector(7 downto 0);
        done: in std_logic
    );
end FSM;

architecture Behavioral of FSM is
    
    type ST is (IDLE, ENTER, LED, RESET);
    signal current_state : ST := IDLE;
    signal baud_clk: std_logic:= '0';
    signal counter: integer range 0 to 2 := 0;
begin 
--    Baud_generator: process(clk)
--    variable N : integer range 0 to 651 := 0;   --651
--    begin
--        if(rising_edge(clk)) then
--            if( rst = '0' ) then
--                N := 0;
--                baud_clk <= '0';
--            else
--                if(N = 651) then
--                    baud_clk <= not baud_clk;
--                    N := 0;
--                else 
--                    N := N + 1;
--                    baud_clk <= '0';
--                end if;
--            end if;
--        end if;
--    end process;
    
    
    
    process(Clk)
        constant N : integer := 768050;
        variable delay: integer range 0 to N := 0;
    begin
        if(rising_edge(clk)) then
            if(rst = '0')then
                counter <= 0;
                delay := 0;
                data_out <= (others => '0');
                current_state <= IDLE;
            else 
            --if(baud_clk = '1') then
                case current_state is
                    when IDLE =>
                        counter <= 0;
                        delay := 0;
                        if(enable = '1') then
                            current_state <= ENTER;
                        end if;
                    
                    when ENTER =>
                    if(done = '1') then
                        if(data_in = "00001101" ) then
                            if(counter = 2) then
                                current_state <= LED;
                            else 
                                counter <= counter + 1;
                            end if;
                        else
                            data_out <= data_in;
                            current_state <= IDLE;
                        end if;
                    end if;    
                         
                    when LED =>
                        if(counter = 2)then
                            data_out <= "11111111";
                            delay := 0;
                            current_state <= RESET;
                        end if;
                    
                    when RESET =>
                            if(delay = N) then
                                data_out <= (others => '0');
                                delay := 0;
                                current_state <= IDLE;
                            else
                                delay := delay + 1;
                            end if;
                    
                    when others => current_state <= IDLE;                          
                end case;
            end if;
        end if;
        --end if;
    end process;
end Behavioral;

