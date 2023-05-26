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

-- DATE "10/21/2021 05:25:08"

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

ENTITY 	rotate_led IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	pause : IN std_logic;
	rt : IN std_logic;
	fast : IN std_logic;
	dout : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END rotate_led;

-- Design Ports Information
-- dout[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[4]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rt	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fast	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pause	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rotate_led IS
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
SIGNAL ww_pause : std_logic;
SIGNAL ww_rt : std_logic;
SIGNAL ww_fast : std_logic;
SIGNAL ww_dout : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \dout[0]~output_o\ : std_logic;
SIGNAL \dout[1]~output_o\ : std_logic;
SIGNAL \dout[2]~output_o\ : std_logic;
SIGNAL \dout[3]~output_o\ : std_logic;
SIGNAL \dout[4]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rt~input_o\ : std_logic;
SIGNAL \pause~input_o\ : std_logic;
SIGNAL \counter1_unit|count~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \fast~input_o\ : std_logic;
SIGNAL \counter1_unit|count~0_combout\ : std_logic;
SIGNAL \counter1_unit|Add0~0_combout\ : std_logic;
SIGNAL \counter1_unit|count~1_combout\ : std_logic;
SIGNAL \counter1_unit|tick~0_combout\ : std_logic;
SIGNAL \counter1_unit|tick~1_combout\ : std_logic;
SIGNAL \counter1_unit|tick~q\ : std_logic;
SIGNAL \counter2_unit|led~1_combout\ : std_logic;
SIGNAL \counter2_unit|led~2_combout\ : std_logic;
SIGNAL \counter2_unit|led~3_combout\ : std_logic;
SIGNAL \counter2_unit|led~4_combout\ : std_logic;
SIGNAL \counter2_unit|led~0_combout\ : std_logic;
SIGNAL \counter2_unit|dout[0]~1_combout\ : std_logic;
SIGNAL \counter2_unit|dout[0]~3_combout\ : std_logic;
SIGNAL \counter2_unit|dout[0]~_emulated_q\ : std_logic;
SIGNAL \counter2_unit|dout[0]~2_combout\ : std_logic;
SIGNAL \counter2_unit|dout[1]~5_combout\ : std_logic;
SIGNAL \counter2_unit|dout[1]~7_combout\ : std_logic;
SIGNAL \counter2_unit|dout[1]~_emulated_q\ : std_logic;
SIGNAL \counter2_unit|dout[1]~6_combout\ : std_logic;
SIGNAL \counter2_unit|dout[2]~9_combout\ : std_logic;
SIGNAL \counter2_unit|dout[2]~11_combout\ : std_logic;
SIGNAL \counter2_unit|dout[2]~_emulated_q\ : std_logic;
SIGNAL \counter2_unit|dout[2]~10_combout\ : std_logic;
SIGNAL \counter2_unit|dout[3]~13_combout\ : std_logic;
SIGNAL \counter2_unit|dout[3]~15_combout\ : std_logic;
SIGNAL \counter2_unit|dout[3]~_emulated_q\ : std_logic;
SIGNAL \counter2_unit|dout[3]~14_combout\ : std_logic;
SIGNAL \counter2_unit|dout[4]~17_combout\ : std_logic;
SIGNAL \counter2_unit|dout[4]~19_combout\ : std_logic;
SIGNAL \counter2_unit|dout[4]~_emulated_q\ : std_logic;
SIGNAL \counter2_unit|dout[4]~18_combout\ : std_logic;
SIGNAL \counter2_unit|led\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \counter1_unit|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_pause~input_o\ : std_logic;
SIGNAL \counter1_unit|ALT_INV_tick~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_pause <= pause;
ww_rt <= rt;
ww_fast <= fast;
dout <= ww_dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_pause~input_o\ <= NOT \pause~input_o\;
\counter1_unit|ALT_INV_tick~q\ <= NOT \counter1_unit|tick~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X20_Y39_N16
\dout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter2_unit|dout[0]~2_combout\,
	devoe => ww_devoe,
	o => \dout[0]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\dout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter2_unit|dout[1]~6_combout\,
	devoe => ww_devoe,
	o => \dout[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\dout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter2_unit|dout[2]~10_combout\,
	devoe => ww_devoe,
	o => \dout[2]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\dout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter2_unit|dout[3]~14_combout\,
	devoe => ww_devoe,
	o => \dout[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\dout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter2_unit|dout[4]~18_combout\,
	devoe => ww_devoe,
	o => \dout[4]~output_o\);

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

-- Location: IOIBUF_X22_Y39_N15
\rt~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rt,
	o => \rt~input_o\);

-- Location: IOIBUF_X20_Y39_N1
\pause~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pause,
	o => \pause~input_o\);

-- Location: LCCOMB_X20_Y37_N20
\counter1_unit|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter1_unit|count~2_combout\ = \counter1_unit|count\(0) $ (!\pause~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter1_unit|count\(0),
	datad => \pause~input_o\,
	combout => \counter1_unit|count~2_combout\);

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G4
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

-- Location: FF_X20_Y37_N21
\counter1_unit|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1_unit|count~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1_unit|count\(0));

-- Location: IOIBUF_X20_Y39_N8
\fast~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fast,
	o => \fast~input_o\);

-- Location: LCCOMB_X20_Y37_N2
\counter1_unit|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter1_unit|count~0_combout\ = (\counter1_unit|count\(0) & (\counter1_unit|count\(1) & ((\pause~input_o\) # (!\counter1_unit|tick~0_combout\)))) # (!\counter1_unit|count\(0) & (((!\counter1_unit|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pause~input_o\,
	datab => \counter1_unit|count\(0),
	datac => \counter1_unit|count\(1),
	datad => \counter1_unit|tick~0_combout\,
	combout => \counter1_unit|count~0_combout\);

-- Location: FF_X20_Y37_N3
\counter1_unit|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1_unit|count~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1_unit|count\(1));

-- Location: LCCOMB_X20_Y37_N18
\counter1_unit|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter1_unit|Add0~0_combout\ = \counter1_unit|count\(2) $ (((!\counter1_unit|count\(0) & \counter1_unit|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter1_unit|count\(0),
	datac => \counter1_unit|count\(2),
	datad => \counter1_unit|count\(1),
	combout => \counter1_unit|Add0~0_combout\);

-- Location: LCCOMB_X20_Y37_N4
\counter1_unit|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter1_unit|count~1_combout\ = (\counter1_unit|Add0~0_combout\ & (((\pause~input_o\) # (!\counter1_unit|tick~0_combout\)) # (!\counter1_unit|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1_unit|count\(0),
	datab => \pause~input_o\,
	datac => \counter1_unit|tick~0_combout\,
	datad => \counter1_unit|Add0~0_combout\,
	combout => \counter1_unit|count~1_combout\);

-- Location: FF_X20_Y37_N5
\counter1_unit|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1_unit|count~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_pause~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1_unit|count\(2));

-- Location: LCCOMB_X20_Y37_N22
\counter1_unit|tick~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter1_unit|tick~0_combout\ = (\fast~input_o\ & (!\counter1_unit|count\(2) & \counter1_unit|count\(1))) # (!\fast~input_o\ & (\counter1_unit|count\(2) & !\counter1_unit|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fast~input_o\,
	datac => \counter1_unit|count\(2),
	datad => \counter1_unit|count\(1),
	combout => \counter1_unit|tick~0_combout\);

-- Location: LCCOMB_X20_Y37_N24
\counter1_unit|tick~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter1_unit|tick~1_combout\ = (\pause~input_o\) # ((!\counter1_unit|tick~0_combout\) # (!\counter1_unit|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pause~input_o\,
	datac => \counter1_unit|count\(0),
	datad => \counter1_unit|tick~0_combout\,
	combout => \counter1_unit|tick~1_combout\);

-- Location: FF_X20_Y37_N25
\counter1_unit|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1_unit|tick~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1_unit|tick~q\);

-- Location: LCCOMB_X21_Y37_N24
\counter2_unit|led~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|led~1_combout\ = (\rt~input_o\ & (((\counter2_unit|led\(2))))) # (!\rt~input_o\ & ((\counter1_unit|tick~q\ & ((\counter2_unit|led\(2)))) # (!\counter1_unit|tick~q\ & (!\counter2_unit|led\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2_unit|led\(0),
	datab => \counter2_unit|led\(2),
	datac => \rt~input_o\,
	datad => \counter1_unit|tick~q\,
	combout => \counter2_unit|led~1_combout\);

-- Location: FF_X21_Y37_N25
\counter2_unit|led[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2_unit|led~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \counter1_unit|ALT_INV_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2_unit|led\(1));

-- Location: LCCOMB_X21_Y37_N4
\counter2_unit|led~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|led~2_combout\ = (\counter1_unit|tick~q\ & (\counter2_unit|led\(3))) # (!\counter1_unit|tick~q\ & ((\rt~input_o\ & (\counter2_unit|led\(3))) # (!\rt~input_o\ & ((\counter2_unit|led\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter1_unit|tick~q\,
	datab => \counter2_unit|led\(3),
	datac => \rt~input_o\,
	datad => \counter2_unit|led\(1),
	combout => \counter2_unit|led~2_combout\);

-- Location: FF_X21_Y37_N5
\counter2_unit|led[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2_unit|led~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \counter1_unit|ALT_INV_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2_unit|led\(2));

-- Location: LCCOMB_X21_Y37_N0
\counter2_unit|led~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|led~3_combout\ = (\rt~input_o\ & (((\counter2_unit|led\(4))))) # (!\rt~input_o\ & ((\counter1_unit|tick~q\ & ((\counter2_unit|led\(4)))) # (!\counter1_unit|tick~q\ & (\counter2_unit|led\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt~input_o\,
	datab => \counter2_unit|led\(2),
	datac => \counter2_unit|led\(4),
	datad => \counter1_unit|tick~q\,
	combout => \counter2_unit|led~3_combout\);

-- Location: FF_X21_Y37_N1
\counter2_unit|led[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2_unit|led~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \counter1_unit|ALT_INV_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2_unit|led\(3));

-- Location: LCCOMB_X21_Y37_N20
\counter2_unit|led~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|led~4_combout\ = (\rt~input_o\ & (!\counter2_unit|led\(0))) # (!\rt~input_o\ & ((\counter1_unit|tick~q\ & (!\counter2_unit|led\(0))) # (!\counter1_unit|tick~q\ & ((\counter2_unit|led\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2_unit|led\(0),
	datab => \counter2_unit|led\(3),
	datac => \rt~input_o\,
	datad => \counter1_unit|tick~q\,
	combout => \counter2_unit|led~4_combout\);

-- Location: FF_X21_Y37_N21
\counter2_unit|led[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2_unit|led~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \counter1_unit|ALT_INV_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2_unit|led\(4));

-- Location: LCCOMB_X21_Y37_N30
\counter2_unit|led~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|led~0_combout\ = (\rt~input_o\ & (((!\counter2_unit|led\(1))))) # (!\rt~input_o\ & ((\counter1_unit|tick~q\ & ((!\counter2_unit|led\(1)))) # (!\counter1_unit|tick~q\ & (!\counter2_unit|led\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rt~input_o\,
	datab => \counter1_unit|tick~q\,
	datac => \counter2_unit|led\(4),
	datad => \counter2_unit|led\(1),
	combout => \counter2_unit|led~0_combout\);

-- Location: FF_X21_Y37_N31
\counter2_unit|led[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2_unit|led~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \counter1_unit|ALT_INV_tick~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2_unit|led\(0));

-- Location: LCCOMB_X21_Y37_N28
\counter2_unit|dout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|dout[0]~1_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((!\counter2_unit|led\(0)))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (\counter2_unit|dout[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter2_unit|dout[0]~1_combout\,
	datac => \counter2_unit|led\(0),
	datad => \reset~inputclkctrl_outclk\,
	combout => \counter2_unit|dout[0]~1_combout\);

-- Location: LCCOMB_X21_Y37_N8
\counter2_unit|dout[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|dout[0]~3_combout\ = \counter2_unit|led\(0) $ (!\counter2_unit|dout[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2_unit|led\(0),
	datad => \counter2_unit|dout[0]~1_combout\,
	combout => \counter2_unit|dout[0]~3_combout\);

-- Location: FF_X21_Y37_N9
\counter2_unit|dout[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2_unit|dout[0]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2_unit|dout[0]~_emulated_q\);

-- Location: LCCOMB_X21_Y37_N12
\counter2_unit|dout[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|dout[0]~2_combout\ = (\reset~input_o\ & (!\counter2_unit|led\(0))) # (!\reset~input_o\ & ((\counter2_unit|dout[0]~_emulated_q\ $ (\counter2_unit|dout[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2_unit|led\(0),
	datab => \counter2_unit|dout[0]~_emulated_q\,
	datac => \reset~input_o\,
	datad => \counter2_unit|dout[0]~1_combout\,
	combout => \counter2_unit|dout[0]~2_combout\);

-- Location: LCCOMB_X21_Y37_N10
\counter2_unit|dout[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|dout[1]~5_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((\counter2_unit|led\(1)))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (\counter2_unit|dout[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2_unit|dout[1]~5_combout\,
	datac => \counter2_unit|led\(1),
	datad => \reset~inputclkctrl_outclk\,
	combout => \counter2_unit|dout[1]~5_combout\);

-- Location: LCCOMB_X21_Y37_N22
\counter2_unit|dout[1]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|dout[1]~7_combout\ = \counter2_unit|led\(1) $ (\counter2_unit|dout[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2_unit|led\(1),
	datad => \counter2_unit|dout[1]~5_combout\,
	combout => \counter2_unit|dout[1]~7_combout\);

-- Location: FF_X21_Y37_N23
\counter2_unit|dout[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2_unit|dout[1]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2_unit|dout[1]~_emulated_q\);

-- Location: LCCOMB_X22_Y37_N28
\counter2_unit|dout[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|dout[1]~6_combout\ = (\reset~input_o\ & (((\counter2_unit|led\(1))))) # (!\reset~input_o\ & (\counter2_unit|dout[1]~_emulated_q\ $ ((\counter2_unit|dout[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2_unit|dout[1]~_emulated_q\,
	datab => \counter2_unit|dout[1]~5_combout\,
	datac => \reset~input_o\,
	datad => \counter2_unit|led\(1),
	combout => \counter2_unit|dout[1]~6_combout\);

-- Location: LCCOMB_X21_Y37_N16
\counter2_unit|dout[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|dout[2]~9_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((\counter2_unit|led\(2)))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (\counter2_unit|dout[2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter2_unit|dout[2]~9_combout\,
	datac => \counter2_unit|led\(2),
	datad => \reset~inputclkctrl_outclk\,
	combout => \counter2_unit|dout[2]~9_combout\);

-- Location: LCCOMB_X21_Y37_N18
\counter2_unit|dout[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|dout[2]~11_combout\ = \counter2_unit|led\(2) $ (\counter2_unit|dout[2]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2_unit|led\(2),
	datad => \counter2_unit|dout[2]~9_combout\,
	combout => \counter2_unit|dout[2]~11_combout\);

-- Location: FF_X21_Y37_N19
\counter2_unit|dout[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2_unit|dout[2]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2_unit|dout[2]~_emulated_q\);

-- Location: LCCOMB_X21_Y37_N14
\counter2_unit|dout[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|dout[2]~10_combout\ = (\reset~input_o\ & (\counter2_unit|led\(2))) # (!\reset~input_o\ & ((\counter2_unit|dout[2]~9_combout\ $ (\counter2_unit|dout[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2_unit|led\(2),
	datab => \counter2_unit|dout[2]~9_combout\,
	datac => \reset~input_o\,
	datad => \counter2_unit|dout[2]~_emulated_q\,
	combout => \counter2_unit|dout[2]~10_combout\);

-- Location: LCCOMB_X22_Y37_N18
\counter2_unit|dout[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|dout[3]~13_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((\counter2_unit|led\(3)))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (\counter2_unit|dout[3]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2_unit|dout[3]~13_combout\,
	datac => \counter2_unit|led\(3),
	datad => \reset~inputclkctrl_outclk\,
	combout => \counter2_unit|dout[3]~13_combout\);

-- Location: LCCOMB_X22_Y37_N6
\counter2_unit|dout[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|dout[3]~15_combout\ = \counter2_unit|led\(3) $ (\counter2_unit|dout[3]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2_unit|led\(3),
	datad => \counter2_unit|dout[3]~13_combout\,
	combout => \counter2_unit|dout[3]~15_combout\);

-- Location: FF_X22_Y37_N7
\counter2_unit|dout[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2_unit|dout[3]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2_unit|dout[3]~_emulated_q\);

-- Location: LCCOMB_X22_Y37_N0
\counter2_unit|dout[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|dout[3]~14_combout\ = (\reset~input_o\ & (((\counter2_unit|led\(3))))) # (!\reset~input_o\ & (\counter2_unit|dout[3]~_emulated_q\ $ (((\counter2_unit|dout[3]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2_unit|dout[3]~_emulated_q\,
	datab => \counter2_unit|led\(3),
	datac => \reset~input_o\,
	datad => \counter2_unit|dout[3]~13_combout\,
	combout => \counter2_unit|dout[3]~14_combout\);

-- Location: LCCOMB_X21_Y37_N2
\counter2_unit|dout[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|dout[4]~17_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((\counter2_unit|led\(4)))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (\counter2_unit|dout[4]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter2_unit|dout[4]~17_combout\,
	datac => \counter2_unit|led\(4),
	datad => \reset~inputclkctrl_outclk\,
	combout => \counter2_unit|dout[4]~17_combout\);

-- Location: LCCOMB_X21_Y37_N6
\counter2_unit|dout[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|dout[4]~19_combout\ = \counter2_unit|led\(4) $ (\counter2_unit|dout[4]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter2_unit|led\(4),
	datad => \counter2_unit|dout[4]~17_combout\,
	combout => \counter2_unit|dout[4]~19_combout\);

-- Location: FF_X21_Y37_N7
\counter2_unit|dout[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2_unit|dout[4]~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2_unit|dout[4]~_emulated_q\);

-- Location: LCCOMB_X21_Y37_N26
\counter2_unit|dout[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2_unit|dout[4]~18_combout\ = (\reset~input_o\ & (\counter2_unit|led\(4))) # (!\reset~input_o\ & ((\counter2_unit|dout[4]~17_combout\ $ (\counter2_unit|dout[4]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2_unit|led\(4),
	datab => \counter2_unit|dout[4]~17_combout\,
	datac => \counter2_unit|dout[4]~_emulated_q\,
	datad => \reset~input_o\,
	combout => \counter2_unit|dout[4]~18_combout\);

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

ww_dout(0) <= \dout[0]~output_o\;

ww_dout(1) <= \dout[1]~output_o\;

ww_dout(2) <= \dout[2]~output_o\;

ww_dout(3) <= \dout[3]~output_o\;

ww_dout(4) <= \dout[4]~output_o\;
END structure;


