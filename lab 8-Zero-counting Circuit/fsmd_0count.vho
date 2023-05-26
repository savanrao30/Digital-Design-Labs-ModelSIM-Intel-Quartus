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

-- DATE "11/04/2021 10:31:23"

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

ENTITY 	fsmd_0count IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	a : IN std_logic_vector(7 DOWNTO 0);
	ready : OUT std_logic;
	count : OUT std_logic_vector(3 DOWNTO 0)
	);
END fsmd_0count;

-- Design Ports Information
-- ready	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[0]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fsmd_0count IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ready : std_logic;
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Selector6~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \ready~output_o\ : std_logic;
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a_reg~10_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \state_next~0_combout\ : std_logic;
SIGNAL \state_next.add_277~combout\ : std_logic;
SIGNAL \state_reg.add~feeder_combout\ : std_logic;
SIGNAL \state_reg.add~q\ : std_logic;
SIGNAL \n_reg[1]~3_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \n_reg[3]~4_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \n_reg[0]~0_combout\ : std_logic;
SIGNAL \process_2~1_combout\ : std_logic;
SIGNAL \n_reg[3]~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \n_reg[2]~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state_next.shift_284~combout\ : std_logic;
SIGNAL \state_reg.shift~q\ : std_logic;
SIGNAL \a_reg~11_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a_reg~9_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a_reg~8_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a_reg~7_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a_reg~6_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a_reg~5_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a_reg~4_combout\ : std_logic;
SIGNAL \a_reg~3_combout\ : std_logic;
SIGNAL \a_reg~2_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \state_next.idle_291~combout\ : std_logic;
SIGNAL \state_reg.idle~0_combout\ : std_logic;
SIGNAL \state_reg.idle~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~0clkctrl_outclk\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL a_reg : std_logic_vector(8 DOWNTO 0);
SIGNAL n_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL p_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_state_reg.idle~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
ww_a <= a;
ready <= ww_ready;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Selector6~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector6~0_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_state_reg.idle~q\ <= NOT \state_reg.idle~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X0_Y25_N2
\ready~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state_reg.idle~q\,
	devoe => ww_devoe,
	o => \ready~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\count[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => p_reg(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\count[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => p_reg(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\count[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => p_reg(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\count[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => p_reg(3),
	devoe => ww_devoe,
	o => \count[3]~output_o\);

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

-- Location: IOIBUF_X0_Y26_N8
\a[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N8
\a[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X1_Y24_N4
\a_reg~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_reg~10_combout\ = (!\state_reg.idle~q\ & \a[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_reg.idle~q\,
	datad => \a[0]~input_o\,
	combout => \a_reg~10_combout\);

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

-- Location: IOIBUF_X0_Y25_N22
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

-- Location: LCCOMB_X1_Y24_N26
\state_next~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_next~0_combout\ = (!\state_reg.shift~q\) # (!a_reg(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => a_reg(8),
	datac => \state_reg.shift~q\,
	combout => \state_next~0_combout\);

-- Location: LCCOMB_X1_Y24_N24
\state_next.add_277\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_next.add_277~combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((\state_next.add_277~combout\))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (!\state_next~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_next~0_combout\,
	datab => \state_next.add_277~combout\,
	datad => \reset~inputclkctrl_outclk\,
	combout => \state_next.add_277~combout\);

-- Location: LCCOMB_X1_Y24_N16
\state_reg.add~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_reg.add~feeder_combout\ = \state_next.add_277~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_next.add_277~combout\,
	combout => \state_reg.add~feeder_combout\);

-- Location: FF_X1_Y24_N17
\state_reg.add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state_reg.add~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.add~q\);

-- Location: LCCOMB_X2_Y24_N18
\n_reg[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_reg[1]~3_combout\ = (\n_reg[3]~1_combout\ & (\state_reg.idle~q\ & (n_reg(0) $ (n_reg(1))))) # (!\n_reg[3]~1_combout\ & (((n_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_reg(0),
	datab => \state_reg.idle~q\,
	datac => n_reg(1),
	datad => \n_reg[3]~1_combout\,
	combout => \n_reg[1]~3_combout\);

-- Location: FF_X2_Y24_N19
\n_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n_reg[1]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(1));

-- Location: LCCOMB_X2_Y24_N6
\Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = n_reg(3) $ (((n_reg(2) & (n_reg(1) & n_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_reg(2),
	datab => n_reg(3),
	datac => n_reg(1),
	datad => n_reg(0),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X2_Y24_N4
\n_reg[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_reg[3]~4_combout\ = (\n_reg[3]~1_combout\ & (\Add1~1_combout\ & (\state_reg.idle~q\))) # (!\n_reg[3]~1_combout\ & (((n_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \state_reg.idle~q\,
	datac => n_reg(3),
	datad => \n_reg[3]~1_combout\,
	combout => \n_reg[3]~4_combout\);

-- Location: FF_X2_Y24_N5
\n_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n_reg[3]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(3));

-- Location: LCCOMB_X2_Y24_N0
\process_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (\state_reg.shift~q\ & !n_reg(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_reg.shift~q\,
	datad => n_reg(3),
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X2_Y24_N30
\n_reg[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_reg[0]~0_combout\ = (\state_reg.idle~q\ & (n_reg(0) $ (((\process_2~1_combout\) # (\process_2~0_combout\))))) # (!\state_reg.idle~q\ & (n_reg(0) & ((\process_2~1_combout\) # (\process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~1_combout\,
	datab => \state_reg.idle~q\,
	datac => n_reg(0),
	datad => \process_2~0_combout\,
	combout => \n_reg[0]~0_combout\);

-- Location: FF_X2_Y24_N31
\n_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n_reg[0]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(0));

-- Location: LCCOMB_X2_Y24_N26
\process_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_2~1_combout\ = (!n_reg(0) & (\state_reg.shift~q\ & (!n_reg(2) & !n_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_reg(0),
	datab => \state_reg.shift~q\,
	datac => n_reg(2),
	datad => n_reg(1),
	combout => \process_2~1_combout\);

-- Location: LCCOMB_X2_Y24_N16
\n_reg[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_reg[3]~1_combout\ = \state_reg.idle~q\ $ (((!\process_2~1_combout\ & ((n_reg(3)) # (!\state_reg.shift~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.idle~q\,
	datab => \state_reg.shift~q\,
	datac => \process_2~1_combout\,
	datad => n_reg(3),
	combout => \n_reg[3]~1_combout\);

-- Location: LCCOMB_X2_Y24_N28
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = n_reg(2) $ (((n_reg(1) & n_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_reg(2),
	datab => n_reg(1),
	datad => n_reg(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X2_Y24_N8
\n_reg[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \n_reg[2]~2_combout\ = (\n_reg[3]~1_combout\ & (\state_reg.idle~q\ & ((\Add1~0_combout\)))) # (!\n_reg[3]~1_combout\ & (((n_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.idle~q\,
	datab => \n_reg[3]~1_combout\,
	datac => n_reg(2),
	datad => \Add1~0_combout\,
	combout => \n_reg[2]~2_combout\);

-- Location: FF_X2_Y24_N9
\n_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \n_reg[2]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_reg(2));

-- Location: LCCOMB_X2_Y24_N22
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (n_reg(2)) # ((n_reg(1)) # ((!n_reg(0)) # (!n_reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_reg(2),
	datab => n_reg(1),
	datac => n_reg(3),
	datad => n_reg(0),
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y24_N30
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\state_reg.add~q\ & (((!\Selector0~0_combout\)))) # (!\state_reg.add~q\ & (((\state_reg.shift~q\)) # (!\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \state_reg.add~q\,
	datac => \state_reg.shift~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X1_Y24_N8
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\state_reg.add~q\ & \state_reg.shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_reg.add~q\,
	datac => \state_reg.shift~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X1_Y24_N2
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (n_reg(0)) # ((n_reg(2)) # ((n_reg(1)) # (!n_reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_reg(0),
	datab => n_reg(2),
	datac => n_reg(3),
	datad => n_reg(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y24_N10
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ((!a_reg(8) & (\Selector1~0_combout\ & \Equal0~0_combout\))) # (!\Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_reg(8),
	datab => \Selector0~1_combout\,
	datac => \Selector1~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X1_Y24_N6
\state_next.shift_284\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_next.shift_284~combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & (\state_next.shift_284~combout\)) # (!GLOBAL(\reset~inputclkctrl_outclk\) & ((\Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_next.shift_284~combout\,
	datac => \Selector1~1_combout\,
	datad => \reset~inputclkctrl_outclk\,
	combout => \state_next.shift_284~combout\);

-- Location: FF_X2_Y24_N1
\state_reg.shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state_next.shift_284~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.shift~q\);

-- Location: LCCOMB_X1_Y24_N20
\a_reg~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_reg~11_combout\ = ((\process_2~1_combout\) # ((\state_reg.shift~q\ & !n_reg(3)))) # (!\state_reg.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.idle~q\,
	datab => \state_reg.shift~q\,
	datac => n_reg(3),
	datad => \process_2~1_combout\,
	combout => \a_reg~11_combout\);

-- Location: FF_X1_Y24_N23
\a_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_reg~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \a_reg~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(0));

-- Location: IOIBUF_X0_Y25_N15
\a[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X1_Y24_N22
\a_reg~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_reg~9_combout\ = (\state_reg.idle~q\ & (a_reg(0))) # (!\state_reg.idle~q\ & ((\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.idle~q\,
	datac => a_reg(0),
	datad => \a[1]~input_o\,
	combout => \a_reg~9_combout\);

-- Location: FF_X2_Y24_N3
\a_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_reg~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \n_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(1));

-- Location: IOIBUF_X0_Y26_N15
\a[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X2_Y24_N2
\a_reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_reg~8_combout\ = (\state_reg.idle~q\ & (a_reg(1))) # (!\state_reg.idle~q\ & ((\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_reg.idle~q\,
	datac => a_reg(1),
	datad => \a[2]~input_o\,
	combout => \a_reg~8_combout\);

-- Location: FF_X2_Y24_N13
\a_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_reg~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \n_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(2));

-- Location: IOIBUF_X0_Y27_N8
\a[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X2_Y24_N12
\a_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_reg~7_combout\ = (\state_reg.idle~q\ & (a_reg(2))) # (!\state_reg.idle~q\ & ((\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_reg.idle~q\,
	datac => a_reg(2),
	datad => \a[3]~input_o\,
	combout => \a_reg~7_combout\);

-- Location: FF_X2_Y24_N15
\a_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_reg~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \n_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(3));

-- Location: IOIBUF_X0_Y27_N15
\a[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X2_Y24_N14
\a_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_reg~6_combout\ = (\state_reg.idle~q\ & (a_reg(3))) # (!\state_reg.idle~q\ & ((\a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_reg.idle~q\,
	datac => a_reg(3),
	datad => \a[4]~input_o\,
	combout => \a_reg~6_combout\);

-- Location: FF_X2_Y24_N25
\a_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_reg~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \n_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(4));

-- Location: IOIBUF_X0_Y26_N1
\a[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X2_Y24_N24
\a_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_reg~5_combout\ = (\state_reg.idle~q\ & (a_reg(4))) # (!\state_reg.idle~q\ & ((\a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_reg.idle~q\,
	datac => a_reg(4),
	datad => \a[5]~input_o\,
	combout => \a_reg~5_combout\);

-- Location: FF_X2_Y24_N11
\a_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_reg~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \n_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(5));

-- Location: IOIBUF_X0_Y26_N22
\a[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X2_Y24_N10
\a_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_reg~4_combout\ = (\state_reg.idle~q\ & (a_reg(5))) # (!\state_reg.idle~q\ & ((\a[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_reg.idle~q\,
	datac => a_reg(5),
	datad => \a[6]~input_o\,
	combout => \a_reg~4_combout\);

-- Location: FF_X2_Y24_N21
\a_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_reg~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \n_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(6));

-- Location: LCCOMB_X2_Y24_N20
\a_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_reg~3_combout\ = (\state_reg.idle~q\ & ((a_reg(6)))) # (!\state_reg.idle~q\ & (\a[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \state_reg.idle~q\,
	datac => a_reg(6),
	combout => \a_reg~3_combout\);

-- Location: FF_X2_Y24_N29
\a_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_reg~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \n_reg[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(7));

-- Location: LCCOMB_X1_Y24_N0
\a_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_reg~2_combout\ = (\state_reg.idle~q\ & !a_reg(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.idle~q\,
	datad => a_reg(7),
	combout => \a_reg~2_combout\);

-- Location: FF_X1_Y24_N5
\a_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a_reg~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \a_reg~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(8));

-- Location: LCCOMB_X1_Y24_N14
\Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = ((\Selector1~0_combout\ & ((a_reg(8)) # (\Equal0~0_combout\)))) # (!\Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_reg(8),
	datab => \Selector0~1_combout\,
	datac => \Selector1~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X1_Y24_N18
\state_next.idle_291\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_next.idle_291~combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & (\state_next.idle_291~combout\)) # (!GLOBAL(\reset~inputclkctrl_outclk\) & ((!\Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_next.idle_291~combout\,
	datac => \Selector0~2_combout\,
	datad => \reset~inputclkctrl_outclk\,
	combout => \state_next.idle_291~combout\);

-- Location: LCCOMB_X1_Y24_N28
\state_reg.idle~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state_reg.idle~0_combout\ = !\state_next.idle_291~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_next.idle_291~combout\,
	combout => \state_reg.idle~0_combout\);

-- Location: FF_X1_Y24_N29
\state_reg.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state_reg.idle~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state_reg.idle~q\);

-- Location: LCCOMB_X1_Y23_N28
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!p_reg(0) & \state_reg.add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => p_reg(0),
	datad => \state_reg.add~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X1_Y24_N12
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state_reg.add~q\) # ((\start~input_o\ & !\state_reg.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_reg.add~q\,
	datac => \start~input_o\,
	datad => \state_reg.idle~q\,
	combout => \Selector6~0_combout\);

-- Location: CLKCTRL_G2
\Selector6~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector6~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector6~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y23_N22
\p_reg[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- p_reg(0) = (!\reset~input_o\ & ((GLOBAL(\Selector6~0clkctrl_outclk\) & ((\Selector5~0_combout\))) # (!GLOBAL(\Selector6~0clkctrl_outclk\) & (p_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p_reg(0),
	datab => \reset~input_o\,
	datac => \Selector5~0_combout\,
	datad => \Selector6~0clkctrl_outclk\,
	combout => p_reg(0));

-- Location: LCCOMB_X1_Y23_N10
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state_reg.add~q\ & (p_reg(1) $ (p_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => p_reg(1),
	datac => p_reg(0),
	datad => \state_reg.add~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X1_Y23_N24
\p_reg[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- p_reg(1) = (!\reset~input_o\ & ((GLOBAL(\Selector6~0clkctrl_outclk\) & (\Selector4~0_combout\)) # (!GLOBAL(\Selector6~0clkctrl_outclk\) & ((p_reg(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \reset~input_o\,
	datac => p_reg(1),
	datad => \Selector6~0clkctrl_outclk\,
	combout => p_reg(1));

-- Location: LCCOMB_X1_Y23_N8
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state_reg.add~q\ & (p_reg(2) $ (((p_reg(1) & p_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p_reg(2),
	datab => p_reg(1),
	datac => p_reg(0),
	datad => \state_reg.add~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\p_reg[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- p_reg(2) = (!\reset~input_o\ & ((GLOBAL(\Selector6~0clkctrl_outclk\) & ((\Selector3~0_combout\))) # (!GLOBAL(\Selector6~0clkctrl_outclk\) & (p_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p_reg(2),
	datab => \reset~input_o\,
	datac => \Selector3~0_combout\,
	datad => \Selector6~0clkctrl_outclk\,
	combout => p_reg(2));

-- Location: LCCOMB_X1_Y23_N18
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = p_reg(3) $ (((p_reg(2) & (p_reg(0) & p_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => p_reg(2),
	datab => p_reg(3),
	datac => p_reg(0),
	datad => p_reg(1),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y23_N20
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state_reg.add~q\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state_reg.add~q\,
	datad => \Add0~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y23_N4
\p_reg[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- p_reg(3) = (!\reset~input_o\ & ((GLOBAL(\Selector6~0clkctrl_outclk\) & ((\Selector2~0_combout\))) # (!GLOBAL(\Selector6~0clkctrl_outclk\) & (p_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => p_reg(3),
	datac => \Selector2~0_combout\,
	datad => \Selector6~0clkctrl_outclk\,
	combout => p_reg(3));

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

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;
END structure;


