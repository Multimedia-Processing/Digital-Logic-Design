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

-- DATE "10/17/2019 22:55:14"

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

ENTITY 	BCD_to_decimal_decoder IS
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
	Y9 : OUT std_logic
	);
END BCD_to_decimal_decoder;

-- Design Ports Information
-- Y0	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y3	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y4	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y5	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y6	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y7	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y8	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y9	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCD_to_decimal_decoder IS
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
SIGNAL \B~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \inst9~combout\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y7_N9
\Y0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => \Y0~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\Y1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~combout\,
	devoe => ww_devoe,
	o => \Y1~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\Y2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~combout\,
	devoe => ww_devoe,
	o => \Y2~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\Y3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~combout\,
	devoe => ww_devoe,
	o => \Y3~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\Y4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~combout\,
	devoe => ww_devoe,
	o => \Y4~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\Y5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~combout\,
	devoe => ww_devoe,
	o => \Y5~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\Y6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~combout\,
	devoe => ww_devoe,
	o => \Y6~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\Y7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~combout\,
	devoe => ww_devoe,
	o => \Y7~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\Y8~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~combout\,
	devoe => ww_devoe,
	o => \Y8~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\Y9~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~combout\,
	devoe => ww_devoe,
	o => \Y9~output_o\);

-- Location: IOIBUF_X0_Y4_N22
\B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\D~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X1_Y4_N0
inst : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~combout\ = (!\B~input_o\ & (!\C~input_o\ & (!\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst~combout\);

-- Location: LCCOMB_X1_Y4_N10
inst1 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (!\B~input_o\ & (!\C~input_o\ & (\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst1~combout\);

-- Location: LCCOMB_X1_Y4_N12
inst2 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~combout\ = (!\B~input_o\ & (\C~input_o\ & (!\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst2~combout\);

-- Location: LCCOMB_X1_Y4_N30
inst3 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3~combout\ = (!\B~input_o\ & (\C~input_o\ & (\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst3~combout\);

-- Location: LCCOMB_X1_Y4_N16
inst4 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (\B~input_o\ & (!\C~input_o\ & (!\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst4~combout\);

-- Location: LCCOMB_X1_Y4_N26
inst5 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~combout\ = (\B~input_o\ & (!\C~input_o\ & (\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst5~combout\);

-- Location: LCCOMB_X1_Y4_N4
inst6 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6~combout\ = (\B~input_o\ & (\C~input_o\ & (!\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst6~combout\);

-- Location: LCCOMB_X1_Y4_N14
inst7 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7~combout\ = (\B~input_o\ & (\C~input_o\ & (\D~input_o\ & !\A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst7~combout\);

-- Location: LCCOMB_X1_Y4_N24
inst8 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8~combout\ = (!\B~input_o\ & (!\C~input_o\ & (!\D~input_o\ & \A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst8~combout\);

-- Location: LCCOMB_X1_Y4_N2
inst9 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9~combout\ = (!\B~input_o\ & (!\C~input_o\ & (\D~input_o\ & \A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \C~input_o\,
	datac => \D~input_o\,
	datad => \A~input_o\,
	combout => \inst9~combout\);

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
END structure;


