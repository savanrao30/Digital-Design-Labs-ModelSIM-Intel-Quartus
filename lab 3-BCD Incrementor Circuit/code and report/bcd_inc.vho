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

-- DATE "09/23/2021 01:49:16"

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

ENTITY 	bcd_inc IS
    PORT (
	b2 : IN std_logic_vector(3 DOWNTO 0);
	b1 : IN std_logic_vector(3 DOWNTO 0);
	b0 : IN std_logic_vector(3 DOWNTO 0);
	y2 : OUT std_logic_vector(3 DOWNTO 0);
	y1 : OUT std_logic_vector(3 DOWNTO 0);
	y0 : OUT std_logic_vector(3 DOWNTO 0)
	);
END bcd_inc;

-- Design Ports Information
-- y2[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2[2]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1[0]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1[2]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1[3]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[0]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2[0]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2[2]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1[0]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1[3]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1[1]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0[0]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcd_inc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_b2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \y2[0]~output_o\ : std_logic;
SIGNAL \y2[1]~output_o\ : std_logic;
SIGNAL \y2[2]~output_o\ : std_logic;
SIGNAL \y2[3]~output_o\ : std_logic;
SIGNAL \y1[0]~output_o\ : std_logic;
SIGNAL \y1[1]~output_o\ : std_logic;
SIGNAL \y1[2]~output_o\ : std_logic;
SIGNAL \y1[3]~output_o\ : std_logic;
SIGNAL \y0[0]~output_o\ : std_logic;
SIGNAL \y0[1]~output_o\ : std_logic;
SIGNAL \y0[2]~output_o\ : std_logic;
SIGNAL \y0[3]~output_o\ : std_logic;
SIGNAL \b1[1]~input_o\ : std_logic;
SIGNAL \b1[3]~input_o\ : std_logic;
SIGNAL \b1[2]~input_o\ : std_logic;
SIGNAL \b1[0]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \b2[0]~input_o\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \b2[2]~input_o\ : std_logic;
SIGNAL \b2[1]~input_o\ : std_logic;
SIGNAL \b2[3]~input_o\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3_combout\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add2~4\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9_combout\ : std_logic;
SIGNAL \Add2~11_combout\ : std_logic;
SIGNAL \b0[2]~input_o\ : std_logic;
SIGNAL \b0[1]~input_o\ : std_logic;
SIGNAL \b0[0]~input_o\ : std_logic;
SIGNAL \b0[3]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \y0~0_combout\ : std_logic;
SIGNAL \y0~1_combout\ : std_logic;
SIGNAL \y0~2_combout\ : std_logic;
SIGNAL \y0~3_combout\ : std_logic;
SIGNAL \ALT_INV_y0~3_combout\ : std_logic;
SIGNAL \ALT_INV_y0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_b2 <= b2;
ww_b1 <= b1;
ww_b0 <= b0;
y2 <= ww_y2;
y1 <= ww_y1;
y0 <= ww_y0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_y0~3_combout\ <= NOT \y0~3_combout\;
\ALT_INV_y0~0_combout\ <= NOT \y0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N16
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

-- Location: IOOBUF_X0_Y30_N23
\y2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~2_combout\,
	devoe => ww_devoe,
	o => \y2[0]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\y2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~5_combout\,
	devoe => ww_devoe,
	o => \y2[1]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\y2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~8_combout\,
	devoe => ww_devoe,
	o => \y2[2]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\y2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add2~11_combout\,
	devoe => ww_devoe,
	o => \y2[3]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\y1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~2_combout\,
	devoe => ww_devoe,
	o => \y1[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N23
\y1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~5_combout\,
	devoe => ww_devoe,
	o => \y1[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\y1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~8_combout\,
	devoe => ww_devoe,
	o => \y1[2]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\y1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~11_combout\,
	devoe => ww_devoe,
	o => \y1[3]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\y0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_y0~0_combout\,
	devoe => ww_devoe,
	o => \y0[0]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\y0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y0~1_combout\,
	devoe => ww_devoe,
	o => \y0[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\y0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y0~2_combout\,
	devoe => ww_devoe,
	o => \y0[2]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\y0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_y0~3_combout\,
	devoe => ww_devoe,
	o => \y0[3]~output_o\);

-- Location: IOIBUF_X0_Y34_N15
\b1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1(1),
	o => \b1[1]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\b1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1(3),
	o => \b1[3]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\b1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1(2),
	o => \b1[2]~input_o\);

-- Location: IOIBUF_X0_Y37_N15
\b1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1(0),
	o => \b1[0]~input_o\);

-- Location: LCCOMB_X1_Y34_N10
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\b1[1]~input_o\ & (\b1[3]~input_o\ & (!\b1[2]~input_o\ & \b1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[1]~input_o\,
	datab => \b1[3]~input_o\,
	datac => \b1[2]~input_o\,
	datad => \b1[0]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X0_Y34_N22
\b2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2(0),
	o => \b2[0]~input_o\);

-- Location: LCCOMB_X1_Y34_N16
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Equal1~0_combout\ & (\b2[0]~input_o\ $ (VCC))) # (!\Equal1~0_combout\ & (\b2[0]~input_o\ & VCC))
-- \Add2~1\ = CARRY((\Equal1~0_combout\ & \b2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \b2[0]~input_o\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: IOIBUF_X0_Y34_N1
\b2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2(2),
	o => \b2[2]~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\b2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2(1),
	o => \b2[1]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\b2[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2(3),
	o => \b2[3]~input_o\);

-- Location: LCCOMB_X1_Y34_N8
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ((!\b2[2]~input_o\ & (!\b2[0]~input_o\ & !\b2[1]~input_o\))) # (!\b2[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2[2]~input_o\,
	datab => \b2[0]~input_o\,
	datac => \b2[1]~input_o\,
	datad => \b2[3]~input_o\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X1_Y34_N12
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add2~0_combout\ & \LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datac => \LessThan2~0_combout\,
	combout => \Add2~2_combout\);

-- Location: LCCOMB_X1_Y34_N18
\Add2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~3_combout\ = (\b2[1]~input_o\ & (!\Add2~1\)) # (!\b2[1]~input_o\ & ((\Add2~1\) # (GND)))
-- \Add2~4\ = CARRY((!\Add2~1\) # (!\b2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2[1]~input_o\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~3_combout\,
	cout => \Add2~4\);

-- Location: LCCOMB_X1_Y34_N6
\Add2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~5_combout\ = (\LessThan2~0_combout\ & \Add2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan2~0_combout\,
	datad => \Add2~3_combout\,
	combout => \Add2~5_combout\);

-- Location: LCCOMB_X1_Y34_N20
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\b2[2]~input_o\ & (\Add2~4\ $ (GND))) # (!\b2[2]~input_o\ & (!\Add2~4\ & VCC))
-- \Add2~7\ = CARRY((\b2[2]~input_o\ & !\Add2~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2[2]~input_o\,
	datad => VCC,
	cin => \Add2~4\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X1_Y34_N0
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\LessThan2~0_combout\ & \Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan2~0_combout\,
	datad => \Add2~6_combout\,
	combout => \Add2~8_combout\);

-- Location: LCCOMB_X1_Y34_N22
\Add2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~9_combout\ = \Add2~7\ $ (\b2[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2[3]~input_o\,
	cin => \Add2~7\,
	combout => \Add2~9_combout\);

-- Location: LCCOMB_X1_Y34_N2
\Add2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~11_combout\ = (\LessThan2~0_combout\ & \Add2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~0_combout\,
	datac => \Add2~9_combout\,
	combout => \Add2~11_combout\);

-- Location: IOIBUF_X22_Y39_N22
\b0[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0(2),
	o => \b0[2]~input_o\);

-- Location: IOIBUF_X22_Y39_N29
\b0[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0(1),
	o => \b0[1]~input_o\);

-- Location: IOIBUF_X22_Y39_N15
\b0[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0(0),
	o => \b0[0]~input_o\);

-- Location: IOIBUF_X24_Y39_N15
\b0[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0(3),
	o => \b0[3]~input_o\);

-- Location: LCCOMB_X21_Y38_N24
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\b0[2]~input_o\ & (!\b0[1]~input_o\ & (\b0[0]~input_o\ & \b0[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0[2]~input_o\,
	datab => \b0[1]~input_o\,
	datac => \b0[0]~input_o\,
	datad => \b0[3]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y34_N24
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\b1[0]~input_o\ & (\Equal0~0_combout\ $ (VCC))) # (!\b1[0]~input_o\ & (\Equal0~0_combout\ & VCC))
-- \Add1~1\ = CARRY((\b1[0]~input_o\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[0]~input_o\,
	datab => \Equal0~0_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X1_Y34_N4
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((!\b1[1]~input_o\ & (!\b1[2]~input_o\ & !\b1[0]~input_o\))) # (!\b1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[1]~input_o\,
	datab => \b1[3]~input_o\,
	datac => \b1[2]~input_o\,
	datad => \b1[0]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y34_N14
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add1~0_combout\ & \LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datac => \LessThan1~0_combout\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X1_Y34_N26
\Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\b1[1]~input_o\ & (!\Add1~1\)) # (!\b1[1]~input_o\ & ((\Add1~1\) # (GND)))
-- \Add1~4\ = CARRY((!\Add1~1\) # (!\b1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b1[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X1_Y35_N16
\Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (\Add1~3_combout\ & \LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~3_combout\,
	datad => \LessThan1~0_combout\,
	combout => \Add1~5_combout\);

-- Location: LCCOMB_X1_Y34_N28
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\b1[2]~input_o\ & (\Add1~4\ $ (GND))) # (!\b1[2]~input_o\ & (!\Add1~4\ & VCC))
-- \Add1~7\ = CARRY((\b1[2]~input_o\ & !\Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b1[2]~input_o\,
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X1_Y35_N18
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add1~6_combout\ & \LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datad => \LessThan1~0_combout\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X1_Y34_N30
\Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = \Add1~7\ $ (\b1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b1[3]~input_o\,
	cin => \Add1~7\,
	combout => \Add1~9_combout\);

-- Location: LCCOMB_X1_Y35_N20
\Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (\LessThan1~0_combout\ & \Add1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datad => \Add1~9_combout\,
	combout => \Add1~11_combout\);

-- Location: LCCOMB_X21_Y38_N10
\y0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y0~0_combout\ = (\b0[0]~input_o\) # ((\b0[3]~input_o\ & ((\b0[2]~input_o\) # (\b0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0[2]~input_o\,
	datab => \b0[1]~input_o\,
	datac => \b0[0]~input_o\,
	datad => \b0[3]~input_o\,
	combout => \y0~0_combout\);

-- Location: LCCOMB_X21_Y38_N20
\y0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y0~1_combout\ = (!\b0[3]~input_o\ & (\b0[1]~input_o\ $ (\b0[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b0[1]~input_o\,
	datac => \b0[0]~input_o\,
	datad => \b0[3]~input_o\,
	combout => \y0~1_combout\);

-- Location: LCCOMB_X21_Y38_N6
\y0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y0~2_combout\ = (!\b0[3]~input_o\ & (\b0[2]~input_o\ $ (((\b0[1]~input_o\ & \b0[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0[2]~input_o\,
	datab => \b0[1]~input_o\,
	datac => \b0[0]~input_o\,
	datad => \b0[3]~input_o\,
	combout => \y0~2_combout\);

-- Location: LCCOMB_X21_Y38_N8
\y0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \y0~3_combout\ = (\b0[2]~input_o\ & (((\b0[3]~input_o\) # (!\b0[0]~input_o\)) # (!\b0[1]~input_o\))) # (!\b0[2]~input_o\ & ((\b0[1]~input_o\) # ((\b0[0]~input_o\) # (!\b0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0[2]~input_o\,
	datab => \b0[1]~input_o\,
	datac => \b0[0]~input_o\,
	datad => \b0[3]~input_o\,
	combout => \y0~3_combout\);

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

ww_y2(0) <= \y2[0]~output_o\;

ww_y2(1) <= \y2[1]~output_o\;

ww_y2(2) <= \y2[2]~output_o\;

ww_y2(3) <= \y2[3]~output_o\;

ww_y1(0) <= \y1[0]~output_o\;

ww_y1(1) <= \y1[1]~output_o\;

ww_y1(2) <= \y1[2]~output_o\;

ww_y1(3) <= \y1[3]~output_o\;

ww_y0(0) <= \y0[0]~output_o\;

ww_y0(1) <= \y0[1]~output_o\;

ww_y0(2) <= \y0[2]~output_o\;

ww_y0(3) <= \y0[3]~output_o\;
END structure;


