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

-- DATE "12/01/2021 03:21:57"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	freq_counter IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	fin : IN std_logic;
	start : IN std_logic;
	ready : OUT std_logic;
	d2 : OUT std_logic_vector(3 DOWNTO 0);
	d1 : OUT std_logic_vector(3 DOWNTO 0);
	d0 : OUT std_logic_vector(3 DOWNTO 0)
	);
END freq_counter;

-- Design Ports Information
-- ready	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[0]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[1]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[2]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[0]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[1]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[2]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[0]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[1]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0[3]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fin	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF freq_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_fin : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_ready : std_logic;
SIGNAL ww_d2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \int_reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fin~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ready~output_o\ : std_logic;
SIGNAL \d2[0]~output_o\ : std_logic;
SIGNAL \d2[1]~output_o\ : std_logic;
SIGNAL \d2[2]~output_o\ : std_logic;
SIGNAL \d2[3]~output_o\ : std_logic;
SIGNAL \d1[0]~output_o\ : std_logic;
SIGNAL \d1[1]~output_o\ : std_logic;
SIGNAL \d1[2]~output_o\ : std_logic;
SIGNAL \d1[3]~output_o\ : std_logic;
SIGNAL \d0[0]~output_o\ : std_logic;
SIGNAL \d0[1]~output_o\ : std_logic;
SIGNAL \d0[2]~output_o\ : std_logic;
SIGNAL \d0[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \counting_done~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \counting_done~q\ : std_logic;
SIGNAL \next_state~0_combout\ : std_logic;
SIGNAL \current_state~q\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~29_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~27_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~25_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~23_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Add3~21_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \ready_b~0_combout\ : std_logic;
SIGNAL \ready_b~q\ : std_logic;
SIGNAL \fin~input_o\ : std_logic;
SIGNAL \fin~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \int_reset~0_combout\ : std_logic;
SIGNAL \int_reset~q\ : std_logic;
SIGNAL \int_reset~clkctrl_outclk\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \bcd2_int~0_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \bcd2_int~1_combout\ : std_logic;
SIGNAL \bcd1_int[0]~0_combout\ : std_logic;
SIGNAL \bcd1_int[0]~2_combout\ : std_logic;
SIGNAL \bcd1_int[0]~1_combout\ : std_logic;
SIGNAL \bcd1_int[1]~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \bcd1_int[2]~4_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \bcd1_int[3]~5_combout\ : std_logic;
SIGNAL \process_3~0_combout\ : std_logic;
SIGNAL \process_3~1_combout\ : std_logic;
SIGNAL \bcd0_int[1]~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \bcd0_int[2]~4_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \bcd0_int[3]~5_combout\ : std_logic;
SIGNAL \bcd0_int[0]~0_combout\ : std_logic;
SIGNAL \bcd0_int[0]~1_combout\ : std_logic;
SIGNAL \bcd0_int[0]~2_combout\ : std_logic;
SIGNAL bcd0_int : std_logic_vector(3 DOWNTO 0);
SIGNAL bcd1_int : std_logic_vector(3 DOWNTO 0);
SIGNAL bcd2_int : std_logic_vector(3 DOWNTO 0);
SIGNAL cnt : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_ready_b~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_fin <= fin;
ww_start <= start;
ready <= ww_ready;
d2 <= ww_d2;
d1 <= ww_d1;
d0 <= ww_d0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\int_reset~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \int_reset~q\);

\fin~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fin~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_ready_b~q\ <= NOT \ready_b~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N24
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

-- Location: IOOBUF_X78_Y37_N16
\ready~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ready_b~q\,
	devoe => ww_devoe,
	o => \ready~output_o\);

-- Location: IOOBUF_X0_Y36_N9
\d2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd0_int(0),
	devoe => ww_devoe,
	o => \d2[0]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\d2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd0_int(1),
	devoe => ww_devoe,
	o => \d2[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\d2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd0_int(2),
	devoe => ww_devoe,
	o => \d2[2]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\d2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd0_int(3),
	devoe => ww_devoe,
	o => \d2[3]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\d1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd1_int(0),
	devoe => ww_devoe,
	o => \d1[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N23
\d1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd1_int(1),
	devoe => ww_devoe,
	o => \d1[1]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\d1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd1_int(2),
	devoe => ww_devoe,
	o => \d1[2]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\d1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd1_int(3),
	devoe => ww_devoe,
	o => \d1[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\d0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd2_int(0),
	devoe => ww_devoe,
	o => \d0[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\d0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd2_int(1),
	devoe => ww_devoe,
	o => \d0[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\d0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd2_int(2),
	devoe => ww_devoe,
	o => \d0[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\d0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bcd2_int(3),
	devoe => ww_devoe,
	o => \d0[3]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X78_Y37_N22
\start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X67_Y38_N22
\counting_done~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counting_done~0_combout\ = (!\start~input_o\ & ((\Equal3~2_combout\) # ((\counting_done~q\ & !\current_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \Equal3~2_combout\,
	datac => \counting_done~q\,
	datad => \current_state~q\,
	combout => \counting_done~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X67_Y38_N23
counting_done : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counting_done~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counting_done~q\);

-- Location: LCCOMB_X67_Y38_N24
\next_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \next_state~0_combout\ = (\current_state~q\ & (!\counting_done~q\)) # (!\current_state~q\ & ((\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counting_done~q\,
	datac => \current_state~q\,
	datad => \start~input_o\,
	combout => \next_state~0_combout\);

-- Location: FF_X67_Y38_N25
current_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \next_state~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state~q\);

-- Location: LCCOMB_X66_Y38_N6
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\current_state~q\ & (cnt(0) $ (GND))) # (!\current_state~q\ & (!cnt(0) & VCC))
-- \Add3~1\ = CARRY((\current_state~q\ & !cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~q\,
	datab => cnt(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X66_Y38_N8
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (cnt(1) & ((\current_state~q\ & (!\Add3~1\)) # (!\current_state~q\ & ((\Add3~1\) # (GND))))) # (!cnt(1) & ((\current_state~q\ & (\Add3~1\ & VCC)) # (!\current_state~q\ & (!\Add3~1\))))
-- \Add3~3\ = CARRY((cnt(1) & ((!\Add3~1\) # (!\current_state~q\))) # (!cnt(1) & (!\current_state~q\ & !\Add3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => \current_state~q\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X67_Y38_N2
\Add3~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~29_combout\ = (!\Add3~2_combout\ & \Add3~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datac => \Add3~21_combout\,
	combout => \Add3~29_combout\);

-- Location: FF_X67_Y38_N3
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~29_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X66_Y38_N10
\Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\current_state~q\ $ (cnt(2) $ (\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\current_state~q\ & ((!\Add3~3\) # (!cnt(2)))) # (!\current_state~q\ & (!cnt(2) & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~q\,
	datab => cnt(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X66_Y38_N4
\Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (!\Add3~4_combout\ & \Add3~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datad => \Add3~21_combout\,
	combout => \Add3~26_combout\);

-- Location: FF_X66_Y38_N5
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X66_Y38_N12
\Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\current_state~q\ & ((cnt(3) & (\Add3~5\ & VCC)) # (!cnt(3) & (!\Add3~5\)))) # (!\current_state~q\ & ((cnt(3) & (!\Add3~5\)) # (!cnt(3) & ((\Add3~5\) # (GND)))))
-- \Add3~7\ = CARRY((\current_state~q\ & (!cnt(3) & !\Add3~5\)) # (!\current_state~q\ & ((!\Add3~5\) # (!cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~q\,
	datab => cnt(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X66_Y38_N28
\Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (\Add3~6_combout\ & \Add3~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datad => \Add3~21_combout\,
	combout => \Add3~28_combout\);

-- Location: FF_X66_Y38_N29
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X66_Y38_N14
\Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\current_state~q\ $ (cnt(4) $ (!\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((\current_state~q\ & ((cnt(4)) # (!\Add3~7\))) # (!\current_state~q\ & (cnt(4) & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~q\,
	datab => cnt(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X66_Y38_N2
\Add3~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~27_combout\ = (\Add3~8_combout\ & \Add3~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~8_combout\,
	datad => \Add3~21_combout\,
	combout => \Add3~27_combout\);

-- Location: FF_X66_Y38_N3
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~27_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X66_Y38_N16
\Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (cnt(5) & ((\current_state~q\ & (!\Add3~9\)) # (!\current_state~q\ & ((\Add3~9\) # (GND))))) # (!cnt(5) & ((\current_state~q\ & (\Add3~9\ & VCC)) # (!\current_state~q\ & (!\Add3~9\))))
-- \Add3~11\ = CARRY((cnt(5) & ((!\Add3~9\) # (!\current_state~q\))) # (!cnt(5) & (!\current_state~q\ & !\Add3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(5),
	datab => \current_state~q\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X66_Y38_N26
\Add3~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~25_combout\ = (!\Add3~10_combout\ & \Add3~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~10_combout\,
	datad => \Add3~21_combout\,
	combout => \Add3~25_combout\);

-- Location: FF_X66_Y38_N27
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LCCOMB_X66_Y38_N18
\Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((\current_state~q\ $ (cnt(6) $ (\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((\current_state~q\ & ((!\Add3~11\) # (!cnt(6)))) # (!\current_state~q\ & (!cnt(6) & !\Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~q\,
	datab => cnt(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X67_Y38_N6
\Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (!\Add3~12_combout\ & \Add3~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~12_combout\,
	datac => \Add3~21_combout\,
	combout => \Add3~24_combout\);

-- Location: FF_X67_Y38_N7
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LCCOMB_X66_Y38_N20
\Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\current_state~q\ & ((cnt(7) & (!\Add3~13\)) # (!cnt(7) & (\Add3~13\ & VCC)))) # (!\current_state~q\ & ((cnt(7) & ((\Add3~13\) # (GND))) # (!cnt(7) & (!\Add3~13\))))
-- \Add3~15\ = CARRY((\current_state~q\ & (cnt(7) & !\Add3~13\)) # (!\current_state~q\ & ((cnt(7)) # (!\Add3~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~q\,
	datab => cnt(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X67_Y38_N28
\Add3~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~23_combout\ = (!\Add3~14_combout\ & \Add3~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~14_combout\,
	datac => \Add3~21_combout\,
	combout => \Add3~23_combout\);

-- Location: FF_X67_Y38_N29
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: LCCOMB_X66_Y38_N22
\Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = ((\current_state~q\ $ (cnt(8) $ (\Add3~15\)))) # (GND)
-- \Add3~17\ = CARRY((\current_state~q\ & ((!\Add3~15\) # (!cnt(8)))) # (!\current_state~q\ & (!cnt(8) & !\Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~q\,
	datab => cnt(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X66_Y38_N0
\Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (!\Add3~16_combout\ & \Add3~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~16_combout\,
	datad => \Add3~21_combout\,
	combout => \Add3~22_combout\);

-- Location: FF_X66_Y38_N1
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: LCCOMB_X66_Y38_N24
\Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = \current_state~q\ $ (cnt(9) $ (!\Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~q\,
	datab => cnt(9),
	cin => \Add3~17\,
	combout => \Add3~18_combout\);

-- Location: LCCOMB_X67_Y38_N18
\Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (!\Add3~18_combout\ & (!\Equal3~2_combout\ & !\start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~18_combout\,
	datac => \Equal3~2_combout\,
	datad => \start~input_o\,
	combout => \Add3~20_combout\);

-- Location: FF_X67_Y38_N19
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: LCCOMB_X67_Y38_N16
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (cnt(7) & (cnt(9) & (cnt(8) & cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(7),
	datab => cnt(9),
	datac => cnt(8),
	datad => cnt(6),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X67_Y38_N10
\Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (cnt(1) & cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(1),
	datad => cnt(0),
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X66_Y38_N30
\Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (cnt(5) & (!cnt(4) & (cnt(2) & !cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(5),
	datab => cnt(4),
	datac => cnt(2),
	datad => cnt(3),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X67_Y38_N4
\Add3~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~21_combout\ = (!\start~input_o\ & (((!\Equal3~1_combout\) # (!\Equal3~3_combout\)) # (!\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \Equal3~0_combout\,
	datac => \Equal3~3_combout\,
	datad => \Equal3~1_combout\,
	combout => \Add3~21_combout\);

-- Location: LCCOMB_X67_Y38_N20
\Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (\Add3~21_combout\ & !\Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~21_combout\,
	datac => \Add3~0_combout\,
	combout => \Add3~30_combout\);

-- Location: FF_X67_Y38_N21
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add3~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X67_Y38_N14
\Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (cnt(0) & (\Equal3~0_combout\ & (cnt(1) & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => \Equal3~0_combout\,
	datac => cnt(1),
	datad => \Equal3~1_combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X67_Y38_N8
\ready_b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ready_b~0_combout\ = (\start~input_o\) # ((!\Equal3~2_combout\ & \ready_b~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~2_combout\,
	datac => \ready_b~q\,
	datad => \start~input_o\,
	combout => \ready_b~0_combout\);

-- Location: FF_X67_Y38_N9
ready_b : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ready_b~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ready_b~q\);

-- Location: IOIBUF_X0_Y18_N22
\fin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fin,
	o => \fin~input_o\);

-- Location: CLKCTRL_G4
\fin~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fin~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fin~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y34_N6
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\current_state~q\ & (bcd2_int(0) $ (VCC))) # (!\current_state~q\ & (bcd2_int(0) & VCC))
-- \Add2~1\ = CARRY((\current_state~q\ & bcd2_int(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state~q\,
	datab => bcd2_int(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X77_Y38_N16
\int_reset~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \int_reset~0_combout\ = !\start~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \start~input_o\,
	combout => \int_reset~0_combout\);

-- Location: FF_X77_Y38_N17
int_reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \int_reset~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \int_reset~q\);

-- Location: CLKCTRL_G7
\int_reset~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \int_reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \int_reset~clkctrl_outclk\);

-- Location: FF_X1_Y34_N7
\bcd2_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fin~inputclkctrl_outclk\,
	d => \Add2~0_combout\,
	clrn => \int_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd2_int(0));

-- Location: LCCOMB_X1_Y34_N8
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (bcd2_int(1) & (!\Add2~1\)) # (!bcd2_int(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!bcd2_int(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bcd2_int(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X1_Y34_N16
\bcd2_int~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd2_int~0_combout\ = \Add2~2_combout\ $ (((\bcd1_int[0]~0_combout\ & bcd2_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd1_int[0]~0_combout\,
	datac => \Add2~2_combout\,
	datad => bcd2_int(0),
	combout => \bcd2_int~0_combout\);

-- Location: FF_X1_Y34_N17
\bcd2_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fin~inputclkctrl_outclk\,
	d => \bcd2_int~0_combout\,
	clrn => \int_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd2_int(1));

-- Location: LCCOMB_X1_Y34_N10
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (bcd2_int(2) & (\Add2~3\ $ (GND))) # (!bcd2_int(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((bcd2_int(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bcd2_int(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X1_Y34_N11
\bcd2_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fin~inputclkctrl_outclk\,
	d => \Add2~4_combout\,
	clrn => \int_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd2_int(2));

-- Location: LCCOMB_X1_Y34_N12
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = bcd2_int(3) $ (\Add2~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bcd2_int(3),
	cin => \Add2~5\,
	combout => \Add2~6_combout\);

-- Location: LCCOMB_X1_Y34_N26
\bcd2_int~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd2_int~1_combout\ = \Add2~6_combout\ $ (((\bcd1_int[0]~0_combout\ & bcd2_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datac => \bcd1_int[0]~0_combout\,
	datad => bcd2_int(0),
	combout => \bcd2_int~1_combout\);

-- Location: FF_X1_Y34_N27
\bcd2_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fin~inputclkctrl_outclk\,
	d => \bcd2_int~1_combout\,
	clrn => \int_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd2_int(3));

-- Location: LCCOMB_X1_Y34_N4
\bcd1_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd1_int[0]~0_combout\ = (!bcd2_int(2) & (!bcd2_int(1) & (bcd2_int(3) & \current_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd2_int(2),
	datab => bcd2_int(1),
	datac => bcd2_int(3),
	datad => \current_state~q\,
	combout => \bcd1_int[0]~0_combout\);

-- Location: LCCOMB_X1_Y34_N14
\bcd1_int[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd1_int[0]~2_combout\ = (\bcd1_int[0]~0_combout\ & bcd2_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd1_int[0]~0_combout\,
	datad => bcd2_int(0),
	combout => \bcd1_int[0]~2_combout\);

-- Location: LCCOMB_X1_Y36_N0
\bcd1_int[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd1_int[0]~1_combout\ = bcd1_int(0) $ (((bcd2_int(0) & \bcd1_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd2_int(0),
	datac => bcd1_int(0),
	datad => \bcd1_int[0]~0_combout\,
	combout => \bcd1_int[0]~1_combout\);

-- Location: FF_X1_Y36_N1
\bcd1_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fin~inputclkctrl_outclk\,
	d => \bcd1_int[0]~1_combout\,
	clrn => \int_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd1_int(0));

-- Location: LCCOMB_X1_Y36_N26
\bcd1_int[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd1_int[1]~3_combout\ = (\bcd1_int[0]~2_combout\ & (!\process_3~1_combout\ & (bcd1_int(1) $ (bcd1_int(0))))) # (!\bcd1_int[0]~2_combout\ & (((bcd1_int(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_3~1_combout\,
	datab => \bcd1_int[0]~2_combout\,
	datac => bcd1_int(1),
	datad => bcd1_int(0),
	combout => \bcd1_int[1]~3_combout\);

-- Location: FF_X1_Y36_N27
\bcd1_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fin~inputclkctrl_outclk\,
	d => \bcd1_int[1]~3_combout\,
	clrn => \int_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd1_int(1));

-- Location: LCCOMB_X1_Y36_N28
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = bcd1_int(2) $ (((bcd1_int(0) & bcd1_int(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bcd1_int(0),
	datac => bcd1_int(1),
	datad => bcd1_int(2),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X1_Y36_N12
\bcd1_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd1_int[2]~4_combout\ = (\bcd1_int[0]~2_combout\ & (!\process_3~1_combout\ & ((\Add1~0_combout\)))) # (!\bcd1_int[0]~2_combout\ & (((bcd1_int(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_3~1_combout\,
	datab => \bcd1_int[0]~2_combout\,
	datac => bcd1_int(2),
	datad => \Add1~0_combout\,
	combout => \bcd1_int[2]~4_combout\);

-- Location: FF_X1_Y36_N13
\bcd1_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fin~inputclkctrl_outclk\,
	d => \bcd1_int[2]~4_combout\,
	clrn => \int_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd1_int(2));

-- Location: LCCOMB_X1_Y36_N30
\Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = bcd1_int(3) $ (((bcd1_int(2) & (bcd1_int(1) & bcd1_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd1_int(2),
	datab => bcd1_int(3),
	datac => bcd1_int(1),
	datad => bcd1_int(0),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X1_Y36_N6
\bcd1_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd1_int[3]~5_combout\ = (\bcd1_int[0]~2_combout\ & (\Add1~1_combout\ & ((!\process_3~1_combout\)))) # (!\bcd1_int[0]~2_combout\ & (((bcd1_int(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \bcd1_int[0]~2_combout\,
	datac => bcd1_int(3),
	datad => \process_3~1_combout\,
	combout => \bcd1_int[3]~5_combout\);

-- Location: FF_X1_Y36_N7
\bcd1_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fin~inputclkctrl_outclk\,
	d => \bcd1_int[3]~5_combout\,
	clrn => \int_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd1_int(3));

-- Location: LCCOMB_X1_Y36_N24
\process_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_3~0_combout\ = (!bcd1_int(2) & (bcd1_int(3) & (!bcd1_int(1) & bcd1_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd1_int(2),
	datab => bcd1_int(3),
	datac => bcd1_int(1),
	datad => bcd1_int(0),
	combout => \process_3~0_combout\);

-- Location: LCCOMB_X1_Y36_N10
\process_3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_3~1_combout\ = (\bcd1_int[0]~0_combout\ & (bcd2_int(0) & \process_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd1_int[0]~0_combout\,
	datac => bcd2_int(0),
	datad => \process_3~0_combout\,
	combout => \process_3~1_combout\);

-- Location: LCCOMB_X1_Y36_N18
\bcd0_int[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd0_int[1]~3_combout\ = (bcd0_int(1) & (((!\bcd0_int[0]~1_combout\ & !bcd0_int(0))) # (!\process_3~1_combout\))) # (!bcd0_int(1) & (!\bcd0_int[0]~1_combout\ & (bcd0_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd0_int[0]~1_combout\,
	datab => bcd0_int(0),
	datac => bcd0_int(1),
	datad => \process_3~1_combout\,
	combout => \bcd0_int[1]~3_combout\);

-- Location: FF_X1_Y36_N19
\bcd0_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fin~inputclkctrl_outclk\,
	d => \bcd0_int[1]~3_combout\,
	clrn => \int_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd0_int(1));

-- Location: LCCOMB_X1_Y36_N8
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = bcd0_int(2) $ (((bcd0_int(0) & bcd0_int(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bcd0_int(0),
	datac => bcd0_int(2),
	datad => bcd0_int(1),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y36_N20
\bcd0_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd0_int[2]~4_combout\ = (\bcd0_int[0]~1_combout\ & (((bcd0_int(2) & !\process_3~1_combout\)))) # (!\bcd0_int[0]~1_combout\ & ((\Add0~0_combout\) # ((bcd0_int(2) & !\process_3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd0_int[0]~1_combout\,
	datab => \Add0~0_combout\,
	datac => bcd0_int(2),
	datad => \process_3~1_combout\,
	combout => \bcd0_int[2]~4_combout\);

-- Location: FF_X1_Y36_N21
\bcd0_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fin~inputclkctrl_outclk\,
	d => \bcd0_int[2]~4_combout\,
	clrn => \int_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd0_int(2));

-- Location: LCCOMB_X1_Y36_N2
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = bcd0_int(3) $ (((bcd0_int(2) & (bcd0_int(0) & bcd0_int(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd0_int(2),
	datab => bcd0_int(0),
	datac => bcd0_int(3),
	datad => bcd0_int(1),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X1_Y36_N14
\bcd0_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd0_int[3]~5_combout\ = (\bcd0_int[0]~1_combout\ & (((bcd0_int(3) & !\process_3~1_combout\)))) # (!\bcd0_int[0]~1_combout\ & ((\Add0~1_combout\) # ((bcd0_int(3) & !\process_3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd0_int[0]~1_combout\,
	datab => \Add0~1_combout\,
	datac => bcd0_int(3),
	datad => \process_3~1_combout\,
	combout => \bcd0_int[3]~5_combout\);

-- Location: FF_X1_Y36_N15
\bcd0_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fin~inputclkctrl_outclk\,
	d => \bcd0_int[3]~5_combout\,
	clrn => \int_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd0_int(3));

-- Location: LCCOMB_X1_Y36_N4
\bcd0_int[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd0_int[0]~0_combout\ = (!bcd0_int(2) & (bcd0_int(0) & (bcd0_int(3) & !bcd0_int(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bcd0_int(2),
	datab => bcd0_int(0),
	datac => bcd0_int(3),
	datad => bcd0_int(1),
	combout => \bcd0_int[0]~0_combout\);

-- Location: LCCOMB_X1_Y36_N22
\bcd0_int[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd0_int[0]~1_combout\ = ((\bcd0_int[0]~0_combout\) # ((!\process_3~0_combout\) # (!bcd2_int(0)))) # (!\bcd1_int[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd1_int[0]~0_combout\,
	datab => \bcd0_int[0]~0_combout\,
	datac => bcd2_int(0),
	datad => \process_3~0_combout\,
	combout => \bcd0_int[0]~1_combout\);

-- Location: LCCOMB_X1_Y36_N16
\bcd0_int[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd0_int[0]~2_combout\ = (bcd0_int(0) & ((!\process_3~1_combout\))) # (!bcd0_int(0) & (!\bcd0_int[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd0_int[0]~1_combout\,
	datac => bcd0_int(0),
	datad => \process_3~1_combout\,
	combout => \bcd0_int[0]~2_combout\);

-- Location: FF_X1_Y36_N17
\bcd0_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \fin~inputclkctrl_outclk\,
	d => \bcd0_int[0]~2_combout\,
	clrn => \int_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bcd0_int(0));

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

ww_ready <= \ready~output_o\;

ww_d2(0) <= \d2[0]~output_o\;

ww_d2(1) <= \d2[1]~output_o\;

ww_d2(2) <= \d2[2]~output_o\;

ww_d2(3) <= \d2[3]~output_o\;

ww_d1(0) <= \d1[0]~output_o\;

ww_d1(1) <= \d1[1]~output_o\;

ww_d1(2) <= \d1[2]~output_o\;

ww_d1(3) <= \d1[3]~output_o\;

ww_d0(0) <= \d0[0]~output_o\;

ww_d0(1) <= \d0[1]~output_o\;

ww_d0(2) <= \d0[2]~output_o\;

ww_d0(3) <= \d0[3]~output_o\;
END structure;


