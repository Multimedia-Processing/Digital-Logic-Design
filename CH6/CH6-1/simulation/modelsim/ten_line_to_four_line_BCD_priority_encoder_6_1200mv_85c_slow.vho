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

-- DATE "10/17/2019 09:29:37"

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

ENTITY 	ten_line_to_four_line_BCD_priority_encoder IS
    PORT (
	A : OUT std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I6 : IN std_logic;
	I5 : IN std_logic;
	I4 : IN std_logic;
	I9 : IN std_logic;
	I8 : IN std_logic;
	I7 : IN std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic
	);
END ten_line_to_four_line_BCD_priority_encoder;

-- Design Ports Information
-- A	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I6	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I4	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I3	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I5	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I7	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I9	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I8	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ten_line_to_four_line_BCD_priority_encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_I2 : std_logic;
SIGNAL ww_I3 : std_logic;
SIGNAL ww_I6 : std_logic;
SIGNAL ww_I5 : std_logic;
SIGNAL ww_I4 : std_logic;
SIGNAL ww_I9 : std_logic;
SIGNAL ww_I8 : std_logic;
SIGNAL ww_I7 : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \I7~input_o\ : std_logic;
SIGNAL \I8~input_o\ : std_logic;
SIGNAL \I9~input_o\ : std_logic;
SIGNAL \I3~input_o\ : std_logic;
SIGNAL \I6~input_o\ : std_logic;
SIGNAL \I5~input_o\ : std_logic;
SIGNAL \I4~input_o\ : std_logic;
SIGNAL \inst|7~2_combout\ : std_logic;
SIGNAL \inst|7~3_combout\ : std_logic;
SIGNAL \I2~input_o\ : std_logic;
SIGNAL \inst|8~4_combout\ : std_logic;
SIGNAL \inst|67~combout\ : std_logic;
SIGNAL \inst|8~5_combout\ : std_logic;
SIGNAL \inst|9~0_combout\ : std_logic;
SIGNAL \inst|9~1_combout\ : std_logic;

BEGIN

A <= ww_A;
ww_I2 <= I2;
ww_I3 <= I3;
ww_I6 <= I6;
ww_I5 <= I5;
ww_I4 <= I4;
ww_I9 <= I9;
ww_I8 <= I8;
ww_I7 <= I7;
B <= ww_B;
C <= ww_C;
D <= ww_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X1_Y29_N23
\A~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|7~3_combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\B~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|8~5_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|9~1_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\D~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|67~combout\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOIBUF_X0_Y13_N22
\I7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I7,
	o => \I7~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\I8~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I8,
	o => \I8~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\I9~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I9,
	o => \I9~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\I3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I3,
	o => \I3~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\I6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I6,
	o => \I6~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\I5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I5,
	o => \I5~input_o\);

-- Location: IOIBUF_X23_Y29_N15
\I4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I4,
	o => \I4~input_o\);

-- Location: LCCOMB_X1_Y20_N0
\inst|7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|7~2_combout\ = (\I6~input_o\ & (((!\I3~input_o\ & \I4~input_o\)) # (!\I5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3~input_o\,
	datab => \I6~input_o\,
	datac => \I5~input_o\,
	datad => \I4~input_o\,
	combout => \inst|7~2_combout\);

-- Location: LCCOMB_X1_Y20_N2
\inst|7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|7~3_combout\ = ((\I8~input_o\ & ((\inst|7~2_combout\) # (!\I7~input_o\)))) # (!\I9~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I7~input_o\,
	datab => \I8~input_o\,
	datac => \I9~input_o\,
	datad => \inst|7~2_combout\,
	combout => \inst|7~3_combout\);

-- Location: IOIBUF_X0_Y23_N8
\I2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2,
	o => \I2~input_o\);

-- Location: LCCOMB_X1_Y20_N12
\inst|8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|8~4_combout\ = (\I5~input_o\ & (\I4~input_o\ & ((!\I2~input_o\) # (!\I3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3~input_o\,
	datab => \I2~input_o\,
	datac => \I5~input_o\,
	datad => \I4~input_o\,
	combout => \inst|8~4_combout\);

-- Location: LCCOMB_X1_Y20_N18
\inst|67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|67~combout\ = (!\I8~input_o\) # (!\I9~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I9~input_o\,
	datad => \I8~input_o\,
	combout => \inst|67~combout\);

-- Location: LCCOMB_X1_Y20_N28
\inst|8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|8~5_combout\ = (!\inst|67~combout\ & ((\inst|8~4_combout\) # ((!\I7~input_o\) # (!\I6~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|8~4_combout\,
	datab => \inst|67~combout\,
	datac => \I6~input_o\,
	datad => \I7~input_o\,
	combout => \inst|8~5_combout\);

-- Location: LCCOMB_X1_Y20_N6
\inst|9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|9~0_combout\ = (\I7~input_o\ & \I6~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I7~input_o\,
	datad => \I6~input_o\,
	combout => \inst|9~0_combout\);

-- Location: LCCOMB_X1_Y20_N16
\inst|9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|9~1_combout\ = (!\inst|67~combout\ & (((!\I4~input_o\) # (!\I5~input_o\)) # (!\inst|9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|9~0_combout\,
	datab => \inst|67~combout\,
	datac => \I5~input_o\,
	datad => \I4~input_o\,
	combout => \inst|9~1_combout\);

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;
END structure;


