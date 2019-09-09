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

-- DATE "09/09/2019 21:06:05"

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

ENTITY 	BCD_adder_1D_G IS
    PORT (
	S3 : OUT std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	S2 : OUT std_logic;
	S1 : OUT std_logic;
	S0 : OUT std_logic;
	S7 : OUT std_logic;
	A7 : IN std_logic;
	B7 : IN std_logic;
	A6 : IN std_logic;
	B6 : IN std_logic;
	A5 : IN std_logic;
	B5 : IN std_logic;
	A4 : IN std_logic;
	B4 : IN std_logic;
	S6 : OUT std_logic;
	S5 : OUT std_logic;
	S4 : OUT std_logic;
	C8 : OUT std_logic
	);
END BCD_adder_1D_G;

-- Design Ports Information
-- S3	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S7	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S6	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C8	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B7	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A4	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B4	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A5	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B5	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A6	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B6	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A7	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCD_adder_1D_G IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S7 : std_logic;
SIGNAL ww_A7 : std_logic;
SIGNAL ww_B7 : std_logic;
SIGNAL ww_A6 : std_logic;
SIGNAL ww_B6 : std_logic;
SIGNAL ww_A5 : std_logic;
SIGNAL ww_B5 : std_logic;
SIGNAL ww_A4 : std_logic;
SIGNAL ww_B4 : std_logic;
SIGNAL ww_S6 : std_logic;
SIGNAL ww_S5 : std_logic;
SIGNAL ww_S4 : std_logic;
SIGNAL ww_C8 : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \S7~output_o\ : std_logic;
SIGNAL \S6~output_o\ : std_logic;
SIGNAL \S5~output_o\ : std_logic;
SIGNAL \S4~output_o\ : std_logic;
SIGNAL \C8~output_o\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst|inst|inst3|inst2~0_combout\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \inst|inst|inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst|inst3|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst|inst6~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst|inst6~1_combout\ : std_logic;
SIGNAL \inst|inst|inst2|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst2|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst|inst2|inst3|inst|inst~combout\ : std_logic;
SIGNAL \inst|inst|inst4|inst|inst~combout\ : std_logic;
SIGNAL \B7~input_o\ : std_logic;
SIGNAL \B6~input_o\ : std_logic;
SIGNAL \A6~input_o\ : std_logic;
SIGNAL \inst4|inst|inst2|inst|inst~combout\ : std_logic;
SIGNAL \A4~input_o\ : std_logic;
SIGNAL \B4~input_o\ : std_logic;
SIGNAL \inst4|inst|inst4|inst2~1_combout\ : std_logic;
SIGNAL \B5~input_o\ : std_logic;
SIGNAL \inst4|inst|inst4|inst2~0_combout\ : std_logic;
SIGNAL \A5~input_o\ : std_logic;
SIGNAL \inst4|inst|inst3|inst2~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst3|inst1|inst~combout\ : std_logic;
SIGNAL \A7~input_o\ : std_logic;
SIGNAL \inst4|inst|inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst4|inst6~0_combout\ : std_logic;
SIGNAL \inst4|inst6~1_combout\ : std_logic;
SIGNAL \inst4|inst2|inst3|inst2~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst|inst1|inst~0_combout\ : std_logic;
SIGNAL \inst4|inst2|inst|inst1|inst~combout\ : std_logic;
SIGNAL \inst4|inst2|inst2|inst1|inst~combout\ : std_logic;
SIGNAL \inst4|inst2|inst3|inst1|inst~combout\ : std_logic;
SIGNAL \inst4|inst|inst4|inst1|inst~combout\ : std_logic;

BEGIN

S3 <= ww_S3;
ww_A3 <= A3;
ww_B3 <= B3;
ww_A2 <= A2;
ww_B2 <= B2;
ww_A1 <= A1;
ww_B1 <= B1;
ww_A0 <= A0;
ww_B0 <= B0;
S2 <= ww_S2;
S1 <= ww_S1;
S0 <= ww_S0;
S7 <= ww_S7;
ww_A7 <= A7;
ww_B7 <= B7;
ww_A6 <= A6;
ww_B6 <= B6;
ww_A5 <= A5;
ww_B5 <= B5;
ww_A4 <= A4;
ww_B4 <= B4;
S6 <= ww_S6;
S5 <= ww_S5;
S4 <= ww_S4;
C8 <= ww_C8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y10_N2
\S3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst|inst1|inst~0_combout\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\S2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst2|inst1|inst~0_combout\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\S1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst3|inst|inst~combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\S0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst4|inst|inst~combout\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\S7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst|inst1|inst~combout\,
	devoe => ww_devoe,
	o => \S7~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\S6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst2|inst1|inst~combout\,
	devoe => ww_devoe,
	o => \S6~output_o\);

-- Location: IOOBUF_X1_Y29_N23
\S5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|inst3|inst1|inst~combout\,
	devoe => ww_devoe,
	o => \S5~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\S4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|inst4|inst1|inst~combout\,
	devoe => ww_devoe,
	o => \S4~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\C8~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst6~1_combout\,
	devoe => ww_devoe,
	o => \C8~output_o\);

-- Location: IOIBUF_X0_Y12_N22
\A3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\B3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\B2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: LCCOMB_X1_Y10_N24
\inst|inst|inst3|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst3|inst2~0_combout\ = (\A1~input_o\ & ((\B1~input_o\) # ((\B0~input_o\ & \A0~input_o\)))) # (!\A1~input_o\ & (\B0~input_o\ & (\A0~input_o\ & \B1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B0~input_o\,
	datac => \A0~input_o\,
	datad => \B1~input_o\,
	combout => \inst|inst|inst3|inst2~0_combout\);

-- Location: IOIBUF_X3_Y0_N22
\A2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: LCCOMB_X1_Y10_N26
\inst|inst|inst2|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst2|inst2~0_combout\ = (\B2~input_o\ & ((\inst|inst|inst3|inst2~0_combout\) # (\A2~input_o\))) # (!\B2~input_o\ & (\inst|inst|inst3|inst2~0_combout\ & \A2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \inst|inst|inst3|inst2~0_combout\,
	datad => \A2~input_o\,
	combout => \inst|inst|inst2|inst2~0_combout\);

-- Location: LCCOMB_X1_Y10_N12
\inst|inst|inst3|inst1|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst3|inst1|inst~0_combout\ = \A1~input_o\ $ (\B1~input_o\ $ (((\B0~input_o\ & \A0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B0~input_o\,
	datac => \A0~input_o\,
	datad => \B1~input_o\,
	combout => \inst|inst|inst3|inst1|inst~0_combout\);

-- Location: LCCOMB_X1_Y10_N6
\inst|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst6~0_combout\ = (\inst|inst|inst3|inst1|inst~0_combout\) # (\inst|inst|inst3|inst2~0_combout\ $ (\B2~input_o\ $ (\A2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst3|inst1|inst~0_combout\,
	datab => \inst|inst|inst3|inst2~0_combout\,
	datac => \B2~input_o\,
	datad => \A2~input_o\,
	combout => \inst|inst6~0_combout\);

-- Location: LCCOMB_X1_Y10_N0
\inst|inst2|inst|inst1|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2|inst|inst1|inst~0_combout\ = (\A3~input_o\ & (\B3~input_o\ $ (\inst|inst|inst2|inst2~0_combout\ $ (!\inst|inst6~0_combout\)))) # (!\A3~input_o\ & ((\B3~input_o\ & (\inst|inst|inst2|inst2~0_combout\ $ (!\inst|inst6~0_combout\))) # 
-- (!\B3~input_o\ & (\inst|inst|inst2|inst2~0_combout\ & !\inst|inst6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \B3~input_o\,
	datac => \inst|inst|inst2|inst2~0_combout\,
	datad => \inst|inst6~0_combout\,
	combout => \inst|inst2|inst|inst1|inst~0_combout\);

-- Location: LCCOMB_X1_Y10_N4
\inst|inst6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst6~1_combout\ = (\A3~input_o\ & ((\B3~input_o\) # ((\inst|inst|inst2|inst2~0_combout\) # (\inst|inst6~0_combout\)))) # (!\A3~input_o\ & ((\B3~input_o\ & ((\inst|inst|inst2|inst2~0_combout\) # (\inst|inst6~0_combout\))) # (!\B3~input_o\ & 
-- (\inst|inst|inst2|inst2~0_combout\ & \inst|inst6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \B3~input_o\,
	datac => \inst|inst|inst2|inst2~0_combout\,
	datad => \inst|inst6~0_combout\,
	combout => \inst|inst6~1_combout\);

-- Location: LCCOMB_X1_Y10_N18
\inst|inst|inst2|inst1|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst2|inst1|inst~0_combout\ = \B2~input_o\ $ (\inst|inst|inst3|inst2~0_combout\ $ (\A2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \inst|inst|inst3|inst2~0_combout\,
	datad => \A2~input_o\,
	combout => \inst|inst|inst2|inst1|inst~0_combout\);

-- Location: LCCOMB_X1_Y10_N14
\inst|inst2|inst2|inst1|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2|inst2|inst1|inst~0_combout\ = \inst|inst|inst2|inst1|inst~0_combout\ $ (((!\inst|inst|inst3|inst1|inst~0_combout\ & \inst|inst6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst3|inst1|inst~0_combout\,
	datac => \inst|inst6~1_combout\,
	datad => \inst|inst|inst2|inst1|inst~0_combout\,
	combout => \inst|inst2|inst2|inst1|inst~0_combout\);

-- Location: LCCOMB_X1_Y10_N16
\inst|inst2|inst3|inst|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst2|inst3|inst|inst~combout\ = \inst|inst|inst3|inst1|inst~0_combout\ $ (\inst|inst6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst3|inst1|inst~0_combout\,
	datac => \inst|inst6~1_combout\,
	combout => \inst|inst2|inst3|inst|inst~combout\);

-- Location: LCCOMB_X1_Y10_N2
\inst|inst|inst4|inst|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|inst4|inst|inst~combout\ = \B0~input_o\ $ (\A0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B0~input_o\,
	datac => \A0~input_o\,
	combout => \inst|inst|inst4|inst|inst~combout\);

-- Location: IOIBUF_X0_Y21_N1
\B7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B7,
	o => \B7~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\B6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B6,
	o => \B6~input_o\);

-- Location: IOIBUF_X0_Y22_N8
\A6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A6,
	o => \A6~input_o\);

-- Location: LCCOMB_X1_Y21_N24
\inst4|inst|inst2|inst|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst|inst~combout\ = \B6~input_o\ $ (\A6~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B6~input_o\,
	datac => \A6~input_o\,
	combout => \inst4|inst|inst2|inst|inst~combout\);

-- Location: IOIBUF_X0_Y27_N1
\A4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A4,
	o => \A4~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\B4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B4,
	o => \B4~input_o\);

-- Location: LCCOMB_X1_Y21_N10
\inst4|inst|inst4|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst|inst4|inst2~1_combout\ = (\B4~input_o\ & ((\A4~input_o\) # (\inst|inst6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4~input_o\,
	datac => \B4~input_o\,
	datad => \inst|inst6~1_combout\,
	combout => \inst4|inst|inst4|inst2~1_combout\);

-- Location: IOIBUF_X0_Y21_N8
\B5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B5,
	o => \B5~input_o\);

-- Location: LCCOMB_X1_Y21_N8
\inst4|inst|inst4|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst|inst4|inst2~0_combout\ = (\A4~input_o\ & \inst|inst6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4~input_o\,
	datad => \inst|inst6~1_combout\,
	combout => \inst4|inst|inst4|inst2~0_combout\);

-- Location: IOIBUF_X0_Y23_N8
\A5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A5,
	o => \A5~input_o\);

-- Location: LCCOMB_X1_Y21_N28
\inst4|inst|inst3|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst|inst3|inst2~0_combout\ = (\B5~input_o\ & ((\inst4|inst|inst4|inst2~1_combout\) # ((\inst4|inst|inst4|inst2~0_combout\) # (\A5~input_o\)))) # (!\B5~input_o\ & (\A5~input_o\ & ((\inst4|inst|inst4|inst2~1_combout\) # 
-- (\inst4|inst|inst4|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst4|inst2~1_combout\,
	datab => \B5~input_o\,
	datac => \inst4|inst|inst4|inst2~0_combout\,
	datad => \A5~input_o\,
	combout => \inst4|inst|inst3|inst2~0_combout\);

-- Location: LCCOMB_X1_Y21_N18
\inst4|inst|inst3|inst1|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst|inst3|inst1|inst~combout\ = \B5~input_o\ $ (\A5~input_o\ $ (((\inst4|inst|inst4|inst2~1_combout\) # (\inst4|inst|inst4|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst4|inst2~1_combout\,
	datab => \B5~input_o\,
	datac => \inst4|inst|inst4|inst2~0_combout\,
	datad => \A5~input_o\,
	combout => \inst4|inst|inst3|inst1|inst~combout\);

-- Location: IOIBUF_X0_Y27_N22
\A7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A7,
	o => \A7~input_o\);

-- Location: LCCOMB_X1_Y21_N22
\inst4|inst|inst2|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst|inst2|inst2~0_combout\ = (\B6~input_o\ & ((\A6~input_o\) # (\inst4|inst|inst3|inst2~0_combout\))) # (!\B6~input_o\ & (\A6~input_o\ & \inst4|inst|inst3|inst2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B6~input_o\,
	datac => \A6~input_o\,
	datad => \inst4|inst|inst3|inst2~0_combout\,
	combout => \inst4|inst|inst2|inst2~0_combout\);

-- Location: LCCOMB_X1_Y21_N20
\inst4|inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst6~0_combout\ = (\inst4|inst|inst3|inst1|inst~combout\) # (\B6~input_o\ $ (\inst4|inst|inst3|inst2~0_combout\ $ (\A6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B6~input_o\,
	datab => \inst4|inst|inst3|inst2~0_combout\,
	datac => \A6~input_o\,
	datad => \inst4|inst|inst3|inst1|inst~combout\,
	combout => \inst4|inst6~0_combout\);

-- Location: LCCOMB_X1_Y21_N16
\inst4|inst6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst6~1_combout\ = (\B7~input_o\ & ((\A7~input_o\) # ((\inst4|inst|inst2|inst2~0_combout\) # (\inst4|inst6~0_combout\)))) # (!\B7~input_o\ & ((\A7~input_o\ & ((\inst4|inst|inst2|inst2~0_combout\) # (\inst4|inst6~0_combout\))) # (!\A7~input_o\ & 
-- (\inst4|inst|inst2|inst2~0_combout\ & \inst4|inst6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B7~input_o\,
	datab => \A7~input_o\,
	datac => \inst4|inst|inst2|inst2~0_combout\,
	datad => \inst4|inst6~0_combout\,
	combout => \inst4|inst6~1_combout\);

-- Location: LCCOMB_X1_Y21_N26
\inst4|inst2|inst3|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst3|inst2~0_combout\ = (\inst|inst6~1_combout\ & ((\inst4|inst|inst3|inst1|inst~combout\) # (\inst4|inst6~1_combout\))) # (!\inst|inst6~1_combout\ & (\inst4|inst|inst3|inst1|inst~combout\ & \inst4|inst6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6~1_combout\,
	datab => \inst4|inst|inst3|inst1|inst~combout\,
	datad => \inst4|inst6~1_combout\,
	combout => \inst4|inst2|inst3|inst2~0_combout\);

-- Location: LCCOMB_X1_Y21_N4
\inst4|inst2|inst2|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst2|inst2~0_combout\ = (\inst4|inst2|inst3|inst2~0_combout\ & ((\inst4|inst6~1_combout\) # (\inst4|inst|inst2|inst|inst~combout\ $ (\inst4|inst|inst3|inst2~0_combout\)))) # (!\inst4|inst2|inst3|inst2~0_combout\ & (\inst4|inst6~1_combout\ & 
-- (\inst4|inst|inst2|inst|inst~combout\ $ (\inst4|inst|inst3|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst2|inst|inst~combout\,
	datab => \inst4|inst|inst3|inst2~0_combout\,
	datac => \inst4|inst2|inst3|inst2~0_combout\,
	datad => \inst4|inst6~1_combout\,
	combout => \inst4|inst2|inst2|inst2~0_combout\);

-- Location: LCCOMB_X1_Y21_N6
\inst4|inst|inst|inst1|inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst|inst|inst1|inst~0_combout\ = \A7~input_o\ $ (((\B6~input_o\ & ((\A6~input_o\) # (\inst4|inst|inst3|inst2~0_combout\))) # (!\B6~input_o\ & (\A6~input_o\ & \inst4|inst|inst3|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B6~input_o\,
	datab => \A7~input_o\,
	datac => \A6~input_o\,
	datad => \inst4|inst|inst3|inst2~0_combout\,
	combout => \inst4|inst|inst|inst1|inst~0_combout\);

-- Location: LCCOMB_X1_Y21_N14
\inst4|inst2|inst|inst1|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst|inst1|inst~combout\ = \inst|inst6~1_combout\ $ (\B7~input_o\ $ (\inst4|inst2|inst2|inst2~0_combout\ $ (\inst4|inst|inst|inst1|inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6~1_combout\,
	datab => \B7~input_o\,
	datac => \inst4|inst2|inst2|inst2~0_combout\,
	datad => \inst4|inst|inst|inst1|inst~0_combout\,
	combout => \inst4|inst2|inst|inst1|inst~combout\);

-- Location: LCCOMB_X1_Y21_N0
\inst4|inst2|inst2|inst1|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst2|inst1|inst~combout\ = \inst4|inst|inst2|inst|inst~combout\ $ (\inst4|inst|inst3|inst2~0_combout\ $ (\inst4|inst2|inst3|inst2~0_combout\ $ (\inst4|inst6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst2|inst|inst~combout\,
	datab => \inst4|inst|inst3|inst2~0_combout\,
	datac => \inst4|inst2|inst3|inst2~0_combout\,
	datad => \inst4|inst6~1_combout\,
	combout => \inst4|inst2|inst2|inst1|inst~combout\);

-- Location: LCCOMB_X1_Y21_N2
\inst4|inst2|inst3|inst1|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst3|inst1|inst~combout\ = \inst|inst6~1_combout\ $ (\inst4|inst|inst3|inst1|inst~combout\ $ (\inst4|inst6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst6~1_combout\,
	datab => \inst4|inst|inst3|inst1|inst~combout\,
	datad => \inst4|inst6~1_combout\,
	combout => \inst4|inst2|inst3|inst1|inst~combout\);

-- Location: LCCOMB_X1_Y21_N12
\inst4|inst|inst4|inst1|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inst|inst4|inst1|inst~combout\ = \A4~input_o\ $ (\B4~input_o\ $ (\inst|inst6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4~input_o\,
	datac => \B4~input_o\,
	datad => \inst|inst6~1_combout\,
	combout => \inst4|inst|inst4|inst1|inst~combout\);

ww_S3 <= \S3~output_o\;

ww_S2 <= \S2~output_o\;

ww_S1 <= \S1~output_o\;

ww_S0 <= \S0~output_o\;

ww_S7 <= \S7~output_o\;

ww_S6 <= \S6~output_o\;

ww_S5 <= \S5~output_o\;

ww_S4 <= \S4~output_o\;

ww_C8 <= \C8~output_o\;
END structure;


