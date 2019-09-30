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

-- DATE "10/01/2019 00:13:13"

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

ENTITY 	Ten_line_to_four_line_BCD_encoder IS
    PORT (
	A : OUT std_logic;
	I1 : IN std_logic;
	I5 : IN std_logic;
	I3 : IN std_logic;
	I9 : IN std_logic;
	I7 : IN std_logic;
	B : OUT std_logic;
	I2 : IN std_logic;
	I6 : IN std_logic;
	C : OUT std_logic;
	I4 : IN std_logic;
	D : OUT std_logic;
	I8 : IN std_logic;
	I0 : IN std_logic
	);
END Ten_line_to_four_line_BCD_encoder;

-- Design Ports Information
-- A	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I9	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I5	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I7	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I3	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I6	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I4	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I8	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Ten_line_to_four_line_BCD_encoder IS
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
SIGNAL ww_I1 : std_logic;
SIGNAL ww_I5 : std_logic;
SIGNAL ww_I3 : std_logic;
SIGNAL ww_I9 : std_logic;
SIGNAL ww_I7 : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_I2 : std_logic;
SIGNAL ww_I6 : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_I4 : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_I8 : std_logic;
SIGNAL ww_I0 : std_logic;
SIGNAL \I0~input_o\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \I9~input_o\ : std_logic;
SIGNAL \I1~input_o\ : std_logic;
SIGNAL \I3~input_o\ : std_logic;
SIGNAL \I7~input_o\ : std_logic;
SIGNAL \I5~input_o\ : std_logic;
SIGNAL \or1~0_combout\ : std_logic;
SIGNAL \or1~combout\ : std_logic;
SIGNAL \I6~input_o\ : std_logic;
SIGNAL \I2~input_o\ : std_logic;
SIGNAL \or2~0_combout\ : std_logic;
SIGNAL \I4~input_o\ : std_logic;
SIGNAL \or3~0_combout\ : std_logic;
SIGNAL \I8~input_o\ : std_logic;
SIGNAL \or4~combout\ : std_logic;

BEGIN

A <= ww_A;
ww_I1 <= I1;
ww_I5 <= I5;
ww_I3 <= I3;
ww_I9 <= I9;
ww_I7 <= I7;
B <= ww_B;
ww_I2 <= I2;
ww_I6 <= I6;
C <= ww_C;
ww_I4 <= I4;
D <= ww_D;
ww_I8 <= I8;
ww_I0 <= I0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y26_N23
\A~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \or1~combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\B~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \or2~0_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\C~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \or3~0_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\D~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \or4~combout\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\I9~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I9,
	o => \I9~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\I1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1,
	o => \I1~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\I3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I3,
	o => \I3~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\I7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I7,
	o => \I7~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\I5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I5,
	o => \I5~input_o\);

-- Location: LCCOMB_X1_Y27_N0
\or1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \or1~0_combout\ = (\I1~input_o\) # ((\I3~input_o\) # ((\I7~input_o\) # (\I5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I1~input_o\,
	datab => \I3~input_o\,
	datac => \I7~input_o\,
	datad => \I5~input_o\,
	combout => \or1~0_combout\);

-- Location: LCCOMB_X1_Y27_N2
or1 : cycloneiii_lcell_comb
-- Equation(s):
-- \or1~combout\ = (\I9~input_o\) # (\or1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I9~input_o\,
	datad => \or1~0_combout\,
	combout => \or1~combout\);

-- Location: IOIBUF_X0_Y23_N8
\I6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I6,
	o => \I6~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\I2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2,
	o => \I2~input_o\);

-- Location: LCCOMB_X1_Y27_N28
\or2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \or2~0_combout\ = (\I6~input_o\) # ((\I3~input_o\) # ((\I7~input_o\) # (\I2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I6~input_o\,
	datab => \I3~input_o\,
	datac => \I7~input_o\,
	datad => \I2~input_o\,
	combout => \or2~0_combout\);

-- Location: IOIBUF_X0_Y22_N15
\I4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I4,
	o => \I4~input_o\);

-- Location: LCCOMB_X1_Y27_N14
\or3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \or3~0_combout\ = (\I6~input_o\) # ((\I7~input_o\) # ((\I4~input_o\) # (\I5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I6~input_o\,
	datab => \I7~input_o\,
	datac => \I4~input_o\,
	datad => \I5~input_o\,
	combout => \or3~0_combout\);

-- Location: IOIBUF_X0_Y27_N1
\I8~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I8,
	o => \I8~input_o\);

-- Location: LCCOMB_X1_Y27_N16
or4 : cycloneiii_lcell_comb
-- Equation(s):
-- \or4~combout\ = (\I9~input_o\) # (\I8~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I9~input_o\,
	datad => \I8~input_o\,
	combout => \or4~combout\);

-- Location: IOIBUF_X0_Y25_N1
\I0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0,
	o => \I0~input_o\);

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;
END structure;


