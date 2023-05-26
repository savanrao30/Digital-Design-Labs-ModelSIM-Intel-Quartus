-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/30/2021 13:25:17"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	division IS
    PORT (
	y : IN std_logic_vector(4 DOWNTO 0);
	d : IN std_logic_vector(4 DOWNTO 0);
	q : BUFFER std_logic_vector(4 DOWNTO 0);
	r : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END division;

-- Design Ports Information
-- q[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF division IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_y : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_d : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \r[0]~output_o\ : std_logic;
SIGNAL \r[1]~output_o\ : std_logic;
SIGNAL \r[2]~output_o\ : std_logic;
SIGNAL \r[3]~output_o\ : std_logic;
SIGNAL \r[4]~output_o\ : std_logic;
SIGNAL \d[4]~input_o\ : std_logic;
SIGNAL \y[2]~input_o\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \y[1]~input_o\ : std_logic;
SIGNAL \y[0]~input_o\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \y[3]~input_o\ : std_logic;
SIGNAL \y[4]~input_o\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \P3[6]~0_combout\ : std_logic;
SIGNAL \P3[6]~1_combout\ : std_logic;
SIGNAL \P3[6]~2_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \P3[6]~3_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \P3[5]~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \P3[4]~5_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \P3[3]~6_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \P3[2]~7_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \P1[8]~2_combout\ : std_logic;
SIGNAL \P2[7]~2_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \P2[6]~7_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \P2[5]~3_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \P2[4]~4_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \P2[3]~5_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \P1[8]~3_combout\ : std_logic;
SIGNAL \P1[8]~4_combout\ : std_logic;
SIGNAL \P1[8]~10_combout\ : std_logic;
SIGNAL \P1[8]~5_combout\ : std_logic;
SIGNAL \LessThan5~6_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \P1[6]~6_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \P1[5]~8_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \P1[4]~7_combout\ : std_logic;
SIGNAL \LessThan5~4_combout\ : std_logic;
SIGNAL \LessThan5~5_combout\ : std_logic;
SIGNAL \LessThan5~7_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \LessThan5~8_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \P3[1]~8_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \P2[2]~6_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \P1[3]~9_combout\ : std_logic;
SIGNAL \P0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_y <= y;
ww_d <= d;
q <= ww_q;
r <= ww_r;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_LessThan5~8_combout\ <= NOT \LessThan5~8_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y48_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X34_Y39_N2
\q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan5~8_combout\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan0~4_combout\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1[8]~2_combout\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P3[6]~2_combout\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\q[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan0~4_combout\,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\r[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~20_combout\,
	devoe => ww_devoe,
	o => \r[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\r[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P3[1]~8_combout\,
	devoe => ww_devoe,
	o => \r[1]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\r[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P2[2]~6_combout\,
	devoe => ww_devoe,
	o => \r[2]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\r[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P1[3]~9_combout\,
	devoe => ww_devoe,
	o => \r[3]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\r[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P0~0_combout\,
	devoe => ww_devoe,
	o => \r[4]~output_o\);

-- Location: IOIBUF_X34_Y39_N29
\d[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(4),
	o => \d[4]~input_o\);

-- Location: IOIBUF_X31_Y39_N22
\y[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(2),
	o => \y[2]~input_o\);

-- Location: IOIBUF_X31_Y39_N1
\d[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: IOIBUF_X31_Y39_N8
\y[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(1),
	o => \y[1]~input_o\);

-- Location: IOIBUF_X31_Y39_N29
\y[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(0),
	o => \y[0]~input_o\);

-- Location: IOIBUF_X36_Y39_N29
\d[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: LCCOMB_X34_Y38_N28
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\y[1]~input_o\ & (\d[0]~input_o\ & (!\y[0]~input_o\ & \d[1]~input_o\))) # (!\y[1]~input_o\ & ((\d[1]~input_o\) # ((\d[0]~input_o\ & !\y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[0]~input_o\,
	datab => \y[1]~input_o\,
	datac => \y[0]~input_o\,
	datad => \d[1]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: IOIBUF_X34_Y39_N15
\d[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: IOIBUF_X29_Y39_N15
\y[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(3),
	o => \y[3]~input_o\);

-- Location: IOIBUF_X29_Y39_N1
\y[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y(4),
	o => \y[4]~input_o\);

-- Location: IOIBUF_X36_Y39_N15
\d[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: LCCOMB_X34_Y38_N2
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\y[3]~input_o\ & (\d[3]~input_o\ & (\d[4]~input_o\ $ (!\y[4]~input_o\)))) # (!\y[3]~input_o\ & (!\d[3]~input_o\ & (\d[4]~input_o\ $ (!\y[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datab => \d[4]~input_o\,
	datac => \y[4]~input_o\,
	datad => \d[3]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X34_Y38_N6
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~1_combout\ & ((\y[2]~input_o\ & (\LessThan0~2_combout\ & \d[2]~input_o\)) # (!\y[2]~input_o\ & ((\LessThan0~2_combout\) # (\d[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datab => \LessThan0~2_combout\,
	datac => \d[2]~input_o\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X34_Y38_N12
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\d[0]~input_o\ & (\y[0]~input_o\ $ (VCC))) # (!\d[0]~input_o\ & ((\y[0]~input_o\) # (GND)))
-- \Add0~1\ = CARRY((\y[0]~input_o\) # (!\d[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[0]~input_o\,
	datab => \y[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X34_Y38_N14
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\d[1]~input_o\ & ((\y[1]~input_o\ & (!\Add0~1\)) # (!\y[1]~input_o\ & ((\Add0~1\) # (GND))))) # (!\d[1]~input_o\ & ((\y[1]~input_o\ & (\Add0~1\ & VCC)) # (!\y[1]~input_o\ & (!\Add0~1\))))
-- \Add0~3\ = CARRY((\d[1]~input_o\ & ((!\Add0~1\) # (!\y[1]~input_o\))) # (!\d[1]~input_o\ & (!\y[1]~input_o\ & !\Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[1]~input_o\,
	datab => \y[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X34_Y38_N16
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\y[2]~input_o\ $ (\d[2]~input_o\ $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\y[2]~input_o\ & ((!\Add0~3\) # (!\d[2]~input_o\))) # (!\y[2]~input_o\ & (!\d[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y[2]~input_o\,
	datab => \d[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X34_Y38_N18
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\y[3]~input_o\ & ((\d[3]~input_o\ & (!\Add0~5\)) # (!\d[3]~input_o\ & (\Add0~5\ & VCC)))) # (!\y[3]~input_o\ & ((\d[3]~input_o\ & ((\Add0~5\) # (GND))) # (!\d[3]~input_o\ & (!\Add0~5\))))
-- \Add0~7\ = CARRY((\y[3]~input_o\ & (\d[3]~input_o\ & !\Add0~5\)) # (!\y[3]~input_o\ & ((\d[3]~input_o\) # (!\Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datab => \d[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X34_Y38_N20
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\y[4]~input_o\ $ (\d[4]~input_o\ $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\y[4]~input_o\ & ((!\Add0~7\) # (!\d[4]~input_o\))) # (!\y[4]~input_o\ & (!\d[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \y[4]~input_o\,
	datab => \d[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X34_Y38_N22
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = !\Add0~9\
-- \Add0~11\ = CARRY(!\Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X34_Y38_N24
\Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = \Add0~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~11\,
	combout => \Add0~13_combout\);

-- Location: LCCOMB_X34_Y38_N0
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\d[4]~input_o\ & (((!\y[3]~input_o\ & \d[3]~input_o\)) # (!\y[4]~input_o\))) # (!\d[4]~input_o\ & (!\y[3]~input_o\ & (!\y[4]~input_o\ & \d[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y[3]~input_o\,
	datab => \d[4]~input_o\,
	datac => \y[4]~input_o\,
	datad => \d[3]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y38_N2
\Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (!\LessThan0~3_combout\ & (\Add0~13_combout\ & !\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datac => \Add0~13_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X30_Y38_N24
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Add0~10_combout\ & (!\LessThan0~3_combout\ & !\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X34_Y38_N8
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\LessThan0~3_combout\ & (((\y[4]~input_o\)))) # (!\LessThan0~3_combout\ & ((\LessThan0~0_combout\ & ((\y[4]~input_o\))) # (!\LessThan0~0_combout\ & (\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \Add0~8_combout\,
	datac => \y[4]~input_o\,
	datad => \LessThan0~0_combout\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X34_Y38_N26
\Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\LessThan0~3_combout\ & (((\y[3]~input_o\)))) # (!\LessThan0~3_combout\ & ((\LessThan0~0_combout\ & ((\y[3]~input_o\))) # (!\LessThan0~0_combout\ & (\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \Add0~6_combout\,
	datac => \y[3]~input_o\,
	datad => \LessThan0~0_combout\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X34_Y38_N4
\Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\LessThan0~3_combout\ & (((\y[2]~input_o\)))) # (!\LessThan0~3_combout\ & ((\LessThan0~0_combout\ & ((\y[2]~input_o\))) # (!\LessThan0~0_combout\ & (\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \Add0~4_combout\,
	datac => \LessThan0~0_combout\,
	datad => \y[2]~input_o\,
	combout => \Add0~19_combout\);

-- Location: LCCOMB_X34_Y38_N10
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\LessThan0~3_combout\ & (\y[1]~input_o\)) # (!\LessThan0~3_combout\ & ((\LessThan0~0_combout\ & (\y[1]~input_o\)) # (!\LessThan0~0_combout\ & ((\Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \y[1]~input_o\,
	datac => \Add0~2_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X35_Y38_N16
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Add0~18_combout\ & ((GND) # (!\d[0]~input_o\))) # (!\Add0~18_combout\ & (\d[0]~input_o\ $ (GND)))
-- \Add1~1\ = CARRY((\Add0~18_combout\) # (!\d[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \d[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X35_Y38_N18
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\d[1]~input_o\ & ((\Add0~19_combout\ & (!\Add1~1\)) # (!\Add0~19_combout\ & ((\Add1~1\) # (GND))))) # (!\d[1]~input_o\ & ((\Add0~19_combout\ & (\Add1~1\ & VCC)) # (!\Add0~19_combout\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\d[1]~input_o\ & ((!\Add1~1\) # (!\Add0~19_combout\))) # (!\d[1]~input_o\ & (!\Add0~19_combout\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[1]~input_o\,
	datab => \Add0~19_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X35_Y38_N20
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Add0~17_combout\ $ (\d[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Add0~17_combout\ & ((!\Add1~3\) # (!\d[2]~input_o\))) # (!\Add0~17_combout\ & (!\d[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \d[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X35_Y38_N22
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~16_combout\ & ((\d[3]~input_o\ & (!\Add1~5\)) # (!\d[3]~input_o\ & (\Add1~5\ & VCC)))) # (!\Add0~16_combout\ & ((\d[3]~input_o\ & ((\Add1~5\) # (GND))) # (!\d[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\Add0~16_combout\ & (\d[3]~input_o\ & !\Add1~5\)) # (!\Add0~16_combout\ & ((\d[3]~input_o\) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \d[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X35_Y38_N24
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Add0~12_combout\ $ (\d[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Add0~12_combout\ & ((!\Add1~7\) # (!\d[4]~input_o\))) # (!\Add0~12_combout\ & (!\d[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \d[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X35_Y38_N26
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add0~15_combout\ & (\Add1~9\ & VCC)) # (!\Add0~15_combout\ & (!\Add1~9\))
-- \Add1~11\ = CARRY((!\Add0~15_combout\ & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X35_Y38_N28
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = \Add1~11\ $ (\Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add0~15_combout\,
	cin => \Add1~11\,
	combout => \Add1~12_combout\);

-- Location: LCCOMB_X35_Y38_N8
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\Add0~19_combout\ & (!\Add0~18_combout\ & (\d[1]~input_o\ & \d[0]~input_o\))) # (!\Add0~19_combout\ & ((\d[1]~input_o\) # ((!\Add0~18_combout\ & \d[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~19_combout\,
	datac => \d[1]~input_o\,
	datad => \d[0]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X35_Y38_N2
\P3[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P3[6]~0_combout\ = (\d[2]~input_o\ & ((\LessThan1~0_combout\) # (!\Add0~17_combout\))) # (!\d[2]~input_o\ & (\LessThan1~0_combout\ & !\Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[2]~input_o\,
	datab => \LessThan1~0_combout\,
	datac => \Add0~17_combout\,
	combout => \P3[6]~0_combout\);

-- Location: LCCOMB_X35_Y38_N4
\P3[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P3[6]~1_combout\ = (\Add0~16_combout\ & (\P3[6]~0_combout\ & \d[3]~input_o\)) # (!\Add0~16_combout\ & ((\P3[6]~0_combout\) # (\d[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \P3[6]~0_combout\,
	datad => \d[3]~input_o\,
	combout => \P3[6]~1_combout\);

-- Location: LCCOMB_X35_Y38_N30
\P3[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P3[6]~2_combout\ = (\Add0~15_combout\) # ((\P3[6]~1_combout\ & (\Add0~12_combout\ & !\d[4]~input_o\)) # (!\P3[6]~1_combout\ & ((\Add0~12_combout\) # (!\d[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \P3[6]~1_combout\,
	datac => \Add0~12_combout\,
	datad => \d[4]~input_o\,
	combout => \P3[6]~2_combout\);

-- Location: LCCOMB_X35_Y36_N24
\P3[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P3[6]~3_combout\ = (\P3[6]~2_combout\ & \Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P3[6]~2_combout\,
	datad => \Add1~10_combout\,
	combout => \P3[6]~3_combout\);

-- Location: LCCOMB_X35_Y38_N0
\P3[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P3[5]~4_combout\ = (\P3[6]~2_combout\ & ((\Add1~8_combout\))) # (!\P3[6]~2_combout\ & (\Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3[6]~2_combout\,
	datac => \Add0~12_combout\,
	datad => \Add1~8_combout\,
	combout => \P3[5]~4_combout\);

-- Location: LCCOMB_X34_Y36_N24
\P3[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P3[4]~5_combout\ = (\P3[6]~2_combout\ & (\Add1~6_combout\)) # (!\P3[6]~2_combout\ & ((\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datac => \Add0~16_combout\,
	datad => \P3[6]~2_combout\,
	combout => \P3[4]~5_combout\);

-- Location: LCCOMB_X35_Y38_N10
\P3[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P3[3]~6_combout\ = (\P3[6]~2_combout\ & ((\Add1~4_combout\))) # (!\P3[6]~2_combout\ & (\Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datac => \P3[6]~2_combout\,
	datad => \Add1~4_combout\,
	combout => \P3[3]~6_combout\);

-- Location: LCCOMB_X35_Y38_N12
\P3[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P3[2]~7_combout\ = (\P3[6]~2_combout\ & (\Add1~2_combout\)) # (!\P3[6]~2_combout\ & ((\Add0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3[6]~2_combout\,
	datab => \Add1~2_combout\,
	datac => \Add0~19_combout\,
	combout => \P3[2]~7_combout\);

-- Location: LCCOMB_X34_Y36_N8
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\d[0]~input_o\ & (\P3[2]~7_combout\ $ (VCC))) # (!\d[0]~input_o\ & ((\P3[2]~7_combout\) # (GND)))
-- \Add2~1\ = CARRY((\P3[2]~7_combout\) # (!\d[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[0]~input_o\,
	datab => \P3[2]~7_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X34_Y36_N10
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\d[1]~input_o\ & ((\P3[3]~6_combout\ & (!\Add2~1\)) # (!\P3[3]~6_combout\ & ((\Add2~1\) # (GND))))) # (!\d[1]~input_o\ & ((\P3[3]~6_combout\ & (\Add2~1\ & VCC)) # (!\P3[3]~6_combout\ & (!\Add2~1\))))
-- \Add2~3\ = CARRY((\d[1]~input_o\ & ((!\Add2~1\) # (!\P3[3]~6_combout\))) # (!\d[1]~input_o\ & (!\P3[3]~6_combout\ & !\Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[1]~input_o\,
	datab => \P3[3]~6_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X34_Y36_N12
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\P3[4]~5_combout\ $ (\d[2]~input_o\ $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\P3[4]~5_combout\ & ((!\Add2~3\) # (!\d[2]~input_o\))) # (!\P3[4]~5_combout\ & (!\d[2]~input_o\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P3[4]~5_combout\,
	datab => \d[2]~input_o\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X34_Y36_N14
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\d[3]~input_o\ & ((\P3[5]~4_combout\ & (!\Add2~5\)) # (!\P3[5]~4_combout\ & ((\Add2~5\) # (GND))))) # (!\d[3]~input_o\ & ((\P3[5]~4_combout\ & (\Add2~5\ & VCC)) # (!\P3[5]~4_combout\ & (!\Add2~5\))))
-- \Add2~7\ = CARRY((\d[3]~input_o\ & ((!\Add2~5\) # (!\P3[5]~4_combout\))) # (!\d[3]~input_o\ & (!\P3[5]~4_combout\ & !\Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[3]~input_o\,
	datab => \P3[5]~4_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X34_Y36_N16
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\d[4]~input_o\ $ (\P3[6]~3_combout\ $ (\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\d[4]~input_o\ & (\P3[6]~3_combout\ & !\Add2~7\)) # (!\d[4]~input_o\ & ((\P3[6]~3_combout\) # (!\Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \d[4]~input_o\,
	datab => \P3[6]~3_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X34_Y36_N18
\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add1~12_combout\ & ((\P3[6]~2_combout\ & (\Add2~9\ & VCC)) # (!\P3[6]~2_combout\ & (!\Add2~9\)))) # (!\Add1~12_combout\ & (((!\Add2~9\))))
-- \Add2~11\ = CARRY((!\Add2~9\ & ((!\P3[6]~2_combout\) # (!\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \P3[6]~2_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X35_Y36_N28
\LessThan2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (\P3[6]~2_combout\ & \Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P3[6]~2_combout\,
	datad => \Add1~10_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X34_Y36_N22
\LessThan2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (\d[2]~input_o\ & ((\P3[6]~2_combout\ & (!\Add1~6_combout\)) # (!\P3[6]~2_combout\ & ((!\Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \d[2]~input_o\,
	datac => \Add0~16_combout\,
	datad => \P3[6]~2_combout\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X35_Y36_N26
\LessThan2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (\P3[5]~4_combout\ & (\LessThan2~3_combout\ & \d[3]~input_o\)) # (!\P3[5]~4_combout\ & ((\LessThan2~3_combout\) # (\d[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3[5]~4_combout\,
	datab => \LessThan2~3_combout\,
	datac => \d[3]~input_o\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X35_Y36_N14
\LessThan2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (\d[4]~input_o\ & (((\LessThan2~4_combout\ & \P3[6]~3_combout\)) # (!\LessThan2~5_combout\))) # (!\d[4]~input_o\ & (((\LessThan2~4_combout\ & !\P3[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[4]~input_o\,
	datab => \LessThan2~5_combout\,
	datac => \LessThan2~4_combout\,
	datad => \P3[6]~3_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X34_Y36_N26
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\d[4]~input_o\ & (\P3[6]~3_combout\ & (\d[3]~input_o\ $ (!\P3[5]~4_combout\)))) # (!\d[4]~input_o\ & (!\P3[6]~3_combout\ & (\d[3]~input_o\ $ (!\P3[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[4]~input_o\,
	datab => \P3[6]~3_combout\,
	datac => \d[3]~input_o\,
	datad => \P3[5]~4_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X34_Y36_N4
\LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\P3[3]~6_combout\ & (!\P3[2]~7_combout\ & (\d[0]~input_o\ & \d[1]~input_o\))) # (!\P3[3]~6_combout\ & ((\d[1]~input_o\) # ((!\P3[2]~7_combout\ & \d[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3[3]~6_combout\,
	datab => \P3[2]~7_combout\,
	datac => \d[0]~input_o\,
	datad => \d[1]~input_o\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X34_Y36_N30
\LessThan2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (\LessThan2~0_combout\ & (\LessThan2~1_combout\ & (\P3[4]~5_combout\ $ (!\d[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \P3[4]~5_combout\,
	datac => \LessThan2~1_combout\,
	datad => \d[2]~input_o\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X34_Y36_N0
\P1[8]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1[8]~2_combout\ = (\LessThan2~6_combout\ & (\Add1~12_combout\ & ((\P3[6]~2_combout\)))) # (!\LessThan2~6_combout\ & (((\Add1~12_combout\ & \P3[6]~2_combout\)) # (!\LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~6_combout\,
	datab => \Add1~12_combout\,
	datac => \LessThan2~2_combout\,
	datad => \P3[6]~2_combout\,
	combout => \P1[8]~2_combout\);

-- Location: LCCOMB_X35_Y36_N16
\P2[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2[7]~2_combout\ = (\P1[8]~2_combout\ & \Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1[8]~2_combout\,
	datac => \Add2~10_combout\,
	combout => \P2[7]~2_combout\);

-- Location: LCCOMB_X35_Y36_N12
\P2[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2[6]~7_combout\ = (\P1[8]~2_combout\ & (\Add2~8_combout\)) # (!\P1[8]~2_combout\ & (((\P3[6]~2_combout\ & \Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1[8]~2_combout\,
	datab => \Add2~8_combout\,
	datac => \P3[6]~2_combout\,
	datad => \Add1~10_combout\,
	combout => \P2[6]~7_combout\);

-- Location: LCCOMB_X35_Y36_N2
\P2[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2[5]~3_combout\ = (\P1[8]~2_combout\ & (\Add2~6_combout\)) # (!\P1[8]~2_combout\ & ((\P3[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \P1[8]~2_combout\,
	datac => \P3[5]~4_combout\,
	combout => \P2[5]~3_combout\);

-- Location: LCCOMB_X34_Y36_N2
\P2[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2[4]~4_combout\ = (\P1[8]~2_combout\ & (\Add2~4_combout\)) # (!\P1[8]~2_combout\ & ((\P3[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \P3[4]~5_combout\,
	datad => \P1[8]~2_combout\,
	combout => \P2[4]~4_combout\);

-- Location: LCCOMB_X34_Y36_N28
\P2[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2[3]~5_combout\ = (\P1[8]~2_combout\ & (\Add2~2_combout\)) # (!\P1[8]~2_combout\ & ((\P3[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \P1[8]~2_combout\,
	datac => \P3[3]~6_combout\,
	combout => \P2[3]~5_combout\);

-- Location: LCCOMB_X36_Y36_N0
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\P2[3]~5_combout\ & ((GND) # (!\d[0]~input_o\))) # (!\P2[3]~5_combout\ & (\d[0]~input_o\ $ (GND)))
-- \Add3~1\ = CARRY((\P2[3]~5_combout\) # (!\d[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[3]~5_combout\,
	datab => \d[0]~input_o\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X36_Y36_N2
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\P2[4]~4_combout\ & ((\d[1]~input_o\ & (!\Add3~1\)) # (!\d[1]~input_o\ & (\Add3~1\ & VCC)))) # (!\P2[4]~4_combout\ & ((\d[1]~input_o\ & ((\Add3~1\) # (GND))) # (!\d[1]~input_o\ & (!\Add3~1\))))
-- \Add3~3\ = CARRY((\P2[4]~4_combout\ & (\d[1]~input_o\ & !\Add3~1\)) # (!\P2[4]~4_combout\ & ((\d[1]~input_o\) # (!\Add3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P2[4]~4_combout\,
	datab => \d[1]~input_o\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X36_Y36_N4
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\P2[5]~3_combout\ $ (\d[2]~input_o\ $ (\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\P2[5]~3_combout\ & ((!\Add3~3\) # (!\d[2]~input_o\))) # (!\P2[5]~3_combout\ & (!\d[2]~input_o\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P2[5]~3_combout\,
	datab => \d[2]~input_o\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X36_Y36_N6
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\P2[6]~7_combout\ & ((\d[3]~input_o\ & (!\Add3~5\)) # (!\d[3]~input_o\ & (\Add3~5\ & VCC)))) # (!\P2[6]~7_combout\ & ((\d[3]~input_o\ & ((\Add3~5\) # (GND))) # (!\d[3]~input_o\ & (!\Add3~5\))))
-- \Add3~7\ = CARRY((\P2[6]~7_combout\ & (\d[3]~input_o\ & !\Add3~5\)) # (!\P2[6]~7_combout\ & ((\d[3]~input_o\) # (!\Add3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P2[6]~7_combout\,
	datab => \d[3]~input_o\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X36_Y36_N8
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\P2[7]~2_combout\ $ (\d[4]~input_o\ $ (\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((\P2[7]~2_combout\ & ((!\Add3~7\) # (!\d[4]~input_o\))) # (!\P2[7]~2_combout\ & (!\d[4]~input_o\ & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \P2[7]~2_combout\,
	datab => \d[4]~input_o\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X34_Y36_N20
\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = \Add2~11\ $ (((\Add1~12_combout\ & \P3[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	datad => \P3[6]~2_combout\,
	cin => \Add2~11\,
	combout => \Add2~12_combout\);

-- Location: LCCOMB_X36_Y36_N28
\LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\P2[4]~4_combout\ & (!\P2[3]~5_combout\ & (\d[0]~input_o\ & \d[1]~input_o\))) # (!\P2[4]~4_combout\ & ((\d[1]~input_o\) # ((!\P2[3]~5_combout\ & \d[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[4]~4_combout\,
	datab => \P2[3]~5_combout\,
	datac => \d[0]~input_o\,
	datad => \d[1]~input_o\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X36_Y36_N14
\P1[8]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1[8]~3_combout\ = (\P2[5]~3_combout\ & (\d[2]~input_o\ & \LessThan3~0_combout\)) # (!\P2[5]~3_combout\ & ((\d[2]~input_o\) # (\LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[5]~3_combout\,
	datab => \d[2]~input_o\,
	datad => \LessThan3~0_combout\,
	combout => \P1[8]~3_combout\);

-- Location: LCCOMB_X36_Y36_N16
\P1[8]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1[8]~4_combout\ = (\P2[6]~7_combout\ & (\P1[8]~3_combout\ & \d[3]~input_o\)) # (!\P2[6]~7_combout\ & ((\P1[8]~3_combout\) # (\d[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[6]~7_combout\,
	datac => \P1[8]~3_combout\,
	datad => \d[3]~input_o\,
	combout => \P1[8]~4_combout\);

-- Location: LCCOMB_X36_Y36_N22
\P1[8]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1[8]~10_combout\ = (\d[4]~input_o\ & (((\P1[8]~4_combout\) # (!\Add2~10_combout\)) # (!\P1[8]~2_combout\))) # (!\d[4]~input_o\ & (\P1[8]~4_combout\ & ((!\Add2~10_combout\) # (!\P1[8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1[8]~2_combout\,
	datab => \Add2~10_combout\,
	datac => \d[4]~input_o\,
	datad => \P1[8]~4_combout\,
	combout => \P1[8]~10_combout\);

-- Location: LCCOMB_X36_Y36_N18
\P1[8]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1[8]~5_combout\ = ((\Add2~12_combout\ & \P1[8]~2_combout\)) # (!\P1[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datac => \P1[8]~10_combout\,
	datad => \P1[8]~2_combout\,
	combout => \P1[8]~5_combout\);

-- Location: LCCOMB_X35_Y36_N6
\LessThan5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~6_combout\ = (\P1[8]~5_combout\ & (((\Add3~8_combout\)))) # (!\P1[8]~5_combout\ & (\Add2~10_combout\ & ((\P1[8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add3~8_combout\,
	datac => \P1[8]~2_combout\,
	datad => \P1[8]~5_combout\,
	combout => \LessThan5~6_combout\);

-- Location: LCCOMB_X35_Y36_N30
\LessThan5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = \d[3]~input_o\ $ (((\P1[8]~5_combout\ & ((\Add3~8_combout\))) # (!\P1[8]~5_combout\ & (\P2[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[3]~input_o\,
	datab => \P2[7]~2_combout\,
	datac => \Add3~8_combout\,
	datad => \P1[8]~5_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X35_Y36_N20
\P1[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1[6]~6_combout\ = (\P1[8]~5_combout\ & ((\Add3~6_combout\))) # (!\P1[8]~5_combout\ & (\P2[6]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[6]~7_combout\,
	datab => \P1[8]~5_combout\,
	datad => \Add3~6_combout\,
	combout => \P1[6]~6_combout\);

-- Location: LCCOMB_X35_Y36_N8
\LessThan5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~3_combout\ = (\d[2]~input_o\ & (!\LessThan5~2_combout\ & !\P1[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d[2]~input_o\,
	datac => \LessThan5~2_combout\,
	datad => \P1[6]~6_combout\,
	combout => \LessThan5~3_combout\);

-- Location: LCCOMB_X36_Y36_N30
\P1[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1[5]~8_combout\ = (\P1[8]~5_combout\ & ((\Add3~4_combout\))) # (!\P1[8]~5_combout\ & (\P2[5]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[5]~3_combout\,
	datac => \Add3~4_combout\,
	datad => \P1[8]~5_combout\,
	combout => \P1[5]~8_combout\);

-- Location: LCCOMB_X36_Y36_N20
\P1[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1[4]~7_combout\ = (\P1[8]~5_combout\ & ((\Add3~2_combout\))) # (!\P1[8]~5_combout\ & (\P2[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[4]~4_combout\,
	datab => \Add3~2_combout\,
	datad => \P1[8]~5_combout\,
	combout => \P1[4]~7_combout\);

-- Location: LCCOMB_X36_Y36_N24
\LessThan5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~4_combout\ = (\P1[5]~8_combout\ & (!\P1[4]~7_combout\ & (\d[0]~input_o\ & \d[1]~input_o\))) # (!\P1[5]~8_combout\ & ((\d[1]~input_o\) # ((!\P1[4]~7_combout\ & \d[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1[5]~8_combout\,
	datab => \P1[4]~7_combout\,
	datac => \d[0]~input_o\,
	datad => \d[1]~input_o\,
	combout => \LessThan5~4_combout\);

-- Location: LCCOMB_X35_Y36_N10
\LessThan5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~5_combout\ = (\LessThan5~4_combout\ & (\P1[6]~6_combout\ $ (!\d[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P1[6]~6_combout\,
	datac => \d[2]~input_o\,
	datad => \LessThan5~4_combout\,
	combout => \LessThan5~5_combout\);

-- Location: LCCOMB_X35_Y36_N0
\LessThan5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~7_combout\ = (\LessThan5~3_combout\) # ((\LessThan5~6_combout\ & (\d[3]~input_o\ & \LessThan5~5_combout\)) # (!\LessThan5~6_combout\ & ((\d[3]~input_o\) # (\LessThan5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~6_combout\,
	datab => \LessThan5~3_combout\,
	datac => \d[3]~input_o\,
	datad => \LessThan5~5_combout\,
	combout => \LessThan5~7_combout\);

-- Location: LCCOMB_X36_Y36_N10
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = \Add3~9\ $ (((!\P1[8]~2_combout\) # (!\Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datad => \P1[8]~2_combout\,
	cin => \Add3~9\,
	combout => \Add3~10_combout\);

-- Location: LCCOMB_X35_Y36_N18
\LessThan5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~8_combout\ = (\d[4]~input_o\ & ((\LessThan5~7_combout\) # ((!\P1[8]~5_combout\) # (!\Add3~10_combout\)))) # (!\d[4]~input_o\ & (\LessThan5~7_combout\ & ((!\P1[8]~5_combout\) # (!\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[4]~input_o\,
	datab => \LessThan5~7_combout\,
	datac => \Add3~10_combout\,
	datad => \P1[8]~5_combout\,
	combout => \LessThan5~8_combout\);

-- Location: LCCOMB_X30_Y38_N28
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~3_combout\) # (\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X34_Y38_N30
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\LessThan0~0_combout\ & (((\y[0]~input_o\)))) # (!\LessThan0~0_combout\ & ((\LessThan0~3_combout\ & ((\y[0]~input_o\))) # (!\LessThan0~3_combout\ & (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => \y[0]~input_o\,
	datad => \LessThan0~3_combout\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X35_Y38_N14
\P3[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P3[1]~8_combout\ = (\P3[6]~2_combout\ & ((\Add1~0_combout\))) # (!\P3[6]~2_combout\ & (\Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add1~0_combout\,
	datac => \P3[6]~2_combout\,
	combout => \P3[1]~8_combout\);

-- Location: LCCOMB_X34_Y36_N6
\P2[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P2[2]~6_combout\ = (\P1[8]~2_combout\ & (\Add2~0_combout\)) # (!\P1[8]~2_combout\ & ((\P3[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P1[8]~2_combout\,
	datac => \Add2~0_combout\,
	datad => \P3[2]~7_combout\,
	combout => \P2[2]~6_combout\);

-- Location: LCCOMB_X36_Y36_N26
\P1[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P1[3]~9_combout\ = (\P1[8]~5_combout\ & (\Add3~0_combout\)) # (!\P1[8]~5_combout\ & ((\P2[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~0_combout\,
	datac => \P2[3]~5_combout\,
	datad => \P1[8]~5_combout\,
	combout => \P1[3]~9_combout\);

-- Location: LCCOMB_X36_Y36_N12
\P0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \P0~0_combout\ = \P1[4]~7_combout\ $ (((!\LessThan5~8_combout\ & \d[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan5~8_combout\,
	datac => \d[0]~input_o\,
	datad => \P1[4]~7_combout\,
	combout => \P0~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_r(0) <= \r[0]~output_o\;

ww_r(1) <= \r[1]~output_o\;

ww_r(2) <= \r[2]~output_o\;

ww_r(3) <= \r[3]~output_o\;

ww_r(4) <= \r[4]~output_o\;
END structure;


