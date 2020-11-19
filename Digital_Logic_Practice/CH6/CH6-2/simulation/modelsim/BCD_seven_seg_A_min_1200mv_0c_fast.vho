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

-- DATE "01/09/2020 10:29:03"

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

ENTITY 	BCD_seven_seg_A IS
    PORT (
	G : OUT std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	F : OUT std_logic;
	E : OUT std_logic;
	D : OUT std_logic;
	C : OUT std_logic;
	B : OUT std_logic;
	A : OUT std_logic
	);
END BCD_seven_seg_A;

-- Design Ports Information
-- G	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCD_seven_seg_A IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \inst17~combout\ : std_logic;
SIGNAL \inst22~0_combout\ : std_logic;
SIGNAL \inst19~0_combout\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst23~0_combout\ : std_logic;
SIGNAL \inst21~combout\ : std_logic;

BEGIN

G <= ww_G;
ww_B0 <= B0;
ww_B1 <= B1;
ww_B2 <= B2;
ww_B3 <= B3;
F <= ww_F;
E <= ww_E;
D <= ww_D;
C <= ww_C;
B <= ww_B;
A <= ww_A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y10_N9
\G~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~0_combout\,
	devoe => ww_devoe,
	o => \G~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\F~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17~combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\E~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22~0_combout\,
	devoe => ww_devoe,
	o => \E~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\D~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19~0_combout\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~0_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\B~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23~0_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\A~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21~combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\B3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\B2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: IOIBUF_X41_Y17_N8
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: LCCOMB_X1_Y13_N8
\inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = (!\B3~input_o\ & ((\B2~input_o\ & (\B0~input_o\ & \B1~input_o\)) # (!\B2~input_o\ & ((!\B1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \B0~input_o\,
	datac => \B2~input_o\,
	datad => \B1~input_o\,
	combout => \inst14~0_combout\);

-- Location: LCCOMB_X1_Y13_N18
inst17 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17~combout\ = (!\B3~input_o\ & ((\B0~input_o\ & ((\B1~input_o\) # (!\B2~input_o\))) # (!\B0~input_o\ & (!\B2~input_o\ & \B1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \B0~input_o\,
	datac => \B2~input_o\,
	datad => \B1~input_o\,
	combout => \inst17~combout\);

-- Location: LCCOMB_X1_Y13_N20
\inst22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst22~0_combout\ = (\B1~input_o\ & (!\B3~input_o\ & (\B0~input_o\))) # (!\B1~input_o\ & ((\B2~input_o\ & (!\B3~input_o\)) # (!\B2~input_o\ & ((\B0~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \B0~input_o\,
	datac => \B2~input_o\,
	datad => \B1~input_o\,
	combout => \inst22~0_combout\);

-- Location: LCCOMB_X1_Y13_N6
\inst19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19~0_combout\ = (\B2~input_o\ & (!\B3~input_o\ & (\B0~input_o\ $ (!\B1~input_o\)))) # (!\B2~input_o\ & (((\B0~input_o\ & !\B1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \B0~input_o\,
	datac => \B2~input_o\,
	datad => \B1~input_o\,
	combout => \inst19~0_combout\);

-- Location: LCCOMB_X1_Y13_N16
\inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (!\B3~input_o\ & (!\B0~input_o\ & (!\B2~input_o\ & \B1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \B0~input_o\,
	datac => \B2~input_o\,
	datad => \B1~input_o\,
	combout => \inst2~0_combout\);

-- Location: LCCOMB_X1_Y13_N10
\inst23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23~0_combout\ = (!\B3~input_o\ & (\B2~input_o\ & (\B0~input_o\ $ (\B1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \B0~input_o\,
	datac => \B2~input_o\,
	datad => \B1~input_o\,
	combout => \inst23~0_combout\);

-- Location: LCCOMB_X1_Y13_N12
inst21 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21~combout\ = (!\B3~input_o\ & ((\B0~input_o\ & (!\B2~input_o\ & !\B1~input_o\)) # (!\B0~input_o\ & (\B2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3~input_o\,
	datab => \B0~input_o\,
	datac => \B2~input_o\,
	datad => \B1~input_o\,
	combout => \inst21~combout\);

ww_G <= \G~output_o\;

ww_F <= \F~output_o\;

ww_E <= \E~output_o\;

ww_D <= \D~output_o\;

ww_C <= \C~output_o\;

ww_B <= \B~output_o\;

ww_A <= \A~output_o\;
END structure;


