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

-- DATE "10/24/2019 21:52:24"

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

ENTITY 	three_line_to_eight_decimal_decoder IS
    PORT (
	Y0 : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	Y4 : OUT std_logic;
	Y5 : OUT std_logic;
	Y6 : OUT std_logic;
	Y7 : OUT std_logic
	);
END three_line_to_eight_decimal_decoder;

-- Design Ports Information
-- Y0	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y3	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y4	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y5	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y6	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y7	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF three_line_to_eight_decimal_decoder IS
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
SIGNAL ww_Y1 : std_logic;
SIGNAL ww_Y2 : std_logic;
SIGNAL ww_Y3 : std_logic;
SIGNAL ww_Y4 : std_logic;
SIGNAL ww_Y5 : std_logic;
SIGNAL ww_Y6 : std_logic;
SIGNAL ww_Y7 : std_logic;
SIGNAL \Y0~output_o\ : std_logic;
SIGNAL \Y1~output_o\ : std_logic;
SIGNAL \Y2~output_o\ : std_logic;
SIGNAL \Y3~output_o\ : std_logic;
SIGNAL \Y4~output_o\ : std_logic;
SIGNAL \Y5~output_o\ : std_logic;
SIGNAL \Y6~output_o\ : std_logic;
SIGNAL \Y7~output_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst|33~0_combout\ : std_logic;
SIGNAL \inst|33~1_combout\ : std_logic;
SIGNAL \inst|33~2_combout\ : std_logic;
SIGNAL \inst|33~3_combout\ : std_logic;
SIGNAL \inst|33~4_combout\ : std_logic;
SIGNAL \inst|33~5_combout\ : std_logic;
SIGNAL \inst|33~6_combout\ : std_logic;
SIGNAL \inst|33~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_33~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_33~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_33~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_33~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_33~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_33~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_33~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_33~0_combout\ : std_logic;

BEGIN

Y0 <= ww_Y0;
ww_A <= A;
ww_B <= B;
ww_C <= C;
Y1 <= ww_Y1;
Y2 <= ww_Y2;
Y3 <= ww_Y3;
Y4 <= ww_Y4;
Y5 <= ww_Y5;
Y6 <= ww_Y6;
Y7 <= ww_Y7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_33~7_combout\ <= NOT \inst|33~7_combout\;
\inst|ALT_INV_33~6_combout\ <= NOT \inst|33~6_combout\;
\inst|ALT_INV_33~5_combout\ <= NOT \inst|33~5_combout\;
\inst|ALT_INV_33~4_combout\ <= NOT \inst|33~4_combout\;
\inst|ALT_INV_33~3_combout\ <= NOT \inst|33~3_combout\;
\inst|ALT_INV_33~2_combout\ <= NOT \inst|33~2_combout\;
\inst|ALT_INV_33~1_combout\ <= NOT \inst|33~1_combout\;
\inst|ALT_INV_33~0_combout\ <= NOT \inst|33~0_combout\;

-- Location: IOOBUF_X7_Y0_N2
\Y0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_33~0_combout\,
	devoe => ww_devoe,
	o => \Y0~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\Y1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_33~1_combout\,
	devoe => ww_devoe,
	o => \Y1~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\Y2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_33~2_combout\,
	devoe => ww_devoe,
	o => \Y2~output_o\);

-- Location: IOOBUF_X41_Y3_N16
\Y3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_33~3_combout\,
	devoe => ww_devoe,
	o => \Y3~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\Y4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_33~4_combout\,
	devoe => ww_devoe,
	o => \Y4~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\Y5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_33~5_combout\,
	devoe => ww_devoe,
	o => \Y5~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\Y6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_33~6_combout\,
	devoe => ww_devoe,
	o => \Y6~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\Y7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_33~7_combout\,
	devoe => ww_devoe,
	o => \Y7~output_o\);

-- Location: IOIBUF_X0_Y9_N8
\C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X1_Y9_N16
\inst|33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|33~0_combout\ = (!\C~input_o\ & (!\A~input_o\ & !\B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \inst|33~0_combout\);

-- Location: LCCOMB_X1_Y9_N26
\inst|33~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|33~1_combout\ = (!\C~input_o\ & (\A~input_o\ & !\B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \inst|33~1_combout\);

-- Location: LCCOMB_X1_Y9_N12
\inst|33~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|33~2_combout\ = (!\C~input_o\ & (!\A~input_o\ & \B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \inst|33~2_combout\);

-- Location: LCCOMB_X1_Y9_N30
\inst|33~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|33~3_combout\ = (!\C~input_o\ & (\A~input_o\ & \B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \inst|33~3_combout\);

-- Location: LCCOMB_X1_Y9_N24
\inst|33~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|33~4_combout\ = (\C~input_o\ & (!\A~input_o\ & !\B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \inst|33~4_combout\);

-- Location: LCCOMB_X1_Y9_N18
\inst|33~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|33~5_combout\ = (\C~input_o\ & (\A~input_o\ & !\B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \inst|33~5_combout\);

-- Location: LCCOMB_X1_Y9_N28
\inst|33~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|33~6_combout\ = (\C~input_o\ & (!\A~input_o\ & \B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \inst|33~6_combout\);

-- Location: LCCOMB_X1_Y9_N14
\inst|33~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|33~7_combout\ = (\C~input_o\ & (\A~input_o\ & \B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datac => \A~input_o\,
	datad => \B~input_o\,
	combout => \inst|33~7_combout\);

ww_Y0 <= \Y0~output_o\;

ww_Y1 <= \Y1~output_o\;

ww_Y2 <= \Y2~output_o\;

ww_Y3 <= \Y3~output_o\;

ww_Y4 <= \Y4~output_o\;

ww_Y5 <= \Y5~output_o\;

ww_Y6 <= \Y6~output_o\;

ww_Y7 <= \Y7~output_o\;
END structure;


