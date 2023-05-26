-- ========================================
-- file_name:  enhanced_prio.vhd 
-- author: Savan Yeshwanth Rao (2784780), Nischal Gudehindler Lingeswara (2825960)  
-- ========================================

 

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

ENTITY 	enhanced_prio IS
    PORT (
	r : IN std_logic_vector(9 DOWNTO 0);
	fst : BUFFER std_logic_vector(3 DOWNTO 0);
	snd : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END enhanced_prio;

-- Design Ports Information
-- fst[0]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fst[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fst[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fst[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- snd[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- snd[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- snd[2]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- snd[3]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[7]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[8]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[9]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[5]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[6]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[4]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[3]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF enhanced_prio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_r : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_fst : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_snd : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \fst[0]~output_o\ : std_logic;
SIGNAL \fst[1]~output_o\ : std_logic;
SIGNAL \fst[2]~output_o\ : std_logic;
SIGNAL \fst[3]~output_o\ : std_logic;
SIGNAL \snd[0]~output_o\ : std_logic;
SIGNAL \snd[1]~output_o\ : std_logic;
SIGNAL \snd[2]~output_o\ : std_logic;
SIGNAL \snd[3]~output_o\ : std_logic;
SIGNAL \r[7]~input_o\ : std_logic;
SIGNAL \r[8]~input_o\ : std_logic;
SIGNAL \r[9]~input_o\ : std_logic;
SIGNAL \r[4]~input_o\ : std_logic;
SIGNAL \r[3]~input_o\ : std_logic;
SIGNAL \r[2]~input_o\ : std_logic;
SIGNAL \r[1]~input_o\ : std_logic;
SIGNAL \r[0]~input_o\ : std_logic;
SIGNAL \fst~0_combout\ : std_logic;
SIGNAL \r[6]~input_o\ : std_logic;
SIGNAL \r[5]~input_o\ : std_logic;
SIGNAL \fst~1_combout\ : std_logic;
SIGNAL \fst~2_combout\ : std_logic;
SIGNAL \fst~3_combout\ : std_logic;
SIGNAL \fst~4_combout\ : std_logic;
SIGNAL \fst~5_combout\ : std_logic;
SIGNAL \fst~6_combout\ : std_logic;
SIGNAL \fst~8_combout\ : std_logic;
SIGNAL \fst~9_combout\ : std_logic;
SIGNAL \fst~7_combout\ : std_logic;
SIGNAL \fst~10_combout\ : std_logic;
SIGNAL \fst~11_combout\ : std_logic;
SIGNAL \fst~12_combout\ : std_logic;
SIGNAL \snd~0_combout\ : std_logic;
SIGNAL \s2[1]~1_combout\ : std_logic;
SIGNAL \snd~4_combout\ : std_logic;
SIGNAL \snd~1_combout\ : std_logic;
SIGNAL \snd~2_combout\ : std_logic;
SIGNAL \s2[5]~0_combout\ : std_logic;
SIGNAL \snd~3_combout\ : std_logic;
SIGNAL \snd~15_combout\ : std_logic;
SIGNAL \snd~16_combout\ : std_logic;
SIGNAL \snd~6_combout\ : std_logic;
SIGNAL \snd~7_combout\ : std_logic;
SIGNAL \snd~5_combout\ : std_logic;
SIGNAL \snd~8_combout\ : std_logic;
SIGNAL \snd~9_combout\ : std_logic;
SIGNAL \snd~10_combout\ : std_logic;
SIGNAL \snd~11_combout\ : std_logic;
SIGNAL \snd~12_combout\ : std_logic;
SIGNAL \snd~13_combout\ : std_logic;
SIGNAL \snd~14_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_r <= r;
fst <= ww_fst;
snd <= ww_snd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N16
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

-- Location: IOOBUF_X0_Y35_N23
\fst[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fst~2_combout\,
	devoe => ww_devoe,
	o => \fst[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\fst[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fst~6_combout\,
	devoe => ww_devoe,
	o => \fst[1]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\fst[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fst~10_combout\,
	devoe => ww_devoe,
	o => \fst[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\fst[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fst~12_combout\,
	devoe => ww_devoe,
	o => \fst[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\snd[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \snd~16_combout\,
	devoe => ww_devoe,
	o => \snd[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\snd[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \snd~10_combout\,
	devoe => ww_devoe,
	o => \snd[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\snd[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \snd~13_combout\,
	devoe => ww_devoe,
	o => \snd[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\snd[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \snd~14_combout\,
	devoe => ww_devoe,
	o => \snd[3]~output_o\);

-- Location: IOIBUF_X24_Y39_N15
\r[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(7),
	o => \r[7]~input_o\);

-- Location: IOIBUF_X20_Y39_N8
\r[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(8),
	o => \r[8]~input_o\);

-- Location: IOIBUF_X24_Y39_N8
\r[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(9),
	o => \r[9]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\r[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(4),
	o => \r[4]~input_o\);

-- Location: IOIBUF_X22_Y39_N15
\r[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(3),
	o => \r[3]~input_o\);

-- Location: IOIBUF_X20_Y39_N15
\r[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(2),
	o => \r[2]~input_o\);

-- Location: IOIBUF_X26_Y39_N1
\r[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(1),
	o => \r[1]~input_o\);

-- Location: IOIBUF_X22_Y39_N29
\r[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(0),
	o => \r[0]~input_o\);

-- Location: LCCOMB_X18_Y35_N24
\fst~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fst~0_combout\ = (\r[3]~input_o\) # ((!\r[2]~input_o\ & ((\r[1]~input_o\) # (!\r[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \r[2]~input_o\,
	datac => \r[1]~input_o\,
	datad => \r[0]~input_o\,
	combout => \fst~0_combout\);

-- Location: IOIBUF_X24_Y39_N1
\r[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(6),
	o => \r[6]~input_o\);

-- Location: IOIBUF_X20_Y39_N1
\r[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(5),
	o => \r[5]~input_o\);

-- Location: LCCOMB_X17_Y35_N16
\fst~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fst~1_combout\ = (!\r[6]~input_o\ & ((\r[5]~input_o\) # ((!\r[4]~input_o\ & \fst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[4]~input_o\,
	datab => \fst~0_combout\,
	datac => \r[6]~input_o\,
	datad => \r[5]~input_o\,
	combout => \fst~1_combout\);

-- Location: LCCOMB_X17_Y35_N26
\fst~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fst~2_combout\ = (\r[9]~input_o\) # ((!\r[8]~input_o\ & ((\r[7]~input_o\) # (\fst~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[7]~input_o\,
	datab => \r[8]~input_o\,
	datac => \r[9]~input_o\,
	datad => \fst~1_combout\,
	combout => \fst~2_combout\);

-- Location: LCCOMB_X17_Y35_N12
\fst~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fst~3_combout\ = (!\r[9]~input_o\ & !\r[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r[9]~input_o\,
	datad => \r[8]~input_o\,
	combout => \fst~3_combout\);

-- Location: LCCOMB_X18_Y35_N26
\fst~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fst~4_combout\ = (\r[3]~input_o\) # ((\r[2]~input_o\) # ((!\r[1]~input_o\ & !\r[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \r[2]~input_o\,
	datac => \r[1]~input_o\,
	datad => \r[0]~input_o\,
	combout => \fst~4_combout\);

-- Location: LCCOMB_X18_Y35_N4
\fst~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fst~5_combout\ = (\fst~4_combout\ & (!\r[5]~input_o\ & !\r[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fst~4_combout\,
	datac => \r[5]~input_o\,
	datad => \r[4]~input_o\,
	combout => \fst~5_combout\);

-- Location: LCCOMB_X17_Y35_N6
\fst~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fst~6_combout\ = (\fst~3_combout\ & ((\r[6]~input_o\) # ((\r[7]~input_o\) # (\fst~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[6]~input_o\,
	datab => \fst~3_combout\,
	datac => \r[7]~input_o\,
	datad => \fst~5_combout\,
	combout => \fst~6_combout\);

-- Location: LCCOMB_X17_Y35_N0
\fst~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fst~8_combout\ = (!\r[6]~input_o\ & (!\r[5]~input_o\ & (!\r[7]~input_o\ & \fst~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[6]~input_o\,
	datab => \r[5]~input_o\,
	datac => \r[7]~input_o\,
	datad => \fst~3_combout\,
	combout => \fst~8_combout\);

-- Location: LCCOMB_X18_Y35_N0
\fst~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fst~9_combout\ = (\fst~8_combout\ & !\r[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fst~8_combout\,
	datac => \r[4]~input_o\,
	combout => \fst~9_combout\);

-- Location: LCCOMB_X18_Y35_N22
\fst~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fst~7_combout\ = (!\r[3]~input_o\ & (!\r[2]~input_o\ & !\r[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \r[2]~input_o\,
	datac => \r[1]~input_o\,
	combout => \fst~7_combout\);

-- Location: LCCOMB_X18_Y35_N2
\fst~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fst~10_combout\ = (\fst~9_combout\ & (((\fst~7_combout\ & !\r[0]~input_o\)))) # (!\fst~9_combout\ & (\fst~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fst~3_combout\,
	datab => \fst~9_combout\,
	datac => \fst~7_combout\,
	datad => \r[0]~input_o\,
	combout => \fst~10_combout\);

-- Location: LCCOMB_X18_Y35_N28
\fst~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fst~11_combout\ = (!\r[3]~input_o\ & (!\r[2]~input_o\ & (!\r[1]~input_o\ & !\r[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \r[2]~input_o\,
	datac => \r[1]~input_o\,
	datad => \r[0]~input_o\,
	combout => \fst~11_combout\);

-- Location: LCCOMB_X18_Y35_N14
\fst~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fst~12_combout\ = (\r[4]~input_o\ & (((!\fst~3_combout\)))) # (!\r[4]~input_o\ & ((\fst~8_combout\ & (\fst~11_combout\)) # (!\fst~8_combout\ & ((!\fst~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[4]~input_o\,
	datab => \fst~11_combout\,
	datac => \fst~8_combout\,
	datad => \fst~3_combout\,
	combout => \fst~12_combout\);

-- Location: LCCOMB_X17_Y35_N2
\snd~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~0_combout\ = (\r[6]~input_o\ & (!\r[9]~input_o\ & (!\r[7]~input_o\ & !\r[8]~input_o\))) # (!\r[6]~input_o\ & (((!\r[8]~input_o\)) # (!\r[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[6]~input_o\,
	datab => \r[9]~input_o\,
	datac => \r[7]~input_o\,
	datad => \r[8]~input_o\,
	combout => \snd~0_combout\);

-- Location: LCCOMB_X18_Y35_N20
\s2[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s2[1]~1_combout\ = (!\r[2]~input_o\ & !\r[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r[2]~input_o\,
	datac => \r[3]~input_o\,
	combout => \s2[1]~1_combout\);

-- Location: LCCOMB_X18_Y35_N6
\snd~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~4_combout\ = (\r[1]~input_o\ $ (((\s2[1]~1_combout\ & \fst~9_combout\)))) # (!\r[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2[1]~1_combout\,
	datab => \fst~9_combout\,
	datac => \r[1]~input_o\,
	datad => \r[0]~input_o\,
	combout => \snd~4_combout\);

-- Location: LCCOMB_X18_Y35_N16
\snd~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~1_combout\ = (\r[3]~input_o\ & (\snd~0_combout\ & (\r[4]~input_o\ $ (!\fst~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[3]~input_o\,
	datab => \r[4]~input_o\,
	datac => \fst~8_combout\,
	datad => \snd~0_combout\,
	combout => \snd~1_combout\);

-- Location: LCCOMB_X17_Y35_N4
\snd~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~2_combout\ = (\r[7]~input_o\ & (\r[9]~input_o\ $ (\r[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r[9]~input_o\,
	datac => \r[7]~input_o\,
	datad => \r[8]~input_o\,
	combout => \snd~2_combout\);

-- Location: LCCOMB_X17_Y35_N14
\s2[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \s2[5]~0_combout\ = (\r[5]~input_o\ & ((\r[6]~input_o\) # ((\r[7]~input_o\) # (!\fst~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[6]~input_o\,
	datab => \r[5]~input_o\,
	datac => \r[7]~input_o\,
	datad => \fst~3_combout\,
	combout => \s2[5]~0_combout\);

-- Location: LCCOMB_X18_Y35_N10
\snd~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~3_combout\ = (\snd~1_combout\) # ((\snd~2_combout\) # ((\snd~0_combout\ & \s2[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \snd~0_combout\,
	datab => \snd~1_combout\,
	datac => \snd~2_combout\,
	datad => \s2[5]~0_combout\,
	combout => \snd~3_combout\);

-- Location: LCCOMB_X18_Y35_N12
\snd~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~15_combout\ = (\fst~8_combout\ & (((!\r[3]~input_o\ & !\r[4]~input_o\)) # (!\r[2]~input_o\))) # (!\fst~8_combout\ & (!\r[2]~input_o\ & ((!\r[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fst~8_combout\,
	datab => \r[2]~input_o\,
	datac => \r[3]~input_o\,
	datad => \r[4]~input_o\,
	combout => \snd~15_combout\);

-- Location: LCCOMB_X18_Y35_N30
\snd~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~16_combout\ = (\snd~3_combout\) # ((\snd~0_combout\ & (\snd~4_combout\ & \snd~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \snd~0_combout\,
	datab => \snd~4_combout\,
	datac => \snd~3_combout\,
	datad => \snd~15_combout\,
	combout => \snd~16_combout\);

-- Location: LCCOMB_X17_Y35_N10
\snd~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~6_combout\ = (!\r[8]~input_o\) # (!\r[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r[9]~input_o\,
	datad => \r[8]~input_o\,
	combout => \snd~6_combout\);

-- Location: LCCOMB_X17_Y35_N20
\snd~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~7_combout\ = (\snd~6_combout\ & (!\s2[5]~0_combout\ & ((\fst~8_combout\) # (!\r[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \snd~6_combout\,
	datab => \r[4]~input_o\,
	datac => \s2[5]~0_combout\,
	datad => \fst~8_combout\,
	combout => \snd~7_combout\);

-- Location: LCCOMB_X17_Y35_N24
\snd~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~5_combout\ = (\r[6]~input_o\ & ((\r[9]~input_o\ & ((!\r[8]~input_o\))) # (!\r[9]~input_o\ & ((\r[7]~input_o\) # (\r[8]~input_o\))))) # (!\r[6]~input_o\ & (\r[7]~input_o\ & (\r[9]~input_o\ $ (\r[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[6]~input_o\,
	datab => \r[9]~input_o\,
	datac => \r[7]~input_o\,
	datad => \r[8]~input_o\,
	combout => \snd~5_combout\);

-- Location: LCCOMB_X18_Y35_N8
\snd~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~8_combout\ = (\r[1]~input_o\ & (\s2[1]~1_combout\ & (\fst~9_combout\ & !\r[0]~input_o\))) # (!\r[1]~input_o\ & (((\s2[1]~1_combout\ & \fst~9_combout\)) # (!\r[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2[1]~1_combout\,
	datab => \fst~9_combout\,
	datac => \r[1]~input_o\,
	datad => \r[0]~input_o\,
	combout => \snd~8_combout\);

-- Location: LCCOMB_X18_Y35_N18
\snd~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~9_combout\ = (\r[2]~input_o\ & (\fst~8_combout\ & (!\r[3]~input_o\ & !\r[4]~input_o\))) # (!\r[2]~input_o\ & (((\fst~8_combout\ & !\r[4]~input_o\)) # (!\r[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fst~8_combout\,
	datab => \r[2]~input_o\,
	datac => \r[3]~input_o\,
	datad => \r[4]~input_o\,
	combout => \snd~9_combout\);

-- Location: LCCOMB_X17_Y35_N22
\snd~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~10_combout\ = (\snd~5_combout\) # ((\snd~7_combout\ & ((\snd~8_combout\) # (!\snd~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \snd~7_combout\,
	datab => \snd~5_combout\,
	datac => \snd~8_combout\,
	datad => \snd~9_combout\,
	combout => \snd~10_combout\);

-- Location: LCCOMB_X17_Y35_N8
\snd~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~11_combout\ = (\r[6]~input_o\ & (!\r[9]~input_o\ & (!\r[7]~input_o\ & !\r[8]~input_o\))) # (!\r[6]~input_o\ & ((\r[9]~input_o\ & (!\r[7]~input_o\ & !\r[8]~input_o\)) # (!\r[9]~input_o\ & ((!\r[8]~input_o\) # (!\r[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[6]~input_o\,
	datab => \r[9]~input_o\,
	datac => \r[7]~input_o\,
	datad => \r[8]~input_o\,
	combout => \snd~11_combout\);

-- Location: LCCOMB_X17_Y35_N18
\snd~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~12_combout\ = (\snd~11_combout\ & (!\s2[5]~0_combout\ & ((\fst~8_combout\) # (!\r[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r[4]~input_o\,
	datab => \snd~11_combout\,
	datac => \s2[5]~0_combout\,
	datad => \fst~8_combout\,
	combout => \snd~12_combout\);

-- Location: LCCOMB_X17_Y35_N28
\snd~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~13_combout\ = (\snd~12_combout\ & (((\snd~8_combout\ & \snd~9_combout\)))) # (!\snd~12_combout\ & (\snd~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \snd~6_combout\,
	datab => \snd~12_combout\,
	datac => \snd~8_combout\,
	datad => \snd~9_combout\,
	combout => \snd~13_combout\);

-- Location: LCCOMB_X17_Y35_N30
\snd~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \snd~14_combout\ = ((\snd~12_combout\ & (\snd~8_combout\ & \snd~9_combout\))) # (!\snd~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \snd~6_combout\,
	datab => \snd~12_combout\,
	datac => \snd~8_combout\,
	datad => \snd~9_combout\,
	combout => \snd~14_combout\);

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

ww_fst(0) <= \fst[0]~output_o\;

ww_fst(1) <= \fst[1]~output_o\;

ww_fst(2) <= \fst[2]~output_o\;

ww_fst(3) <= \fst[3]~output_o\;

ww_snd(0) <= \snd[0]~output_o\;

ww_snd(1) <= \snd[1]~output_o\;

ww_snd(2) <= \snd[2]~output_o\;

ww_snd(3) <= \snd[3]~output_o\;
END structure;


