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

-- DATE "09/20/2020 22:35:20"

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

ENTITY 	BCD_seven_seg_seven_four_four_seven IS
    PORT (
	OA : OUT std_logic;
	LT : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	D : IN std_logic;
	RBI : IN std_logic;
	BI_RBO : IN std_logic;
	A : IN std_logic;
	OB : OUT std_logic;
	OC : OUT std_logic;
	OD : OUT std_logic;
	OE : OUT std_logic;
	\OF\ : OUT std_logic;
	OG : OUT std_logic;
	OP : OUT std_logic
	);
END BCD_seven_seg_seven_four_four_seven;

-- Design Ports Information
-- OA	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OB	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OC	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OD	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OE	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OF	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OG	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LT	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BI_RBO	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RBI	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCD_seven_seg_seven_four_four_seven IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OA : std_logic;
SIGNAL ww_LT : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_RBI : std_logic;
SIGNAL ww_BI_RBO : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_OB : std_logic;
SIGNAL ww_OC : std_logic;
SIGNAL ww_OD : std_logic;
SIGNAL ww_OE : std_logic;
SIGNAL \ww_OF\ : std_logic;
SIGNAL ww_OG : std_logic;
SIGNAL ww_OP : std_logic;
SIGNAL \OA~output_o\ : std_logic;
SIGNAL \OB~output_o\ : std_logic;
SIGNAL \OC~output_o\ : std_logic;
SIGNAL \OD~output_o\ : std_logic;
SIGNAL \OE~output_o\ : std_logic;
SIGNAL \OF~output_o\ : std_logic;
SIGNAL \OG~output_o\ : std_logic;
SIGNAL \OP~output_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \RBI~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \inst|81~8_combout\ : std_logic;
SIGNAL \inst|81~9_combout\ : std_logic;
SIGNAL \LT~input_o\ : std_logic;
SIGNAL \BI_RBO~input_o\ : std_logic;
SIGNAL \inst|81~combout\ : std_logic;
SIGNAL \inst|82~9_combout\ : std_logic;
SIGNAL \inst|82~10_combout\ : std_logic;
SIGNAL \inst|82~8_combout\ : std_logic;
SIGNAL \inst|83~4_combout\ : std_logic;
SIGNAL \inst|83~3_combout\ : std_logic;
SIGNAL \inst|83~combout\ : std_logic;
SIGNAL \inst|84~9_combout\ : std_logic;
SIGNAL \inst|84~10_combout\ : std_logic;
SIGNAL \inst|84~8_combout\ : std_logic;
SIGNAL \inst|85~3_combout\ : std_logic;
SIGNAL \inst|85~combout\ : std_logic;
SIGNAL \inst|86~9_combout\ : std_logic;
SIGNAL \inst|86~10_combout\ : std_logic;
SIGNAL \inst|86~8_combout\ : std_logic;
SIGNAL \inst|87~4_combout\ : std_logic;
SIGNAL \inst|87~combout\ : std_logic;

BEGIN

OA <= ww_OA;
ww_LT <= LT;
ww_B <= B;
ww_C <= C;
ww_D <= D;
ww_RBI <= RBI;
ww_BI_RBO <= BI_RBO;
ww_A <= A;
OB <= ww_OB;
OC <= ww_OC;
OD <= ww_OD;
OE <= ww_OE;
\OF\ <= \ww_OF\;
OG <= ww_OG;
OP <= ww_OP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X32_Y29_N23
\OA~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|81~combout\,
	devoe => ww_devoe,
	o => \OA~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\OB~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|82~8_combout\,
	devoe => ww_devoe,
	o => \OB~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\OC~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|83~combout\,
	devoe => ww_devoe,
	o => \OC~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\OD~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|84~8_combout\,
	devoe => ww_devoe,
	o => \OD~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\OE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|85~combout\,
	devoe => ww_devoe,
	o => \OE~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\OF~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|86~8_combout\,
	devoe => ww_devoe,
	o => \OF~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\OG~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|87~combout\,
	devoe => ww_devoe,
	o => \OG~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\OP~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OP~output_o\);

-- Location: IOIBUF_X0_Y23_N8
\D~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\RBI~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RBI,
	o => \RBI~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X10_Y27_N4
\inst|81~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|81~8_combout\ = (\A~input_o\ & (((!\C~input_o\)))) # (!\A~input_o\ & ((\D~input_o\) # ((\C~input_o\) # (!\RBI~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \RBI~input_o\,
	datac => \A~input_o\,
	datad => \C~input_o\,
	combout => \inst|81~8_combout\);

-- Location: LCCOMB_X10_Y27_N30
\inst|81~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|81~9_combout\ = (\inst|81~8_combout\ & ((\C~input_o\) # (\D~input_o\ $ (!\B~input_o\)))) # (!\inst|81~8_combout\ & (\D~input_o\ & (\B~input_o\ & \C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \B~input_o\,
	datac => \inst|81~8_combout\,
	datad => \C~input_o\,
	combout => \inst|81~9_combout\);

-- Location: IOIBUF_X0_Y26_N8
\LT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LT,
	o => \LT~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\BI_RBO~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BI_RBO,
	o => \BI_RBO~input_o\);

-- Location: LCCOMB_X21_Y27_N24
\inst|81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|81~combout\ = ((\inst|81~9_combout\ & \LT~input_o\)) # (!\BI_RBO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|81~9_combout\,
	datab => \LT~input_o\,
	datac => \BI_RBO~input_o\,
	combout => \inst|81~combout\);

-- Location: LCCOMB_X10_Y27_N24
\inst|82~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|82~9_combout\ = (\C~input_o\ & (\B~input_o\)) # (!\C~input_o\ & ((\B~input_o\ & (\D~input_o\)) # (!\B~input_o\ & (!\D~input_o\ & !\RBI~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \RBI~input_o\,
	combout => \inst|82~9_combout\);

-- Location: LCCOMB_X10_Y27_N26
\inst|82~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|82~10_combout\ = (\inst|82~9_combout\ & ((\D~input_o\) # ((!\A~input_o\)))) # (!\inst|82~9_combout\ & (((\A~input_o\ & \C~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \inst|82~9_combout\,
	datac => \A~input_o\,
	datad => \C~input_o\,
	combout => \inst|82~10_combout\);

-- Location: LCCOMB_X10_Y27_N8
\inst|82~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|82~8_combout\ = ((\LT~input_o\ & \inst|82~10_combout\)) # (!\BI_RBO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LT~input_o\,
	datab => \BI_RBO~input_o\,
	datac => \inst|82~10_combout\,
	combout => \inst|82~8_combout\);

-- Location: LCCOMB_X10_Y27_N18
\inst|83~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|83~4_combout\ = (!\A~input_o\ & ((\B~input_o\) # ((!\D~input_o\ & !\RBI~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \B~input_o\,
	datac => \A~input_o\,
	datad => \RBI~input_o\,
	combout => \inst|83~4_combout\);

-- Location: LCCOMB_X10_Y27_N20
\inst|83~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|83~3_combout\ = (\C~input_o\ & (\D~input_o\)) # (!\C~input_o\ & ((\inst|83~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datac => \D~input_o\,
	datad => \inst|83~4_combout\,
	combout => \inst|83~3_combout\);

-- Location: LCCOMB_X10_Y27_N6
\inst|83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|83~combout\ = ((\LT~input_o\ & \inst|83~3_combout\)) # (!\BI_RBO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LT~input_o\,
	datab => \BI_RBO~input_o\,
	datad => \inst|83~3_combout\,
	combout => \inst|83~combout\);

-- Location: LCCOMB_X10_Y27_N12
\inst|84~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|84~9_combout\ = (\A~input_o\ & (((!\C~input_o\)))) # (!\A~input_o\ & ((\C~input_o\) # ((!\D~input_o\ & !\RBI~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \RBI~input_o\,
	datac => \A~input_o\,
	datad => \C~input_o\,
	combout => \inst|84~9_combout\);

-- Location: LCCOMB_X10_Y27_N22
\inst|84~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|84~10_combout\ = (\B~input_o\ & (\A~input_o\ & !\inst|84~9_combout\)) # (!\B~input_o\ & ((\inst|84~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~input_o\,
	datac => \A~input_o\,
	datad => \inst|84~9_combout\,
	combout => \inst|84~10_combout\);

-- Location: LCCOMB_X21_Y27_N12
\inst|84~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|84~8_combout\ = ((\inst|84~10_combout\ & \LT~input_o\)) # (!\BI_RBO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|84~10_combout\,
	datab => \LT~input_o\,
	datac => \BI_RBO~input_o\,
	combout => \inst|84~8_combout\);

-- Location: LCCOMB_X10_Y27_N28
\inst|85~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|85~3_combout\ = (!\B~input_o\ & ((\C~input_o\) # ((!\D~input_o\ & !\RBI~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datac => \D~input_o\,
	datad => \RBI~input_o\,
	combout => \inst|85~3_combout\);

-- Location: LCCOMB_X10_Y27_N2
\inst|85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|85~combout\ = ((\LT~input_o\ & ((\A~input_o\) # (\inst|85~3_combout\)))) # (!\BI_RBO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LT~input_o\,
	datab => \BI_RBO~input_o\,
	datac => \A~input_o\,
	datad => \inst|85~3_combout\,
	combout => \inst|85~combout\);

-- Location: LCCOMB_X10_Y27_N0
\inst|86~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|86~9_combout\ = (\C~input_o\ & (((\A~input_o\)))) # (!\C~input_o\ & (!\D~input_o\ & ((\A~input_o\) # (!\RBI~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \RBI~input_o\,
	datac => \A~input_o\,
	datad => \C~input_o\,
	combout => \inst|86~9_combout\);

-- Location: LCCOMB_X10_Y27_N10
\inst|86~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|86~10_combout\ = (\C~input_o\ & (\B~input_o\ & \inst|86~9_combout\)) # (!\C~input_o\ & ((\B~input_o\) # (\inst|86~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \B~input_o\,
	datad => \inst|86~9_combout\,
	combout => \inst|86~10_combout\);

-- Location: LCCOMB_X10_Y27_N16
\inst|86~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|86~8_combout\ = ((\LT~input_o\ & \inst|86~10_combout\)) # (!\BI_RBO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LT~input_o\,
	datab => \BI_RBO~input_o\,
	datad => \inst|86~10_combout\,
	combout => \inst|86~8_combout\);

-- Location: LCCOMB_X10_Y27_N14
\inst|87~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|87~4_combout\ = (\B~input_o\ & (((\A~input_o\ & \C~input_o\)))) # (!\B~input_o\ & (!\D~input_o\ & ((!\C~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D~input_o\,
	datab => \B~input_o\,
	datac => \A~input_o\,
	datad => \C~input_o\,
	combout => \inst|87~4_combout\);

-- Location: LCCOMB_X21_Y27_N26
\inst|87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|87~combout\ = ((\LT~input_o\ & \inst|87~4_combout\)) # (!\BI_RBO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LT~input_o\,
	datac => \BI_RBO~input_o\,
	datad => \inst|87~4_combout\,
	combout => \inst|87~combout\);

ww_OA <= \OA~output_o\;

ww_OB <= \OB~output_o\;

ww_OC <= \OC~output_o\;

ww_OD <= \OD~output_o\;

ww_OE <= \OE~output_o\;

\ww_OF\ <= \OF~output_o\;

ww_OG <= \OG~output_o\;

ww_OP <= \OP~output_o\;
END structure;


