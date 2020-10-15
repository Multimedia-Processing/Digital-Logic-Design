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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "10/24/2019 22:11:45"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	four_line_to_sixteen_line_decimal_decoder IS
    PORT (
	Y0 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	Y4 : OUT std_logic;
	Y5 : OUT std_logic;
	Y6 : OUT std_logic;
	Y7 : OUT std_logic;
	Y8 : OUT std_logic;
	Y9 : OUT std_logic;
	Y10 : OUT std_logic;
	Y11 : OUT std_logic;
	Y12 : OUT std_logic;
	Y13 : OUT std_logic;
	Y14 : OUT std_logic;
	Y15 : OUT std_logic
	);
END four_line_to_sixteen_line_decimal_decoder;

-- Design Ports Information
-- Y0	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y3	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y4	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y5	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y6	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y7	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y8	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y9	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y10	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y11	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y12	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y13	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y14	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y15	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF four_line_to_sixteen_line_decimal_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y0 : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_Y1 : std_logic;
SIGNAL ww_Y2 : std_logic;
SIGNAL ww_Y3 : std_logic;
SIGNAL ww_Y4 : std_logic;
SIGNAL ww_Y5 : std_logic;
SIGNAL ww_Y6 : std_logic;
SIGNAL ww_Y7 : std_logic;
SIGNAL ww_Y8 : std_logic;
SIGNAL ww_Y9 : std_logic;
SIGNAL ww_Y10 : std_logic;
SIGNAL ww_Y11 : std_logic;
SIGNAL ww_Y12 : std_logic;
SIGNAL ww_Y13 : std_logic;
SIGNAL ww_Y14 : std_logic;
SIGNAL ww_Y15 : std_logic;
SIGNAL \Y0~output_o\ : std_logic;
SIGNAL \Y1~output_o\ : std_logic;
SIGNAL \Y2~output_o\ : std_logic;
SIGNAL \Y3~output_o\ : std_logic;
SIGNAL \Y4~output_o\ : std_logic;
SIGNAL \Y5~output_o\ : std_logic;
SIGNAL \Y6~output_o\ : std_logic;
SIGNAL \Y7~output_o\ : std_logic;
SIGNAL \Y8~output_o\ : std_logic;
SIGNAL \Y9~output_o\ : std_logic;
SIGNAL \Y10~output_o\ : std_logic;
SIGNAL \Y11~output_o\ : std_logic;
SIGNAL \Y12~output_o\ : std_logic;
SIGNAL \Y13~output_o\ : std_logic;
SIGNAL \Y14~output_o\ : std_logic;
SIGNAL \Y15~output_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst|15~0_combout\ : std_logic;
SIGNAL \inst|15~1_combout\ : std_logic;
SIGNAL \inst|15~2_combout\ : std_logic;
SIGNAL \inst|15~3_combout\ : std_logic;
SIGNAL \inst|15~4_combout\ : std_logic;
SIGNAL \inst|15~5_combout\ : std_logic;
SIGNAL \inst|15~6_combout\ : std_logic;
SIGNAL \inst|15~7_combout\ : std_logic;
SIGNAL \inst|15~8_combout\ : std_logic;
SIGNAL \inst|15~9_combout\ : std_logic;
SIGNAL \inst|15~10_combout\ : std_logic;
SIGNAL \inst|15~11_combout\ : std_logic;
SIGNAL \inst|15~12_combout\ : std_logic;
SIGNAL \inst|15~13_combout\ : std_logic;
SIGNAL \inst|15~14_combout\ : std_logic;
SIGNAL \inst|15~15_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~15_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~14_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~13_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~12_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~11_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~10_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~9_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~0_combout\ : std_logic;

BEGIN

Y0 <= ww_Y0;
ww_A <= A;
ww_B <= B;
ww_C <= C;
ww_D <= D;
Y1 <= ww_Y1;
Y2 <= ww_Y2;
Y3 <= ww_Y3;
Y4 <= ww_Y4;
Y5 <= ww_Y5;
Y6 <= ww_Y6;
Y7 <= ww_Y7;
Y8 <= ww_Y8;
Y9 <= ww_Y9;
Y10 <= ww_Y10;
Y11 <= ww_Y11;
Y12 <= ww_Y12;
Y13 <= ww_Y13;
Y14 <= ww_Y14;
Y15 <= ww_Y15;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_15~15_combout\ <= NOT \inst|15~15_combout\;
\inst|ALT_INV_15~14_combout\ <= NOT \inst|15~14_combout\;
\inst|ALT_INV_15~13_combout\ <= NOT \inst|15~13_combout\;
\inst|ALT_INV_15~12_combout\ <= NOT \inst|15~12_combout\;
\inst|ALT_INV_15~11_combout\ <= NOT \inst|15~11_combout\;
\inst|ALT_INV_15~10_combout\ <= NOT \inst|15~10_combout\;
\inst|ALT_INV_15~9_combout\ <= NOT \inst|15~9_combout\;
\inst|ALT_INV_15~8_combout\ <= NOT \inst|15~8_combout\;
\inst|ALT_INV_15~7_combout\ <= NOT \inst|15~7_combout\;
\inst|ALT_INV_15~6_combout\ <= NOT \inst|15~6_combout\;
\inst|ALT_INV_15~5_combout\ <= NOT \inst|15~5_combout\;
\inst|ALT_INV_15~4_combout\ <= NOT \inst|15~4_combout\;
\inst|ALT_INV_15~3_combout\ <= NOT \inst|15~3_combout\;
\inst|ALT_INV_15~2_combout\ <= NOT \inst|15~2_combout\;
\inst|ALT_INV_15~1_combout\ <= NOT \inst|15~1_combout\;
\inst|ALT_INV_15~0_combout\ <= NOT \inst|15~0_combout\;

-- Location: IOOBUF_X0_Y11_N2
\Y0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~0_combout\,
	devoe => ww_devoe,
	o => \Y0~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\Y1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~1_combout\,
	devoe => ww_devoe,
	o => \Y1~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\Y2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~2_combout\,
	devoe => ww_devoe,
	o => \Y2~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\Y3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~3_combout\,
	devoe => ww_devoe,
	o => \Y3~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\Y4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~4_combout\,
	devoe => ww_devoe,
	o => \Y4~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\Y5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~5_combout\,
	devoe => ww_devoe,
	o => \Y5~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\Y6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~6_combout\,
	devoe => ww_devoe,
	o => \Y6~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\Y7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~7_combout\,
	devoe => ww_devoe,
	o => \Y7~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\Y8~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~8_combout\,
	devoe => ww_devoe,
	o => \Y8~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\Y9~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~9_combout\,
	devoe => ww_devoe,
	o => \Y9~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\Y10~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~10_combout\,
	devoe => ww_devoe,
	o => \Y10~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\Y11~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~11_combout\,
	devoe => ww_devoe,
	o => \Y11~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\Y12~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~12_combout\,
	devoe => ww_devoe,
	o => \Y12~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\Y13~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~13_combout\,
	devoe => ww_devoe,
	o => \Y13~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\Y14~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~14_combout\,
	devoe => ww_devoe,
	o => \Y14~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\Y15~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~15_combout\,
	devoe => ww_devoe,
	o => \Y15~output_o\);

-- Location: IOIBUF_X0_Y6_N8
\C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\D~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X1_Y9_N24
\inst|15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|15~0_combout\ = (!\C~input_o\ & (!\B~input_o\ & (!\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|15~0_combout\);

-- Location: LCCOMB_X1_Y9_N2
\inst|15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|15~1_combout\ = (!\C~input_o\ & (!\B~input_o\ & (!\D~input_o\ & \A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|15~1_combout\);

-- Location: LCCOMB_X1_Y9_N4
\inst|15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|15~2_combout\ = (!\C~input_o\ & (\B~input_o\ & (!\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|15~2_combout\);

-- Location: LCCOMB_X1_Y9_N22
\inst|15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|15~3_combout\ = (!\C~input_o\ & (\B~input_o\ & (!\D~input_o\ & \A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|15~3_combout\);

-- Location: LCCOMB_X1_Y9_N16
\inst|15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|15~4_combout\ = (\C~input_o\ & (!\B~input_o\ & (!\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|15~4_combout\);

-- Location: LCCOMB_X1_Y9_N26
\inst|15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|15~5_combout\ = (\C~input_o\ & (!\B~input_o\ & (!\D~input_o\ & \A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|15~5_combout\);

-- Location: LCCOMB_X1_Y9_N28
\inst|15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|15~6_combout\ = (\C~input_o\ & (\B~input_o\ & (!\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|15~6_combout\);

-- Location: LCCOMB_X1_Y9_N6
\inst|15~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|15~7_combout\ = (\C~input_o\ & (\B~input_o\ & (!\D~input_o\ & \A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|15~7_combout\);

-- Location: LCCOMB_X1_Y9_N0
\inst|15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|15~8_combout\ = (!\C~input_o\ & (!\B~input_o\ & (\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|15~8_combout\);

-- Location: LCCOMB_X1_Y9_N10
\inst|15~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|15~9_combout\ = (!\C~input_o\ & (!\B~input_o\ & (\D~input_o\ & \A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|15~9_combout\);

-- Location: LCCOMB_X1_Y9_N20
\inst|15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|15~10_combout\ = (!\C~input_o\ & (\B~input_o\ & (\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|15~10_combout\);

-- Location: LCCOMB_X1_Y9_N14
\inst|15~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|15~11_combout\ = (!\C~input_o\ & (\B~input_o\ & (\D~input_o\ & \A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|15~11_combout\);

-- Location: LCCOMB_X1_Y9_N8
\inst|15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|15~12_combout\ = (\C~input_o\ & (!\B~input_o\ & (\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|15~12_combout\);

-- Location: LCCOMB_X1_Y9_N18
\inst|15~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|15~13_combout\ = (\C~input_o\ & (!\B~input_o\ & (\D~input_o\ & \A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|15~13_combout\);

-- Location: LCCOMB_X1_Y9_N12
\inst|15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|15~14_combout\ = (\C~input_o\ & (\B~input_o\ & (\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|15~14_combout\);

-- Location: LCCOMB_X1_Y9_N30
\inst|15~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|15~15_combout\ = (\C~input_o\ & (\B~input_o\ & (\D~input_o\ & \A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst|15~15_combout\);

ww_Y0 <= \Y0~output_o\;

ww_Y1 <= \Y1~output_o\;

ww_Y2 <= \Y2~output_o\;

ww_Y3 <= \Y3~output_o\;

ww_Y4 <= \Y4~output_o\;

ww_Y5 <= \Y5~output_o\;

ww_Y6 <= \Y6~output_o\;

ww_Y7 <= \Y7~output_o\;

ww_Y8 <= \Y8~output_o\;

ww_Y9 <= \Y9~output_o\;

ww_Y10 <= \Y10~output_o\;

ww_Y11 <= \Y11~output_o\;

ww_Y12 <= \Y12~output_o\;

ww_Y13 <= \Y13~output_o\;

ww_Y14 <= \Y14~output_o\;

ww_Y15 <= \Y15~output_o\;
END structure;


