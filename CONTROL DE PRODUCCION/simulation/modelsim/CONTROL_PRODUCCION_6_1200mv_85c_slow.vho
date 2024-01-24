-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/09/2024 12:53:50"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pwm IS
    PORT (
	clkin : IN std_logic;
	reset : IN std_logic;
	valor_pwm : IN std_logic_vector(7 DOWNTO 0);
	pwm_out : OUT std_logic
	);
END pwm;

-- Design Ports Information
-- pwm_out	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_pwm[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_pwm[6]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_pwm[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_pwm[4]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_pwm[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_pwm[2]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_pwm[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valor_pwm[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkin	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pwm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_valor_pwm : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pwm_out : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkin~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \conta[3]~11_combout\ : std_logic;
SIGNAL \conta[5]~15_combout\ : std_logic;
SIGNAL \conta[6]~18\ : std_logic;
SIGNAL \conta[7]~19_combout\ : std_logic;
SIGNAL \valor_pwm[6]~input_o\ : std_logic;
SIGNAL \valor_pwm[4]~input_o\ : std_logic;
SIGNAL \valor_pwm[1]~input_o\ : std_logic;
SIGNAL \clkin~input_o\ : std_logic;
SIGNAL \clkin~inputclkctrl_outclk\ : std_logic;
SIGNAL \pwm_out~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \valor_pwm[7]~input_o\ : std_logic;
SIGNAL \conta[0]~21_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \conta[1]~8\ : std_logic;
SIGNAL \conta[2]~9_combout\ : std_logic;
SIGNAL \conta[2]~10\ : std_logic;
SIGNAL \conta[3]~12\ : std_logic;
SIGNAL \conta[4]~13_combout\ : std_logic;
SIGNAL \conta[4]~14\ : std_logic;
SIGNAL \conta[5]~16\ : std_logic;
SIGNAL \conta[6]~17_combout\ : std_logic;
SIGNAL \valor_pwm[5]~input_o\ : std_logic;
SIGNAL \valor_pwm[3]~input_o\ : std_logic;
SIGNAL \valor_pwm[2]~input_o\ : std_logic;
SIGNAL \conta[1]~7_combout\ : std_logic;
SIGNAL \valor_pwm[0]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \pwm_out~0_combout\ : std_logic;
SIGNAL conta : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_pwm_out~0_combout\ : std_logic;

BEGIN

ww_clkin <= clkin;
ww_reset <= reset;
ww_valor_pwm <= valor_pwm;
pwm_out <= ww_pwm_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clkin~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_pwm_out~0_combout\ <= NOT \pwm_out~0_combout\;

-- Location: FF_X5_Y1_N31
\conta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \conta[7]~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(7));

-- Location: FF_X5_Y1_N27
\conta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \conta[5]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(5));

-- Location: FF_X5_Y1_N23
\conta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \conta[3]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(3));

-- Location: LCCOMB_X5_Y1_N22
\conta[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \conta[3]~11_combout\ = (conta(3) & (\conta[2]~10\ $ (GND))) # (!conta(3) & (!\conta[2]~10\ & VCC))
-- \conta[3]~12\ = CARRY((conta(3) & !\conta[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => conta(3),
	datad => VCC,
	cin => \conta[2]~10\,
	combout => \conta[3]~11_combout\,
	cout => \conta[3]~12\);

-- Location: LCCOMB_X5_Y1_N26
\conta[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \conta[5]~15_combout\ = (conta(5) & (\conta[4]~14\ $ (GND))) # (!conta(5) & (!\conta[4]~14\ & VCC))
-- \conta[5]~16\ = CARRY((conta(5) & !\conta[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => conta(5),
	datad => VCC,
	cin => \conta[4]~14\,
	combout => \conta[5]~15_combout\,
	cout => \conta[5]~16\);

-- Location: LCCOMB_X5_Y1_N28
\conta[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \conta[6]~17_combout\ = (conta(6) & (!\conta[5]~16\)) # (!conta(6) & ((\conta[5]~16\) # (GND)))
-- \conta[6]~18\ = CARRY((!\conta[5]~16\) # (!conta(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => conta(6),
	datad => VCC,
	cin => \conta[5]~16\,
	combout => \conta[6]~17_combout\,
	cout => \conta[6]~18\);

-- Location: LCCOMB_X5_Y1_N30
\conta[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \conta[7]~19_combout\ = conta(7) $ (!\conta[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => conta(7),
	cin => \conta[6]~18\,
	combout => \conta[7]~19_combout\);

-- Location: IOIBUF_X5_Y0_N8
\valor_pwm[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_pwm(6),
	o => \valor_pwm[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\valor_pwm[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_pwm(4),
	o => \valor_pwm[4]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\valor_pwm[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_pwm(1),
	o => \valor_pwm[1]~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\clkin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin,
	o => \clkin~input_o\);

-- Location: CLKCTRL_G2
\clkin~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y8_N23
\pwm_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pwm_out~0_combout\,
	devoe => ww_devoe,
	o => \pwm_out~output_o\);

-- Location: IOIBUF_X0_Y16_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\valor_pwm[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_pwm(7),
	o => \valor_pwm[7]~input_o\);

-- Location: LCCOMB_X5_Y1_N0
\conta[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \conta[0]~21_combout\ = !conta(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => conta(0),
	combout => \conta[0]~21_combout\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: FF_X5_Y1_N1
\conta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \conta[0]~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(0));

-- Location: LCCOMB_X5_Y1_N18
\conta[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \conta[1]~7_combout\ = (conta(1) & (conta(0) $ (VCC))) # (!conta(1) & (conta(0) & VCC))
-- \conta[1]~8\ = CARRY((conta(1) & conta(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => conta(1),
	datab => conta(0),
	datad => VCC,
	combout => \conta[1]~7_combout\,
	cout => \conta[1]~8\);

-- Location: LCCOMB_X5_Y1_N20
\conta[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \conta[2]~9_combout\ = (conta(2) & (!\conta[1]~8\)) # (!conta(2) & ((\conta[1]~8\) # (GND)))
-- \conta[2]~10\ = CARRY((!\conta[1]~8\) # (!conta(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => conta(2),
	datad => VCC,
	cin => \conta[1]~8\,
	combout => \conta[2]~9_combout\,
	cout => \conta[2]~10\);

-- Location: FF_X5_Y1_N21
\conta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \conta[2]~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(2));

-- Location: LCCOMB_X5_Y1_N24
\conta[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \conta[4]~13_combout\ = (conta(4) & (!\conta[3]~12\)) # (!conta(4) & ((\conta[3]~12\) # (GND)))
-- \conta[4]~14\ = CARRY((!\conta[3]~12\) # (!conta(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => conta(4),
	datad => VCC,
	cin => \conta[3]~12\,
	combout => \conta[4]~13_combout\,
	cout => \conta[4]~14\);

-- Location: FF_X5_Y1_N25
\conta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \conta[4]~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(4));

-- Location: FF_X5_Y1_N29
\conta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \conta[6]~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(6));

-- Location: IOIBUF_X7_Y0_N8
\valor_pwm[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_pwm(5),
	o => \valor_pwm[5]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\valor_pwm[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_pwm(3),
	o => \valor_pwm[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\valor_pwm[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_pwm(2),
	o => \valor_pwm[2]~input_o\);

-- Location: FF_X5_Y1_N19
\conta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \conta[1]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => conta(1));

-- Location: IOIBUF_X11_Y0_N15
\valor_pwm[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valor_pwm(0),
	o => \valor_pwm[0]~input_o\);

-- Location: LCCOMB_X5_Y1_N2
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((conta(0) & !\valor_pwm[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => conta(0),
	datab => \valor_pwm[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X5_Y1_N4
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\valor_pwm[1]~input_o\ & ((!\LessThan0~1_cout\) # (!conta(1)))) # (!\valor_pwm[1]~input_o\ & (!conta(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_pwm[1]~input_o\,
	datab => conta(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X5_Y1_N6
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((conta(2) & ((!\LessThan0~3_cout\) # (!\valor_pwm[2]~input_o\))) # (!conta(2) & (!\valor_pwm[2]~input_o\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => conta(2),
	datab => \valor_pwm[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X5_Y1_N8
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((conta(3) & (\valor_pwm[3]~input_o\ & !\LessThan0~5_cout\)) # (!conta(3) & ((\valor_pwm[3]~input_o\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => conta(3),
	datab => \valor_pwm[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X5_Y1_N10
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\valor_pwm[4]~input_o\ & (conta(4) & !\LessThan0~7_cout\)) # (!\valor_pwm[4]~input_o\ & ((conta(4)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_pwm[4]~input_o\,
	datab => conta(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X5_Y1_N12
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((conta(5) & (\valor_pwm[5]~input_o\ & !\LessThan0~9_cout\)) # (!conta(5) & ((\valor_pwm[5]~input_o\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => conta(5),
	datab => \valor_pwm[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X5_Y1_N14
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\valor_pwm[6]~input_o\ & (conta(6) & !\LessThan0~11_cout\)) # (!\valor_pwm[6]~input_o\ & ((conta(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \valor_pwm[6]~input_o\,
	datab => conta(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X5_Y1_N16
\LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (conta(7) & ((\LessThan0~13_cout\) # (!\valor_pwm[7]~input_o\))) # (!conta(7) & (\LessThan0~13_cout\ & !\valor_pwm[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => conta(7),
	datad => \valor_pwm[7]~input_o\,
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X1_Y8_N16
\pwm_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm_out~0_combout\ = (\reset~input_o\) # (\LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \LessThan0~14_combout\,
	combout => \pwm_out~0_combout\);

ww_pwm_out <= \pwm_out~output_o\;
END structure;


