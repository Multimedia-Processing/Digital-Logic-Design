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

-- DATE "08/26/2019 23:13:45"

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

ENTITY 	BCD_adder_7483 IS
    PORT (
	S0 : OUT std_logic;
	B3 : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	B0 : IN std_logic;
	B1 : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A3 : IN std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	C4 : OUT std_logic
	);
END BCD_adder_7483;

-- Design Ports Information
-- S0	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C4	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCD_adder_7483 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_C4 : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \C4~output_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \inst|27~0_combout\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \inst|29~0_combout\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \inst|51~1_combout\ : std_logic;
SIGNAL \inst|1~0_combout\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \inst|51~0_combout\ : std_logic;
SIGNAL \inst|44~0_combout\ : std_logic;
SIGNAL \inst1|45~0_combout\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;
SIGNAL \inst1|29~0_combout\ : std_logic;
SIGNAL \inst1|51~0_combout\ : std_logic;
SIGNAL \inst1|44~0_combout\ : std_logic;
SIGNAL \inst1|45~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_45~1_combout\ : std_logic;

BEGIN

S0 <= ww_S0;
ww_B3 <= B3;
ww_A0 <= A0;
ww_A1 <= A1;
ww_B0 <= B0;
ww_B1 <= B1;
ww_A2 <= A2;
ww_B2 <= B2;
ww_A3 <= A3;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
C4 <= ww_C4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst1|ALT_INV_45~1_combout\ <= NOT \inst1|45~1_combout\;

-- Location: IOOBUF_X0_Y27_N9
\S0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|27~0_combout\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\S1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|29~0_combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\S2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|44~0_combout\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\S3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_45~1_combout\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\C4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~0_combout\,
	devoe => ww_devoe,
	o => \C4~output_o\);

-- Location: IOIBUF_X0_Y22_N15
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: LCCOMB_X1_Y25_N0
\inst|27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|27~0_combout\ = \B0~input_o\ $ (\A0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B0~input_o\,
	datad => \A0~input_o\,
	combout => \inst|27~0_combout\);

-- Location: IOIBUF_X0_Y27_N22
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: LCCOMB_X1_Y25_N26
\inst|29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|29~0_combout\ = \B1~input_o\ $ (\A1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1~input_o\,
	datac => \A1~input_o\,
	combout => \inst|29~0_combout\);

-- Location: IOIBUF_X0_Y25_N15
\A3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\A2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\B2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: LCCOMB_X1_Y25_N2
\inst|51~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|51~1_combout\ = (\A1~input_o\ & ((\B1~input_o\) # ((\B0~input_o\ & \A0~input_o\)))) # (!\A1~input_o\ & (\B0~input_o\ & (\B1~input_o\ & \A0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B0~input_o\,
	datac => \B1~input_o\,
	datad => \A0~input_o\,
	combout => \inst|51~1_combout\);

-- Location: LCCOMB_X1_Y25_N28
\inst|1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|1~0_combout\ = (\A2~input_o\ & (!\B2~input_o\ & !\inst|51~1_combout\)) # (!\A2~input_o\ & ((!\inst|51~1_combout\) # (!\B2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~input_o\,
	datac => \B2~input_o\,
	datad => \inst|51~1_combout\,
	combout => \inst|1~0_combout\);

-- Location: IOIBUF_X0_Y25_N22
\B3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: LCCOMB_X1_Y25_N20
\inst|51~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|51~0_combout\ = (\A1~input_o\ & (!\B1~input_o\ & ((!\A0~input_o\) # (!\B0~input_o\)))) # (!\A1~input_o\ & (((!\A0~input_o\) # (!\B1~input_o\)) # (!\B0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B0~input_o\,
	datac => \B1~input_o\,
	datad => \A0~input_o\,
	combout => \inst|51~0_combout\);

-- Location: LCCOMB_X1_Y25_N22
\inst|44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|44~0_combout\ = \A2~input_o\ $ (\B2~input_o\ $ (\inst|51~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2~input_o\,
	datac => \B2~input_o\,
	datad => \inst|51~0_combout\,
	combout => \inst|44~0_combout\);

-- Location: LCCOMB_X1_Y25_N16
\inst1|45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|45~0_combout\ = (\inst|29~0_combout\ $ (((\B0~input_o\ & \A0~input_o\)))) # (!\inst|44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|44~0_combout\,
	datab => \B0~input_o\,
	datac => \inst|29~0_combout\,
	datad => \A0~input_o\,
	combout => \inst1|45~0_combout\);

-- Location: LCCOMB_X1_Y25_N14
\inst6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = (\A3~input_o\ & (((\B3~input_o\) # (\inst1|45~0_combout\)) # (!\inst|1~0_combout\))) # (!\A3~input_o\ & ((\inst|1~0_combout\ & (\B3~input_o\ & \inst1|45~0_combout\)) # (!\inst|1~0_combout\ & ((\B3~input_o\) # (\inst1|45~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \inst|1~0_combout\,
	datac => \B3~input_o\,
	datad => \inst1|45~0_combout\,
	combout => \inst6~0_combout\);

-- Location: LCCOMB_X1_Y25_N24
\inst1|29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|29~0_combout\ = \inst|29~0_combout\ $ (\inst6~0_combout\ $ (((\A0~input_o\ & \B0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0~input_o\,
	datab => \B0~input_o\,
	datac => \inst|29~0_combout\,
	datad => \inst6~0_combout\,
	combout => \inst1|29~0_combout\);

-- Location: LCCOMB_X1_Y25_N10
\inst1|51~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|51~0_combout\ = \A1~input_o\ $ (\B1~input_o\ $ (((!\A0~input_o\) # (!\B0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1~input_o\,
	datab => \B0~input_o\,
	datac => \B1~input_o\,
	datad => \A0~input_o\,
	combout => \inst1|51~0_combout\);

-- Location: LCCOMB_X1_Y25_N12
\inst1|44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|44~0_combout\ = \inst|44~0_combout\ $ (((!\inst6~0_combout\) # (!\inst1|51~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|51~0_combout\,
	datac => \inst|44~0_combout\,
	datad => \inst6~0_combout\,
	combout => \inst1|44~0_combout\);

-- Location: LCCOMB_X1_Y25_N30
\inst1|45~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|45~1_combout\ = (\A3~input_o\ & (\inst|1~0_combout\ $ (\B3~input_o\ $ (!\inst1|45~0_combout\)))) # (!\A3~input_o\ & ((\inst|1~0_combout\ & ((\inst1|45~0_combout\) # (!\B3~input_o\))) # (!\inst|1~0_combout\ & (\B3~input_o\ $ 
-- (\inst1|45~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \inst|1~0_combout\,
	datac => \B3~input_o\,
	datad => \inst1|45~0_combout\,
	combout => \inst1|45~1_combout\);

ww_S0 <= \S0~output_o\;

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;

ww_C4 <= \C4~output_o\;
END structure;


