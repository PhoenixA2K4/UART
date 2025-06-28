-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Apr 17 22:48:01 2025
-- Host        : LAPTOP-HRR3FUNQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ UART_3_file_combine_0_0_sim_netlist.vhdl
-- Design      : UART_3_file_combine_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_rx is
  port (
    tmp_done : out STD_LOGIC;
    reset_0 : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    RS232_A9 : in STD_LOGIC;
    led_2_sp_1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_rx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_rx is
  signal \A1/mux_out\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Baud_generator.N[8]_i_2_n_0\ : STD_LOGIC;
  signal \Baud_generator.N[9]_i_2_n_0\ : STD_LOGIC;
  signal \Baud_generator.N[9]_i_3_n_0\ : STD_LOGIC;
  signal \Baud_generator.N[9]_i_4_n_0\ : STD_LOGIC;
  signal \Baud_generator.N[9]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_UART_receiver.data_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_UART_receiver.data_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_UART_receiver.data_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_UART_receiver.data_counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_UART_receiver.sample_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_UART_receiver.sample_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_UART_receiver.sample_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_UART_receiver.sample_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_UART_receiver.sample_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_UART_receiver.sample_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_UART_receiver.sample_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_UART_receiver.sample_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_UART_receiver.sample_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_UART_receiver.sample_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_4_n_0\ : STD_LOGIC;
  signal N : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal baud_clk : STD_LOGIC;
  signal baud_clk_i_1_n_0 : STD_LOGIC;
  signal \current_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_stored : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \data_stored[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_stored[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_stored[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_stored[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_stored[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_stored[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_stored[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_stored[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_stored[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_stored[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_stored[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_stored[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_stored[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_stored[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_stored[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_stored_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_stored_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_stored_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_stored_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_stored_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_stored_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_stored_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_stored_reg_n_0_[7]\ : STD_LOGIC;
  signal led_2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal led_2_sn_1 : STD_LOGIC;
  signal \^reset_0\ : STD_LOGIC;
  signal \rx_data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \rx_data_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_data_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_data_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_data_out_reg_n_0_[3]\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sel0__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Baud_generator.N[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Baud_generator.N[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Baud_generator.N[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Baud_generator.N[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Baud_generator.N[8]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Baud_generator.N[9]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Baud_generator.N[9]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Baud_generator.N[9]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_UART_receiver.data_counter[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[1]_i_4\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "idle:00,start:01,data:10,stop:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "idle:00,start:01,data:10,stop:11";
  attribute SOFT_HLUTNM of baud_clk_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_stored[1]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_stored[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_stored[5]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_stored[6]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_stored[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_stored[7]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \led[4]_INST_0_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \led[6]_INST_0_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \led[6]_INST_0_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \led[6]_INST_0_i_3\ : label is "soft_lutpair8";
begin
  led_2_sn_1 <= led_2_sp_1;
  reset_0 <= \^reset_0\;
\Baud_generator.N[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__0\(0),
      O => N(0)
    );
\Baud_generator.N[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \Baud_generator.N[9]_i_2_n_0\,
      I1 => \sel0__0\(1),
      I2 => \sel0__0\(0),
      O => N(1)
    );
\Baud_generator.N[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \Baud_generator.N[9]_i_2_n_0\,
      I1 => \sel0__0\(2),
      I2 => \sel0__0\(0),
      I3 => \sel0__0\(1),
      O => N(2)
    );
\Baud_generator.N[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \Baud_generator.N[9]_i_2_n_0\,
      I1 => \sel0__0\(3),
      I2 => \sel0__0\(2),
      I3 => \sel0__0\(1),
      I4 => \sel0__0\(0),
      O => N(3)
    );
\Baud_generator.N[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \Baud_generator.N[9]_i_2_n_0\,
      I1 => \sel0__0\(4),
      I2 => \sel0__0\(2),
      I3 => \sel0__0\(3),
      I4 => \sel0__0\(0),
      I5 => \sel0__0\(1),
      O => N(4)
    );
\Baud_generator.N[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88882888"
    )
        port map (
      I0 => \Baud_generator.N[9]_i_2_n_0\,
      I1 => \sel0__0\(5),
      I2 => \sel0__0\(4),
      I3 => \sel0__0\(2),
      I4 => \Baud_generator.N[8]_i_2_n_0\,
      O => N(5)
    );
\Baud_generator.N[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888828888888"
    )
        port map (
      I0 => \Baud_generator.N[9]_i_2_n_0\,
      I1 => \sel0__0\(6),
      I2 => \sel0__0\(5),
      I3 => \sel0__0\(2),
      I4 => \sel0__0\(4),
      I5 => \Baud_generator.N[8]_i_2_n_0\,
      O => N(6)
    );
\Baud_generator.N[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82888888"
    )
        port map (
      I0 => \Baud_generator.N[9]_i_2_n_0\,
      I1 => \sel0__0\(7),
      I2 => \Baud_generator.N[8]_i_2_n_0\,
      I3 => \sel0__0\(6),
      I4 => \Baud_generator.N[9]_i_3_n_0\,
      O => N(7)
    );
\Baud_generator.N[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888828888888"
    )
        port map (
      I0 => \Baud_generator.N[9]_i_2_n_0\,
      I1 => \sel0__0\(8),
      I2 => \sel0__0\(6),
      I3 => \Baud_generator.N[9]_i_3_n_0\,
      I4 => \sel0__0\(7),
      I5 => \Baud_generator.N[8]_i_2_n_0\,
      O => N(8)
    );
\Baud_generator.N[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \sel0__0\(1),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(3),
      O => \Baud_generator.N[8]_i_2_n_0\
    );
\Baud_generator.N[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888828888888"
    )
        port map (
      I0 => \Baud_generator.N[9]_i_2_n_0\,
      I1 => \sel0__0\(9),
      I2 => \Baud_generator.N[9]_i_3_n_0\,
      I3 => \sel0__0\(6),
      I4 => \sel0__0\(8),
      I5 => \Baud_generator.N[9]_i_4_n_0\,
      O => N(9)
    );
\Baud_generator.N[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \Baud_generator.N[9]_i_5_n_0\,
      I1 => \sel0__0\(7),
      I2 => \sel0__0\(1),
      I3 => \sel0__0\(0),
      I4 => \sel0__0\(3),
      O => \Baud_generator.N[9]_i_2_n_0\
    );
\Baud_generator.N[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \sel0__0\(4),
      I1 => \sel0__0\(2),
      I2 => \sel0__0\(5),
      O => \Baud_generator.N[9]_i_3_n_0\
    );
\Baud_generator.N[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \sel0__0\(3),
      I1 => \sel0__0\(0),
      I2 => \sel0__0\(1),
      I3 => \sel0__0\(7),
      O => \Baud_generator.N[9]_i_4_n_0\
    );
\Baud_generator.N[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \sel0__0\(8),
      I1 => \sel0__0\(9),
      I2 => \sel0__0\(5),
      I3 => \sel0__0\(6),
      I4 => \sel0__0\(4),
      I5 => \sel0__0\(2),
      O => \Baud_generator.N[9]_i_5_n_0\
    );
\Baud_generator.N_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => N(0),
      Q => \sel0__0\(0),
      R => \^reset_0\
    );
\Baud_generator.N_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => N(1),
      Q => \sel0__0\(1),
      R => \^reset_0\
    );
\Baud_generator.N_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => N(2),
      Q => \sel0__0\(2),
      R => \^reset_0\
    );
\Baud_generator.N_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => N(3),
      Q => \sel0__0\(3),
      R => \^reset_0\
    );
\Baud_generator.N_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => N(4),
      Q => \sel0__0\(4),
      R => \^reset_0\
    );
\Baud_generator.N_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => N(5),
      Q => \sel0__0\(5),
      R => \^reset_0\
    );
\Baud_generator.N_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => N(6),
      Q => \sel0__0\(6),
      R => \^reset_0\
    );
\Baud_generator.N_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => N(7),
      Q => \sel0__0\(7),
      R => \^reset_0\
    );
\Baud_generator.N_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => N(8),
      Q => \sel0__0\(8),
      R => \^reset_0\
    );
\Baud_generator.N_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => N(9),
      Q => \sel0__0\(9),
      R => \^reset_0\
    );
\FSM_UART_receiver.data_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E5A50000F0F0F0F0"
    )
        port map (
      I0 => \FSM_UART_receiver.sample_data[3]_i_3_n_0\,
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \current_state__0\(1),
      I5 => \FSM_UART_receiver.data_counter[2]_i_2_n_0\,
      O => \FSM_UART_receiver.data_counter[0]_i_1_n_0\
    );
\FSM_UART_receiver.data_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF500000FF00FF00"
    )
        port map (
      I0 => \FSM_UART_receiver.sample_data[3]_i_3_n_0\,
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \current_state__0\(1),
      I5 => \FSM_UART_receiver.data_counter[2]_i_2_n_0\,
      O => \FSM_UART_receiver.data_counter[1]_i_1_n_0\
    );
\FSM_UART_receiver.data_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCCC0000CCCCCCCC"
    )
        port map (
      I0 => \FSM_UART_receiver.sample_data[3]_i_3_n_0\,
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \current_state__0\(1),
      I5 => \FSM_UART_receiver.data_counter[2]_i_2_n_0\,
      O => \FSM_UART_receiver.data_counter[2]_i_1_n_0\
    );
\FSM_UART_receiver.data_counter[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => baud_clk,
      I1 => \current_state__0\(0),
      O => \FSM_UART_receiver.data_counter[2]_i_2_n_0\
    );
\FSM_UART_receiver.data_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \FSM_UART_receiver.data_counter[0]_i_1_n_0\,
      Q => sel0(0),
      R => \^reset_0\
    );
\FSM_UART_receiver.data_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \FSM_UART_receiver.data_counter[1]_i_1_n_0\,
      Q => sel0(1),
      R => \^reset_0\
    );
\FSM_UART_receiver.data_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \FSM_UART_receiver.data_counter[2]_i_1_n_0\,
      Q => sel0(2),
      R => \^reset_0\
    );
\FSM_UART_receiver.sample_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BFFFAAAA"
    )
        port map (
      I0 => \current_state__0\(0),
      I1 => \FSM_UART_receiver.sample_data_reg_n_0_[2]\,
      I2 => \FSM_UART_receiver.sample_data_reg_n_0_[1]\,
      I3 => \FSM_UART_receiver.sample_data_reg_n_0_[3]\,
      I4 => \current_state__0\(1),
      I5 => \FSM_UART_receiver.sample_data_reg_n_0_[0]\,
      O => \FSM_UART_receiver.sample_data[0]_i_1_n_0\
    );
\FSM_UART_receiver.sample_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFF0FF700000"
    )
        port map (
      I0 => \FSM_UART_receiver.sample_data_reg_n_0_[2]\,
      I1 => \FSM_UART_receiver.sample_data_reg_n_0_[3]\,
      I2 => \current_state__0\(1),
      I3 => \current_state__0\(0),
      I4 => \FSM_UART_receiver.sample_data_reg_n_0_[1]\,
      I5 => \FSM_UART_receiver.sample_data_reg_n_0_[0]\,
      O => \FSM_UART_receiver.sample_data[1]_i_1_n_0\
    );
\FSM_UART_receiver.sample_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FCFC00F400FC00"
    )
        port map (
      I0 => \FSM_UART_receiver.sample_data_reg_n_0_[3]\,
      I1 => \current_state__0\(1),
      I2 => \current_state__0\(0),
      I3 => \FSM_UART_receiver.sample_data_reg_n_0_[2]\,
      I4 => \FSM_UART_receiver.sample_data_reg_n_0_[1]\,
      I5 => \FSM_UART_receiver.sample_data_reg_n_0_[0]\,
      O => \FSM_UART_receiver.sample_data[2]_i_1_n_0\
    );
\FSM_UART_receiver.sample_data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => \FSM_UART_receiver.sample_data[3]_i_3_n_0\,
      I1 => \current_state__0\(1),
      I2 => \current_state__0\(0),
      I3 => baud_clk,
      O => \FSM_UART_receiver.sample_data[3]_i_1_n_0\
    );
\FSM_UART_receiver.sample_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AE0E0E0C0E0E0E0"
    )
        port map (
      I0 => \current_state__0\(1),
      I1 => \current_state__0\(0),
      I2 => \FSM_UART_receiver.sample_data_reg_n_0_[3]\,
      I3 => \FSM_UART_receiver.sample_data_reg_n_0_[2]\,
      I4 => \FSM_UART_receiver.sample_data_reg_n_0_[1]\,
      I5 => \FSM_UART_receiver.sample_data_reg_n_0_[0]\,
      O => \FSM_UART_receiver.sample_data[3]_i_2_n_0\
    );
\FSM_UART_receiver.sample_data[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \FSM_UART_receiver.sample_data_reg_n_0_[3]\,
      I1 => \FSM_UART_receiver.sample_data_reg_n_0_[1]\,
      I2 => \FSM_UART_receiver.sample_data_reg_n_0_[2]\,
      I3 => \FSM_UART_receiver.sample_data_reg_n_0_[0]\,
      O => \FSM_UART_receiver.sample_data[3]_i_3_n_0\
    );
\FSM_UART_receiver.sample_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FSM_UART_receiver.sample_data[3]_i_1_n_0\,
      D => \FSM_UART_receiver.sample_data[0]_i_1_n_0\,
      Q => \FSM_UART_receiver.sample_data_reg_n_0_[0]\,
      R => \^reset_0\
    );
\FSM_UART_receiver.sample_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FSM_UART_receiver.sample_data[3]_i_1_n_0\,
      D => \FSM_UART_receiver.sample_data[1]_i_1_n_0\,
      Q => \FSM_UART_receiver.sample_data_reg_n_0_[1]\,
      R => \^reset_0\
    );
\FSM_UART_receiver.sample_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FSM_UART_receiver.sample_data[3]_i_1_n_0\,
      D => \FSM_UART_receiver.sample_data[2]_i_1_n_0\,
      Q => \FSM_UART_receiver.sample_data_reg_n_0_[2]\,
      R => \^reset_0\
    );
\FSM_UART_receiver.sample_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FSM_UART_receiver.sample_data[3]_i_1_n_0\,
      D => \FSM_UART_receiver.sample_data[3]_i_2_n_0\,
      Q => \FSM_UART_receiver.sample_data_reg_n_0_[3]\,
      R => \^reset_0\
    );
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFCFFFFF0050"
    )
        port map (
      I0 => RS232_A9,
      I1 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I2 => baud_clk,
      I3 => \current_state__0\(1),
      I4 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I5 => \current_state__0\(0),
      O => \FSM_sequential_current_state[0]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6C6C7C6C"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \current_state__0\(1),
      I2 => \current_state__0\(0),
      I3 => baud_clk,
      I4 => \FSM_sequential_current_state[1]_i_3_n_0\,
      O => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8888888"
    )
        port map (
      I0 => baud_clk,
      I1 => \current_state__0\(0),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => \FSM_sequential_current_state[1]_i_4_n_0\,
      O => \FSM_sequential_current_state[1]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \FSM_UART_receiver.sample_data_reg_n_0_[0]\,
      I1 => \FSM_UART_receiver.sample_data_reg_n_0_[1]\,
      I2 => \FSM_UART_receiver.sample_data_reg_n_0_[2]\,
      I3 => \FSM_UART_receiver.sample_data_reg_n_0_[3]\,
      O => \FSM_sequential_current_state[1]_i_3_n_0\
    );
\FSM_sequential_current_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \FSM_UART_receiver.sample_data_reg_n_0_[0]\,
      I1 => \FSM_UART_receiver.sample_data_reg_n_0_[2]\,
      I2 => \FSM_UART_receiver.sample_data_reg_n_0_[1]\,
      I3 => \FSM_UART_receiver.sample_data_reg_n_0_[3]\,
      I4 => \current_state__0\(1),
      O => \FSM_sequential_current_state[1]_i_4_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \FSM_sequential_current_state[0]_i_1_n_0\,
      Q => \current_state__0\(0),
      R => \^reset_0\
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \FSM_sequential_current_state[1]_i_1_n_0\,
      Q => \current_state__0\(1),
      R => \^reset_0\
    );
baud_clk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => baud_clk,
      I1 => reset,
      I2 => \Baud_generator.N[9]_i_2_n_0\,
      O => baud_clk_i_1_n_0
    );
baud_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => baud_clk_i_1_n_0,
      Q => baud_clk,
      R => '0'
    );
\data_stored[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFBAAAA0008"
    )
        port map (
      I0 => data_stored(3),
      I1 => \data_stored[6]_i_3_n_0\,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \data_stored[7]_i_4_n_0\,
      I5 => \data_stored_reg_n_0_[0]\,
      O => \data_stored[0]_i_1_n_0\
    );
\data_stored[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFFFAAAA8000"
    )
        port map (
      I0 => data_stored(3),
      I1 => \data_stored[7]_i_3_n_0\,
      I2 => \data_stored[1]_i_2_n_0\,
      I3 => sel0(0),
      I4 => \data_stored[7]_i_4_n_0\,
      I5 => \data_stored_reg_n_0_[1]\,
      O => \data_stored[1]_i_1_n_0\
    );
\data_stored[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      O => \data_stored[1]_i_2_n_0\
    );
\data_stored[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => data_stored(3),
      I1 => \data_stored[6]_i_3_n_0\,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \data_stored[7]_i_4_n_0\,
      I5 => \data_stored_reg_n_0_[2]\,
      O => \data_stored[2]_i_1_n_0\
    );
\data_stored[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFBAAAA0008"
    )
        port map (
      I0 => data_stored(3),
      I1 => \data_stored[7]_i_3_n_0\,
      I2 => \data_stored[3]_i_2_n_0\,
      I3 => sel0(2),
      I4 => \data_stored[7]_i_4_n_0\,
      I5 => \data_stored_reg_n_0_[3]\,
      O => \data_stored[3]_i_1_n_0\
    );
\data_stored[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      O => \data_stored[3]_i_2_n_0\
    );
\data_stored[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => data_stored(3),
      I1 => \data_stored[6]_i_3_n_0\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \data_stored[7]_i_4_n_0\,
      I5 => \data_stored_reg_n_0_[4]\,
      O => \data_stored[4]_i_1_n_0\
    );
\data_stored[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFFFAAAA8000"
    )
        port map (
      I0 => data_stored(3),
      I1 => \data_stored[7]_i_3_n_0\,
      I2 => \data_stored[5]_i_2_n_0\,
      I3 => sel0(0),
      I4 => \data_stored[7]_i_4_n_0\,
      I5 => \data_stored_reg_n_0_[5]\,
      O => \data_stored[5]_i_1_n_0\
    );
\data_stored[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      O => \data_stored[5]_i_2_n_0\
    );
\data_stored[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFFFAAAA8000"
    )
        port map (
      I0 => data_stored(3),
      I1 => \data_stored[6]_i_3_n_0\,
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \data_stored[7]_i_4_n_0\,
      I5 => \data_stored_reg_n_0_[6]\,
      O => \data_stored[6]_i_1_n_0\
    );
\data_stored[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \current_state__0\(1),
      I1 => RS232_A9,
      O => data_stored(3)
    );
\data_stored[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \FSM_UART_receiver.sample_data[3]_i_3_n_0\,
      I1 => \current_state__0\(0),
      I2 => baud_clk,
      I3 => reset,
      I4 => sel0(0),
      O => \data_stored[6]_i_3_n_0\
    );
\data_stored[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888F8FF88880800"
    )
        port map (
      I0 => \current_state__0\(1),
      I1 => RS232_A9,
      I2 => \data_stored[7]_i_2_n_0\,
      I3 => \data_stored[7]_i_3_n_0\,
      I4 => \data_stored[7]_i_4_n_0\,
      I5 => \data_stored_reg_n_0_[7]\,
      O => \data_stored[7]_i_1_n_0\
    );
\data_stored[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(0),
      I2 => sel0(2),
      O => \data_stored[7]_i_2_n_0\
    );
\data_stored[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => reset,
      I1 => \FSM_UART_receiver.data_counter[2]_i_2_n_0\,
      I2 => \FSM_UART_receiver.sample_data_reg_n_0_[0]\,
      I3 => \FSM_UART_receiver.sample_data_reg_n_0_[2]\,
      I4 => \FSM_UART_receiver.sample_data_reg_n_0_[1]\,
      I5 => \FSM_UART_receiver.sample_data_reg_n_0_[3]\,
      O => \data_stored[7]_i_3_n_0\
    );
\data_stored[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => reset,
      I1 => baud_clk,
      I2 => \current_state__0\(0),
      I3 => \current_state__0\(1),
      O => \data_stored[7]_i_4_n_0\
    );
\data_stored_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \data_stored[0]_i_1_n_0\,
      Q => \data_stored_reg_n_0_[0]\,
      R => '0'
    );
\data_stored_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \data_stored[1]_i_1_n_0\,
      Q => \data_stored_reg_n_0_[1]\,
      R => '0'
    );
\data_stored_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \data_stored[2]_i_1_n_0\,
      Q => \data_stored_reg_n_0_[2]\,
      R => '0'
    );
\data_stored_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \data_stored[3]_i_1_n_0\,
      Q => \data_stored_reg_n_0_[3]\,
      R => '0'
    );
\data_stored_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \data_stored[4]_i_1_n_0\,
      Q => \data_stored_reg_n_0_[4]\,
      R => '0'
    );
\data_stored_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \data_stored[5]_i_1_n_0\,
      Q => \data_stored_reg_n_0_[5]\,
      R => '0'
    );
\data_stored_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \data_stored[6]_i_1_n_0\,
      Q => \data_stored_reg_n_0_[6]\,
      R => '0'
    );
\data_stored_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => '1',
      D => \data_stored[7]_i_1_n_0\,
      Q => \data_stored_reg_n_0_[7]\,
      R => '0'
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => baud_clk,
      Q => tmp_done,
      R => \^reset_0\
    );
\led[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFBFFFFFD5DAAAA"
    )
        port map (
      I0 => \A1/mux_out\(3),
      I1 => \rx_data_out_reg_n_0_[0]\,
      I2 => led_2_sn_1,
      I3 => led_2(0),
      I4 => \A1/mux_out\(2),
      I5 => \A1/mux_out\(1),
      O => led(0)
    );
\led[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AE6FAEAEAE6F6F6F"
    )
        port map (
      I0 => \A1/mux_out\(3),
      I1 => \A1/mux_out\(2),
      I2 => \A1/mux_out\(0),
      I3 => led_2(1),
      I4 => led_2_sn_1,
      I5 => \rx_data_out_reg_n_0_[1]\,
      O => led(1)
    );
\led[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A80EFEAFFFF"
    )
        port map (
      I0 => \A1/mux_out\(3),
      I1 => led_2(1),
      I2 => led_2_sn_1,
      I3 => \rx_data_out_reg_n_0_[1]\,
      I4 => \A1/mux_out\(2),
      I5 => \A1/mux_out\(0),
      O => led(2)
    );
\led[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333EEE3EDDDBBBDB"
    )
        port map (
      I0 => \A1/mux_out\(3),
      I1 => \A1/mux_out\(2),
      I2 => \rx_data_out_reg_n_0_[1]\,
      I3 => led_2_sn_1,
      I4 => led_2(1),
      I5 => \A1/mux_out\(0),
      O => led(3)
    );
\led[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F677F7F7F676767"
    )
        port map (
      I0 => \A1/mux_out\(3),
      I1 => \A1/mux_out\(2),
      I2 => \A1/mux_out\(1),
      I3 => led_2(0),
      I4 => led_2_sn_1,
      I5 => \rx_data_out_reg_n_0_[0]\,
      O => led(4)
    );
\led[4]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => led_2(1),
      I1 => led_2_sn_1,
      I2 => \rx_data_out_reg_n_0_[1]\,
      O => \A1/mux_out\(1)
    );
\led[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"494449997F777FFF"
    )
        port map (
      I0 => \A1/mux_out\(3),
      I1 => \A1/mux_out\(0),
      I2 => led_2(1),
      I3 => led_2_sn_1,
      I4 => \rx_data_out_reg_n_0_[1]\,
      I5 => \A1/mux_out\(2),
      O => led(5)
    );
\led[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD666D6FFFBBBFB"
    )
        port map (
      I0 => \A1/mux_out\(3),
      I1 => \A1/mux_out\(2),
      I2 => \rx_data_out_reg_n_0_[1]\,
      I3 => led_2_sn_1,
      I4 => led_2(1),
      I5 => \A1/mux_out\(0),
      O => led(6)
    );
\led[6]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => led_2(3),
      I1 => led_2_sn_1,
      I2 => \rx_data_out_reg_n_0_[3]\,
      O => \A1/mux_out\(3)
    );
\led[6]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => led_2(2),
      I1 => led_2_sn_1,
      I2 => \rx_data_out_reg_n_0_[2]\,
      O => \A1/mux_out\(2)
    );
\led[6]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => led_2(0),
      I1 => led_2_sn_1,
      I2 => \rx_data_out_reg_n_0_[0]\,
      O => \A1/mux_out\(0)
    );
\rx_data_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => baud_clk,
      I1 => \current_state__0\(0),
      I2 => \current_state__0\(1),
      I3 => \FSM_UART_receiver.sample_data[3]_i_3_n_0\,
      O => \rx_data_out[7]_i_1_n_0\
    );
\rx_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => \data_stored_reg_n_0_[0]\,
      Q => \rx_data_out_reg_n_0_[0]\,
      R => \^reset_0\
    );
\rx_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => \data_stored_reg_n_0_[1]\,
      Q => \rx_data_out_reg_n_0_[1]\,
      R => \^reset_0\
    );
\rx_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => \data_stored_reg_n_0_[2]\,
      Q => \rx_data_out_reg_n_0_[2]\,
      R => \^reset_0\
    );
\rx_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => \data_stored_reg_n_0_[3]\,
      Q => \rx_data_out_reg_n_0_[3]\,
      R => \^reset_0\
    );
\rx_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => \data_stored_reg_n_0_[4]\,
      Q => led_2(0),
      R => \^reset_0\
    );
\rx_data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => \data_stored_reg_n_0_[5]\,
      Q => led_2(1),
      R => \^reset_0\
    );
\rx_data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => \data_stored_reg_n_0_[6]\,
      Q => led_2(2),
      R => \^reset_0\
    );
\rx_data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => Clk,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => \data_stored_reg_n_0_[7]\,
      Q => led_2(3),
      R => \^reset_0\
    );
tx_data_out_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => \^reset_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce is
  port (
    flipflop_4 : out STD_LOGIC;
    flipflop_3 : out STD_LOGIC;
    flipflop_4_reg_0 : in STD_LOGIC;
    button : in STD_LOGIC;
    Clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce is
  signal \count0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal count0_carry_i_1_n_0 : STD_LOGIC;
  signal count0_carry_i_2_n_0 : STD_LOGIC;
  signal count0_carry_i_3_n_0 : STD_LOGIC;
  signal count0_carry_i_4_n_0 : STD_LOGIC;
  signal count0_carry_i_5_n_0 : STD_LOGIC;
  signal count0_carry_i_6_n_0 : STD_LOGIC;
  signal count0_carry_i_7_n_0 : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal flipflop_1 : STD_LOGIC;
  signal flipflop_2 : STD_LOGIC;
  signal \^flipflop_3\ : STD_LOGIC;
  signal flipflop_3_i_1_n_0 : STD_LOGIC;
  signal \pause_counter.count[0]_i_1_n_0\ : STD_LOGIC;
  signal \pause_counter.count[0]_i_3_n_0\ : STD_LOGIC;
  signal \pause_counter.count_reg\ : STD_LOGIC_VECTOR ( 13 downto 4 );
  signal \pause_counter.count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \pause_counter.count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \pause_counter.count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \pause_counter.count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \pause_counter.count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \pause_counter.count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \pause_counter.count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \pause_counter.count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \pause_counter.count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pause_counter.count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pause_counter.count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pause_counter.count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pause_counter.count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pause_counter.count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pause_counter.count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pause_counter.count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pause_counter.count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pause_counter.count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pause_counter.count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pause_counter.count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pause_counter.count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pause_counter.count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pause_counter.count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pause_counter.count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pause_counter.count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pause_counter.count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pause_counter.count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \pause_counter.count_reg_n_0_[0]\ : STD_LOGIC;
  signal \pause_counter.count_reg_n_0_[1]\ : STD_LOGIC;
  signal \pause_counter.count_reg_n_0_[2]\ : STD_LOGIC;
  signal \pause_counter.count_reg_n_0_[3]\ : STD_LOGIC;
  signal NLW_count0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pause_counter.count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pause_counter.count_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of count0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \count0_carry__0\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \pause_counter.count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \pause_counter.count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pause_counter.count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pause_counter.count_reg[8]_i_1\ : label is 11;
begin
  flipflop_3 <= \^flipflop_3\;
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => '0',
      DI(3) => count0_carry_i_1_n_0,
      DI(2) => count0_carry_i_2_n_0,
      DI(1) => '0',
      DI(0) => count0_carry_i_3_n_0,
      O(3 downto 0) => NLW_count0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => count0_carry_i_4_n_0,
      S(2) => count0_carry_i_5_n_0,
      S(1) => count0_carry_i_6_n_0,
      S(0) => count0_carry_i_7_n_0
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3 downto 1) => \NLW_count0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_count0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \count0_carry__0_i_2_n_0\
    );
\count0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pause_counter.count_reg\(13),
      O => \count0_carry__0_i_1_n_0\
    );
\count0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pause_counter.count_reg\(13),
      I1 => \pause_counter.count_reg\(12),
      O => \count0_carry__0_i_2_n_0\
    );
count0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pause_counter.count_reg\(10),
      I1 => \pause_counter.count_reg\(11),
      O => count0_carry_i_1_n_0
    );
count0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \pause_counter.count_reg\(8),
      I1 => \pause_counter.count_reg\(9),
      O => count0_carry_i_2_n_0
    );
count0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pause_counter.count_reg\(5),
      I1 => \pause_counter.count_reg\(4),
      O => count0_carry_i_3_n_0
    );
count0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pause_counter.count_reg\(10),
      I1 => \pause_counter.count_reg\(11),
      O => count0_carry_i_4_n_0
    );
count0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pause_counter.count_reg\(9),
      I1 => \pause_counter.count_reg\(8),
      O => count0_carry_i_5_n_0
    );
count0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pause_counter.count_reg\(6),
      I1 => \pause_counter.count_reg\(7),
      O => count0_carry_i_6_n_0
    );
count0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pause_counter.count_reg\(4),
      I1 => \pause_counter.count_reg\(5),
      O => count0_carry_i_7_n_0
    );
flipflop_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => button,
      Q => flipflop_1,
      R => flipflop_4_reg_0
    );
flipflop_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => flipflop_1,
      Q => flipflop_2,
      R => flipflop_4_reg_0
    );
flipflop_3_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE40"
    )
        port map (
      I0 => \count0_carry__0_n_3\,
      I1 => flipflop_1,
      I2 => flipflop_2,
      I3 => \^flipflop_3\,
      O => flipflop_3_i_1_n_0
    );
flipflop_3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => flipflop_3_i_1_n_0,
      Q => \^flipflop_3\,
      R => flipflop_4_reg_0
    );
flipflop_4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \^flipflop_3\,
      Q => flipflop_4,
      R => flipflop_4_reg_0
    );
\pause_counter.count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => flipflop_1,
      I1 => flipflop_2,
      I2 => reset,
      O => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pause_counter.count_reg_n_0_[0]\,
      O => \pause_counter.count[0]_i_3_n_0\
    );
\pause_counter.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[0]_i_2_n_7\,
      Q => \pause_counter.count_reg_n_0_[0]\,
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pause_counter.count_reg[0]_i_2_n_0\,
      CO(2) => \pause_counter.count_reg[0]_i_2_n_1\,
      CO(1) => \pause_counter.count_reg[0]_i_2_n_2\,
      CO(0) => \pause_counter.count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pause_counter.count_reg[0]_i_2_n_4\,
      O(2) => \pause_counter.count_reg[0]_i_2_n_5\,
      O(1) => \pause_counter.count_reg[0]_i_2_n_6\,
      O(0) => \pause_counter.count_reg[0]_i_2_n_7\,
      S(3) => \pause_counter.count_reg_n_0_[3]\,
      S(2) => \pause_counter.count_reg_n_0_[2]\,
      S(1) => \pause_counter.count_reg_n_0_[1]\,
      S(0) => \pause_counter.count[0]_i_3_n_0\
    );
\pause_counter.count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[8]_i_1_n_5\,
      Q => \pause_counter.count_reg\(10),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[8]_i_1_n_4\,
      Q => \pause_counter.count_reg\(11),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[12]_i_1_n_7\,
      Q => \pause_counter.count_reg\(12),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pause_counter.count_reg[8]_i_1_n_0\,
      CO(3 downto 1) => \NLW_pause_counter.count_reg[12]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \pause_counter.count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_pause_counter.count_reg[12]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \pause_counter.count_reg[12]_i_1_n_6\,
      O(0) => \pause_counter.count_reg[12]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => \pause_counter.count_reg\(13 downto 12)
    );
\pause_counter.count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[12]_i_1_n_6\,
      Q => \pause_counter.count_reg\(13),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[0]_i_2_n_6\,
      Q => \pause_counter.count_reg_n_0_[1]\,
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[0]_i_2_n_5\,
      Q => \pause_counter.count_reg_n_0_[2]\,
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[0]_i_2_n_4\,
      Q => \pause_counter.count_reg_n_0_[3]\,
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[4]_i_1_n_7\,
      Q => \pause_counter.count_reg\(4),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pause_counter.count_reg[0]_i_2_n_0\,
      CO(3) => \pause_counter.count_reg[4]_i_1_n_0\,
      CO(2) => \pause_counter.count_reg[4]_i_1_n_1\,
      CO(1) => \pause_counter.count_reg[4]_i_1_n_2\,
      CO(0) => \pause_counter.count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pause_counter.count_reg[4]_i_1_n_4\,
      O(2) => \pause_counter.count_reg[4]_i_1_n_5\,
      O(1) => \pause_counter.count_reg[4]_i_1_n_6\,
      O(0) => \pause_counter.count_reg[4]_i_1_n_7\,
      S(3 downto 0) => \pause_counter.count_reg\(7 downto 4)
    );
\pause_counter.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[4]_i_1_n_6\,
      Q => \pause_counter.count_reg\(5),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[4]_i_1_n_5\,
      Q => \pause_counter.count_reg\(6),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[4]_i_1_n_4\,
      Q => \pause_counter.count_reg\(7),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[8]_i_1_n_7\,
      Q => \pause_counter.count_reg\(8),
      R => \pause_counter.count[0]_i_1_n_0\
    );
\pause_counter.count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pause_counter.count_reg[4]_i_1_n_0\,
      CO(3) => \pause_counter.count_reg[8]_i_1_n_0\,
      CO(2) => \pause_counter.count_reg[8]_i_1_n_1\,
      CO(1) => \pause_counter.count_reg[8]_i_1_n_2\,
      CO(0) => \pause_counter.count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pause_counter.count_reg[8]_i_1_n_4\,
      O(2) => \pause_counter.count_reg[8]_i_1_n_5\,
      O(1) => \pause_counter.count_reg[8]_i_1_n_6\,
      O(0) => \pause_counter.count_reg[8]_i_1_n_7\,
      S(3 downto 0) => \pause_counter.count_reg\(11 downto 8)
    );
\pause_counter.count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \count0_carry__0_n_3\,
      D => \pause_counter.count_reg[8]_i_1_n_6\,
      Q => \pause_counter.count_reg\(9),
      R => \pause_counter.count[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider is
  port (
    tmp_reg_0 : out STD_LOGIC;
    Clk : in STD_LOGIC;
    \counter_reg[18]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider is
  signal counter : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__0_n_4\ : STD_LOGIC;
  signal \counter0_carry__0_n_5\ : STD_LOGIC;
  signal \counter0_carry__0_n_6\ : STD_LOGIC;
  signal \counter0_carry__0_n_7\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_4\ : STD_LOGIC;
  signal \counter0_carry__1_n_5\ : STD_LOGIC;
  signal \counter0_carry__1_n_6\ : STD_LOGIC;
  signal \counter0_carry__1_n_7\ : STD_LOGIC;
  signal \counter0_carry__2_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_n_4\ : STD_LOGIC;
  signal \counter0_carry__2_n_5\ : STD_LOGIC;
  signal \counter0_carry__2_n_6\ : STD_LOGIC;
  signal \counter0_carry__2_n_7\ : STD_LOGIC;
  signal \counter0_carry__3_n_3\ : STD_LOGIC;
  signal \counter0_carry__3_n_6\ : STD_LOGIC;
  signal \counter0_carry__3_n_7\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal counter0_carry_n_4 : STD_LOGIC;
  signal counter0_carry_n_5 : STD_LOGIC;
  signal counter0_carry_n_6 : STD_LOGIC;
  signal counter0_carry_n_7 : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal tmp_i_1_n_0 : STD_LOGIC;
  signal tmp_i_2_n_0 : STD_LOGIC;
  signal tmp_i_3_n_0 : STD_LOGIC;
  signal tmp_i_4_n_0 : STD_LOGIC;
  signal tmp_i_5_n_0 : STD_LOGIC;
  signal tmp_i_6_n_0 : STD_LOGIC;
  signal \^tmp_reg_0\ : STD_LOGIC;
  signal \NLW_counter0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counter0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__3\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of tmp_i_4 : label is "soft_lutpair11";
begin
  tmp_reg_0 <= \^tmp_reg_0\;
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3) => counter0_carry_n_4,
      O(2) => counter0_carry_n_5,
      O(1) => counter0_carry_n_6,
      O(0) => counter0_carry_n_7,
      S(3 downto 0) => counter(4 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__0_n_4\,
      O(2) => \counter0_carry__0_n_5\,
      O(1) => \counter0_carry__0_n_6\,
      O(0) => \counter0_carry__0_n_7\,
      S(3 downto 0) => counter(8 downto 5)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__1_n_4\,
      O(2) => \counter0_carry__1_n_5\,
      O(1) => \counter0_carry__1_n_6\,
      O(0) => \counter0_carry__1_n_7\,
      S(3 downto 0) => counter(12 downto 9)
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \counter0_carry__2_n_0\,
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__2_n_4\,
      O(2) => \counter0_carry__2_n_5\,
      O(1) => \counter0_carry__2_n_6\,
      O(0) => \counter0_carry__2_n_7\,
      S(3 downto 0) => counter(16 downto 13)
    );
\counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__2_n_0\,
      CO(3 downto 1) => \NLW_counter0_carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_counter0_carry__3_O_UNCONNECTED\(3 downto 2),
      O(1) => \counter0_carry__3_n_6\,
      O(0) => \counter0_carry__3_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => counter(18 downto 17)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => counter_0(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => \counter0_carry__1_n_6\,
      O => counter_0(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => \counter0_carry__1_n_5\,
      O => counter_0(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => \counter0_carry__1_n_4\,
      O => counter_0(12)
    );
\counter[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => \counter0_carry__2_n_7\,
      O => counter_0(13)
    );
\counter[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => \counter0_carry__2_n_6\,
      O => counter_0(14)
    );
\counter[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => \counter0_carry__2_n_5\,
      O => counter_0(15)
    );
\counter[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => \counter0_carry__2_n_4\,
      O => counter_0(16)
    );
\counter[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => \counter0_carry__3_n_7\,
      O => counter_0(17)
    );
\counter[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => \counter0_carry__3_n_6\,
      O => counter_0(18)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => counter0_carry_n_7,
      O => counter_0(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => counter0_carry_n_6,
      O => counter_0(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => counter0_carry_n_5,
      O => counter_0(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => counter0_carry_n_4,
      O => counter_0(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => \counter0_carry__0_n_7\,
      O => counter_0(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => \counter0_carry__0_n_6\,
      O => counter_0(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => \counter0_carry__0_n_5\,
      O => counter_0(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => \counter0_carry__0_n_4\,
      O => counter_0(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => \counter0_carry__1_n_7\,
      O => counter_0(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => '1',
      D => counter_0(0),
      PRE => \counter_reg[18]_0\,
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(10),
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(11),
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(12),
      Q => counter(12)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(13),
      Q => counter(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(14),
      Q => counter(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(15),
      Q => counter(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(16),
      Q => counter(16)
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(17),
      Q => counter(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(18),
      Q => counter(18)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(1),
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(2),
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(4),
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(8),
      Q => counter(8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => counter_0(9),
      Q => counter(9)
    );
tmp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => tmp_i_2_n_0,
      I1 => tmp_i_3_n_0,
      I2 => tmp_i_4_n_0,
      I3 => tmp_i_5_n_0,
      I4 => tmp_i_6_n_0,
      I5 => \^tmp_reg_0\,
      O => tmp_i_1_n_0
    );
tmp_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => counter(4),
      I3 => counter(3),
      O => tmp_i_2_n_0
    );
tmp_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => counter(13),
      I1 => counter(14),
      I2 => counter(16),
      I3 => counter(15),
      O => tmp_i_3_n_0
    );
tmp_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => counter(18),
      I1 => counter(17),
      I2 => counter(0),
      O => tmp_i_4_n_0
    );
tmp_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(10),
      I1 => counter(9),
      I2 => counter(12),
      I3 => counter(11),
      O => tmp_i_5_n_0
    );
tmp_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => counter(5),
      I1 => counter(6),
      I2 => counter(8),
      I3 => counter(7),
      O => tmp_i_6_n_0
    );
tmp_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      CLR => \counter_reg[18]_0\,
      D => tmp_i_1_n_0,
      Q => \^tmp_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_UART is
  port (
    RS232_D10 : out STD_LOGIC;
    Clk : in STD_LOGIC;
    start_rst_reg_0 : in STD_LOGIC;
    reset : in STD_LOGIC;
    tmp_done : in STD_LOGIC;
    flipflop_4 : in STD_LOGIC;
    flipflop_3 : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_UART;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_UART is
  signal \FSM_onehot_current_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \^rs232_d10\ : STD_LOGIC;
  signal UART_clk : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal baud_clk : STD_LOGIC;
  signal \baud_clk_i_1__0_n_0\ : STD_LOGIC;
  signal \data_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal data_stored : STD_LOGIC;
  signal \data_stored_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_stored_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_stored_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_stored_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_stored_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_stored_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_stored_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_stored_reg_n_0_[7]\ : STD_LOGIC;
  signal \frequency_divider.UART_clk[13]_i_2_n_0\ : STD_LOGIC;
  signal \frequency_divider.UART_clk[13]_i_4_n_0\ : STD_LOGIC;
  signal \frequency_divider.UART_clk[13]_i_5_n_0\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[13]_i_3_n_7\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \frequency_divider.UART_clk_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal rst_counter_i_1_n_0 : STD_LOGIC;
  signal rst_counter_reg_n_0 : STD_LOGIC;
  signal \sel0__1\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal start_rst_i_1_n_0 : STD_LOGIC;
  signal start_rst_reg_n_0 : STD_LOGIC;
  signal tx_data_out_i_2_n_0 : STD_LOGIC;
  signal tx_data_out_i_3_n_0 : STD_LOGIC;
  signal tx_data_out_i_4_n_0 : STD_LOGIC;
  signal tx_data_out_i_5_n_0 : STD_LOGIC;
  signal tx_enable : STD_LOGIC;
  signal tx_enable_i_1_n_0 : STD_LOGIC;
  signal \NLW_frequency_divider.UART_clk_reg[13]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frequency_divider.UART_clk_reg[13]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "idle:0001,start:0010,data:0100,stop:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "idle:0001,start:0010,data:0100,stop:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "idle:0001,start:0010,data:0100,stop:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "idle:0001,start:0010,data:0100,stop:1000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_counter[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_counter[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \frequency_divider.UART_clk[10]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \frequency_divider.UART_clk[11]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \frequency_divider.UART_clk[12]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \frequency_divider.UART_clk[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \frequency_divider.UART_clk[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \frequency_divider.UART_clk[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \frequency_divider.UART_clk[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \frequency_divider.UART_clk[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \frequency_divider.UART_clk[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \frequency_divider.UART_clk[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \frequency_divider.UART_clk[8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \frequency_divider.UART_clk[9]_i_1\ : label is "soft_lutpair17";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \frequency_divider.UART_clk_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \frequency_divider.UART_clk_reg[13]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \frequency_divider.UART_clk_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \frequency_divider.UART_clk_reg[8]_i_2\ : label is 35;
begin
  RS232_D10 <= \^rs232_d10\;
\FSM_onehot_current_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFC888"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I1 => baud_clk,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => tx_enable,
      I4 => \FSM_onehot_current_state[3]_i_2_n_0\,
      O => \FSM_onehot_current_state[3]_i_1_n_0\
    );
\FSM_onehot_current_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA00000000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[1]\,
      I1 => \data_counter_reg_n_0_[1]\,
      I2 => \data_counter_reg_n_0_[0]\,
      I3 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I4 => \data_counter_reg_n_0_[2]\,
      I5 => baud_clk,
      O => \FSM_onehot_current_state[3]_i_2_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => \FSM_onehot_current_state[3]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[3]\,
      Q => \FSM_onehot_current_state_reg_n_0_[0]\,
      S => start_rst_reg_0
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FSM_onehot_current_state[3]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[0]\,
      Q => \FSM_onehot_current_state_reg_n_0_[1]\,
      R => start_rst_reg_0
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FSM_onehot_current_state[3]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[1]\,
      Q => \FSM_onehot_current_state_reg_n_0_[2]\,
      R => start_rst_reg_0
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => \FSM_onehot_current_state[3]_i_1_n_0\,
      D => \FSM_onehot_current_state_reg_n_0_[2]\,
      Q => \FSM_onehot_current_state_reg_n_0_[3]\,
      R => start_rst_reg_0
    );
\baud_clk_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => baud_clk,
      I1 => reset,
      I2 => \frequency_divider.UART_clk[13]_i_2_n_0\,
      O => \baud_clk_i_1__0_n_0\
    );
baud_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \baud_clk_i_1__0_n_0\,
      Q => baud_clk,
      R => '0'
    );
\data_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \data_counter_reg_n_0_[0]\,
      I1 => baud_clk,
      I2 => reset,
      I3 => rst_counter_reg_n_0,
      O => \data_counter[0]_i_1_n_0\
    );
\data_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006A00"
    )
        port map (
      I0 => \data_counter_reg_n_0_[1]\,
      I1 => baud_clk,
      I2 => \data_counter_reg_n_0_[0]\,
      I3 => reset,
      I4 => rst_counter_reg_n_0,
      O => \data_counter[1]_i_1_n_0\
    );
\data_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA0000"
    )
        port map (
      I0 => \data_counter_reg_n_0_[2]\,
      I1 => baud_clk,
      I2 => \data_counter_reg_n_0_[0]\,
      I3 => \data_counter_reg_n_0_[1]\,
      I4 => reset,
      I5 => rst_counter_reg_n_0,
      O => \data_counter[2]_i_1_n_0\
    );
\data_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \data_counter[0]_i_1_n_0\,
      Q => \data_counter_reg_n_0_[0]\,
      R => '0'
    );
\data_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \data_counter[1]_i_1_n_0\,
      Q => \data_counter_reg_n_0_[1]\,
      R => '0'
    );
\data_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => \data_counter[2]_i_1_n_0\,
      Q => \data_counter_reg_n_0_[2]\,
      R => '0'
    );
\data_stored[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => reset,
      I1 => start_rst_reg_n_0,
      I2 => tmp_done,
      I3 => tx_enable,
      I4 => flipflop_4,
      I5 => flipflop_3,
      O => data_stored
    );
\data_stored_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => data_stored,
      D => data_in(0),
      Q => \data_stored_reg_n_0_[0]\,
      R => '0'
    );
\data_stored_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => data_stored,
      D => data_in(1),
      Q => \data_stored_reg_n_0_[1]\,
      R => '0'
    );
\data_stored_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => data_stored,
      D => data_in(2),
      Q => \data_stored_reg_n_0_[2]\,
      R => '0'
    );
\data_stored_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => data_stored,
      D => data_in(3),
      Q => \data_stored_reg_n_0_[3]\,
      R => '0'
    );
\data_stored_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => data_stored,
      D => data_in(4),
      Q => \data_stored_reg_n_0_[4]\,
      R => '0'
    );
\data_stored_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => data_stored,
      D => data_in(5),
      Q => \data_stored_reg_n_0_[5]\,
      R => '0'
    );
\data_stored_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => data_stored,
      D => data_in(6),
      Q => \data_stored_reg_n_0_[6]\,
      R => '0'
    );
\data_stored_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => data_stored,
      D => data_in(7),
      Q => \data_stored_reg_n_0_[7]\,
      R => '0'
    );
\frequency_divider.UART_clk[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sel0__1\(0),
      O => UART_clk(0)
    );
\frequency_divider.UART_clk[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frequency_divider.UART_clk[13]_i_2_n_0\,
      I1 => \frequency_divider.UART_clk_reg[12]_i_2_n_6\,
      O => UART_clk(10)
    );
\frequency_divider.UART_clk[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frequency_divider.UART_clk[13]_i_2_n_0\,
      I1 => \frequency_divider.UART_clk_reg[12]_i_2_n_5\,
      O => UART_clk(11)
    );
\frequency_divider.UART_clk[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frequency_divider.UART_clk[13]_i_2_n_0\,
      I1 => \frequency_divider.UART_clk_reg[12]_i_2_n_4\,
      O => UART_clk(12)
    );
\frequency_divider.UART_clk[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frequency_divider.UART_clk[13]_i_2_n_0\,
      I1 => \frequency_divider.UART_clk_reg[13]_i_3_n_7\,
      O => UART_clk(13)
    );
\frequency_divider.UART_clk[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => \frequency_divider.UART_clk[13]_i_4_n_0\,
      I1 => \sel0__1\(3),
      I2 => \sel0__1\(2),
      I3 => \sel0__1\(5),
      I4 => \sel0__1\(4),
      I5 => \frequency_divider.UART_clk[13]_i_5_n_0\,
      O => \frequency_divider.UART_clk[13]_i_2_n_0\
    );
\frequency_divider.UART_clk[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \sel0__1\(7),
      I1 => \sel0__1\(6),
      I2 => \sel0__1\(9),
      I3 => \sel0__1\(8),
      O => \frequency_divider.UART_clk[13]_i_4_n_0\
    );
\frequency_divider.UART_clk[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFFFF"
    )
        port map (
      I0 => \sel0__1\(12),
      I1 => \sel0__1\(13),
      I2 => \sel0__1\(10),
      I3 => \sel0__1\(11),
      I4 => \sel0__1\(0),
      I5 => \sel0__1\(1),
      O => \frequency_divider.UART_clk[13]_i_5_n_0\
    );
\frequency_divider.UART_clk[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frequency_divider.UART_clk[13]_i_2_n_0\,
      I1 => \frequency_divider.UART_clk_reg[4]_i_2_n_7\,
      O => UART_clk(1)
    );
\frequency_divider.UART_clk[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frequency_divider.UART_clk[13]_i_2_n_0\,
      I1 => \frequency_divider.UART_clk_reg[4]_i_2_n_6\,
      O => UART_clk(2)
    );
\frequency_divider.UART_clk[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frequency_divider.UART_clk[13]_i_2_n_0\,
      I1 => \frequency_divider.UART_clk_reg[4]_i_2_n_5\,
      O => UART_clk(3)
    );
\frequency_divider.UART_clk[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frequency_divider.UART_clk[13]_i_2_n_0\,
      I1 => \frequency_divider.UART_clk_reg[4]_i_2_n_4\,
      O => UART_clk(4)
    );
\frequency_divider.UART_clk[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frequency_divider.UART_clk[13]_i_2_n_0\,
      I1 => \frequency_divider.UART_clk_reg[8]_i_2_n_7\,
      O => UART_clk(5)
    );
\frequency_divider.UART_clk[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frequency_divider.UART_clk[13]_i_2_n_0\,
      I1 => \frequency_divider.UART_clk_reg[8]_i_2_n_6\,
      O => UART_clk(6)
    );
\frequency_divider.UART_clk[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frequency_divider.UART_clk[13]_i_2_n_0\,
      I1 => \frequency_divider.UART_clk_reg[8]_i_2_n_5\,
      O => UART_clk(7)
    );
\frequency_divider.UART_clk[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frequency_divider.UART_clk[13]_i_2_n_0\,
      I1 => \frequency_divider.UART_clk_reg[8]_i_2_n_4\,
      O => UART_clk(8)
    );
\frequency_divider.UART_clk[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frequency_divider.UART_clk[13]_i_2_n_0\,
      I1 => \frequency_divider.UART_clk_reg[12]_i_2_n_7\,
      O => UART_clk(9)
    );
\frequency_divider.UART_clk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => UART_clk(0),
      Q => \sel0__1\(0),
      R => start_rst_reg_0
    );
\frequency_divider.UART_clk_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => UART_clk(10),
      Q => \sel0__1\(10),
      R => start_rst_reg_0
    );
\frequency_divider.UART_clk_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => UART_clk(11),
      Q => \sel0__1\(11),
      R => start_rst_reg_0
    );
\frequency_divider.UART_clk_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => UART_clk(12),
      Q => \sel0__1\(12),
      R => start_rst_reg_0
    );
\frequency_divider.UART_clk_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \frequency_divider.UART_clk_reg[8]_i_2_n_0\,
      CO(3) => \frequency_divider.UART_clk_reg[12]_i_2_n_0\,
      CO(2) => \frequency_divider.UART_clk_reg[12]_i_2_n_1\,
      CO(1) => \frequency_divider.UART_clk_reg[12]_i_2_n_2\,
      CO(0) => \frequency_divider.UART_clk_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frequency_divider.UART_clk_reg[12]_i_2_n_4\,
      O(2) => \frequency_divider.UART_clk_reg[12]_i_2_n_5\,
      O(1) => \frequency_divider.UART_clk_reg[12]_i_2_n_6\,
      O(0) => \frequency_divider.UART_clk_reg[12]_i_2_n_7\,
      S(3 downto 0) => \sel0__1\(12 downto 9)
    );
\frequency_divider.UART_clk_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => UART_clk(13),
      Q => \sel0__1\(13),
      R => start_rst_reg_0
    );
\frequency_divider.UART_clk_reg[13]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \frequency_divider.UART_clk_reg[12]_i_2_n_0\,
      CO(3 downto 0) => \NLW_frequency_divider.UART_clk_reg[13]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_frequency_divider.UART_clk_reg[13]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => \frequency_divider.UART_clk_reg[13]_i_3_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \sel0__1\(13)
    );
\frequency_divider.UART_clk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => UART_clk(1),
      Q => \sel0__1\(1),
      R => start_rst_reg_0
    );
\frequency_divider.UART_clk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => UART_clk(2),
      Q => \sel0__1\(2),
      R => start_rst_reg_0
    );
\frequency_divider.UART_clk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => UART_clk(3),
      Q => \sel0__1\(3),
      R => start_rst_reg_0
    );
\frequency_divider.UART_clk_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => UART_clk(4),
      Q => \sel0__1\(4),
      R => start_rst_reg_0
    );
\frequency_divider.UART_clk_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \frequency_divider.UART_clk_reg[4]_i_2_n_0\,
      CO(2) => \frequency_divider.UART_clk_reg[4]_i_2_n_1\,
      CO(1) => \frequency_divider.UART_clk_reg[4]_i_2_n_2\,
      CO(0) => \frequency_divider.UART_clk_reg[4]_i_2_n_3\,
      CYINIT => \sel0__1\(0),
      DI(3 downto 0) => B"0000",
      O(3) => \frequency_divider.UART_clk_reg[4]_i_2_n_4\,
      O(2) => \frequency_divider.UART_clk_reg[4]_i_2_n_5\,
      O(1) => \frequency_divider.UART_clk_reg[4]_i_2_n_6\,
      O(0) => \frequency_divider.UART_clk_reg[4]_i_2_n_7\,
      S(3 downto 0) => \sel0__1\(4 downto 1)
    );
\frequency_divider.UART_clk_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => UART_clk(5),
      Q => \sel0__1\(5),
      R => start_rst_reg_0
    );
\frequency_divider.UART_clk_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => UART_clk(6),
      Q => \sel0__1\(6),
      R => start_rst_reg_0
    );
\frequency_divider.UART_clk_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => UART_clk(7),
      Q => \sel0__1\(7),
      R => start_rst_reg_0
    );
\frequency_divider.UART_clk_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => UART_clk(8),
      Q => \sel0__1\(8),
      R => start_rst_reg_0
    );
\frequency_divider.UART_clk_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \frequency_divider.UART_clk_reg[4]_i_2_n_0\,
      CO(3) => \frequency_divider.UART_clk_reg[8]_i_2_n_0\,
      CO(2) => \frequency_divider.UART_clk_reg[8]_i_2_n_1\,
      CO(1) => \frequency_divider.UART_clk_reg[8]_i_2_n_2\,
      CO(0) => \frequency_divider.UART_clk_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frequency_divider.UART_clk_reg[8]_i_2_n_4\,
      O(2) => \frequency_divider.UART_clk_reg[8]_i_2_n_5\,
      O(1) => \frequency_divider.UART_clk_reg[8]_i_2_n_6\,
      O(0) => \frequency_divider.UART_clk_reg[8]_i_2_n_7\,
      S(3 downto 0) => \sel0__1\(8 downto 5)
    );
\frequency_divider.UART_clk_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => UART_clk(9),
      Q => \sel0__1\(9),
      R => start_rst_reg_0
    );
rst_counter_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFFFAC0"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[2]\,
      I1 => baud_clk,
      I2 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_current_state[3]_i_2_n_0\,
      I4 => rst_counter_reg_n_0,
      O => rst_counter_i_1_n_0
    );
rst_counter_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk,
      CE => '1',
      D => rst_counter_i_1_n_0,
      Q => rst_counter_reg_n_0,
      S => start_rst_reg_0
    );
start_rst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFA0"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I2 => baud_clk,
      I3 => start_rst_reg_n_0,
      O => start_rst_i_1_n_0
    );
start_rst_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => start_rst_i_1_n_0,
      Q => start_rst_reg_n_0,
      S => start_rst_reg_0
    );
tx_data_out_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tx_data_out_i_3_n_0,
      I1 => baud_clk,
      I2 => \^rs232_d10\,
      O => tx_data_out_i_2_n_0
    );
tx_data_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEFEFEEEEEEEEE"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_current_state_reg_n_0_[3]\,
      I2 => tx_data_out_i_4_n_0,
      I3 => tx_data_out_i_5_n_0,
      I4 => \data_counter_reg_n_0_[0]\,
      I5 => \FSM_onehot_current_state_reg_n_0_[2]\,
      O => tx_data_out_i_3_n_0
    );
tx_data_out_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_stored_reg_n_0_[6]\,
      I1 => \data_stored_reg_n_0_[2]\,
      I2 => \data_counter_reg_n_0_[1]\,
      I3 => \data_stored_reg_n_0_[4]\,
      I4 => \data_counter_reg_n_0_[2]\,
      I5 => \data_stored_reg_n_0_[0]\,
      O => tx_data_out_i_4_n_0
    );
tx_data_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_stored_reg_n_0_[7]\,
      I1 => \data_stored_reg_n_0_[3]\,
      I2 => \data_counter_reg_n_0_[1]\,
      I3 => \data_stored_reg_n_0_[5]\,
      I4 => \data_counter_reg_n_0_[2]\,
      I5 => \data_stored_reg_n_0_[1]\,
      O => tx_data_out_i_5_n_0
    );
tx_data_out_reg: unisim.vcomponents.FDSE
     port map (
      C => Clk,
      CE => '1',
      D => tx_data_out_i_2_n_0,
      Q => \^rs232_d10\,
      S => start_rst_reg_0
    );
tx_enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040444040404040"
    )
        port map (
      I0 => start_rst_reg_n_0,
      I1 => reset,
      I2 => tx_enable,
      I3 => tmp_done,
      I4 => flipflop_4,
      I5 => flipflop_3,
      O => tx_enable_i_1_n_0
    );
tx_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk,
      CE => '1',
      D => tx_enable_i_1_n_0,
      Q => tx_enable,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LEDS_OUT is
  port (
    tmp_reg : out STD_LOGIC;
    Clk : in STD_LOGIC;
    \counter_reg[18]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LEDS_OUT;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LEDS_OUT is
begin
A0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_divider
     port map (
      Clk => Clk,
      \counter_reg[18]_0\ => \counter_reg[18]\,
      tmp_reg_0 => tmp_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_combine is
  port (
    tmp_done : out STD_LOGIC;
    reset_0 : out STD_LOGIC;
    tmp_reg : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    RS232_A9 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_combine;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_combine is
  signal \^reset_0\ : STD_LOGIC;
  signal \^tmp_reg\ : STD_LOGIC;
begin
  reset_0 <= \^reset_0\;
  tmp_reg <= \^tmp_reg\;
A0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_rx
     port map (
      Clk => Clk,
      RS232_A9 => RS232_A9,
      led(6 downto 0) => led(6 downto 0),
      led_2_sp_1 => \^tmp_reg\,
      reset => reset,
      reset_0 => \^reset_0\,
      tmp_done => tmp_done
    );
A1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LEDS_OUT
     port map (
      Clk => Clk,
      \counter_reg[18]\ => \^reset_0\,
      tmp_reg => \^tmp_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_file_combine is
  port (
    tmp_reg : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 6 downto 0 );
    RS232_D10 : out STD_LOGIC;
    RS232_A9 : in STD_LOGIC;
    Clk : in STD_LOGIC;
    button : in STD_LOGIC;
    reset : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_file_combine;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_file_combine is
  signal A1_n_1 : STD_LOGIC;
  signal flipflop_3 : STD_LOGIC;
  signal flipflop_4 : STD_LOGIC;
  signal tmp_done : STD_LOGIC;
begin
A0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce
     port map (
      Clk => Clk,
      button => button,
      flipflop_3 => flipflop_3,
      flipflop_4 => flipflop_4,
      flipflop_4_reg_0 => A1_n_1,
      reset => reset
    );
A1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_combine
     port map (
      Clk => Clk,
      RS232_A9 => RS232_A9,
      led(6 downto 0) => led(6 downto 0),
      reset => reset,
      reset_0 => A1_n_1,
      tmp_done => tmp_done,
      tmp_reg => tmp_reg
    );
A2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_UART
     port map (
      Clk => Clk,
      RS232_D10 => RS232_D10,
      data_in(7 downto 0) => data_in(7 downto 0),
      flipflop_3 => flipflop_3,
      flipflop_4 => flipflop_4,
      reset => reset,
      start_rst_reg_0 => A1_n_1,
      tmp_done => tmp_done
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    Clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    button : in STD_LOGIC;
    RS232_A9 : in STD_LOGIC;
    RS232_D10 : out STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CAT : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "UART_3_file_combine_0_0,file_combine,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "file_combine,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Clk : signal is "xilinx.com:signal:clock:1.0 Clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Clk : signal is "XIL_INTERFACENAME Clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN UART_3_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_file_combine
     port map (
      Clk => Clk,
      RS232_A9 => RS232_A9,
      RS232_D10 => RS232_D10,
      button => button,
      data_in(7 downto 0) => data_in(7 downto 0),
      led(6 downto 0) => led(6 downto 0),
      reset => reset,
      tmp_reg => CAT
    );
end STRUCTURE;
