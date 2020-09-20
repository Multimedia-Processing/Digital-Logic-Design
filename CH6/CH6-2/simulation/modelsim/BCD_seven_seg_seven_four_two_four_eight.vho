-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.2 Build 153 07/15/2015 SJ Web Edition"

-- DATE "09/20/2020 23:45:14"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BCD_seven_seg_seven_four_two_four_eight IS
    PORT (
	OA : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	RBI : IN std_logic;
	D : IN std_logic;
	C : IN std_logic;
	LT : IN std_logic;
	BI_RBO : IN std_logic;
	OB : OUT std_logic;
	OC : OUT std_logic;
	OD : OUT std_logic;
	OE : OUT std_logic;
	\OF\ : OUT std_logic;
	OG : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic
	);
END BCD_seven_seg_seven_four_two_four_eight;

-- Design Ports Information
-- OA	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OB	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OC	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OD	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OE	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OF	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OG	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BI_RBO	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RBI	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LT	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCD_seven_seg_seven_four_two_four_eight IS
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
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_RBI : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_LT : std_logic;
SIGNAL ww_BI_RBO : std_logic;
SIGNAL ww_OB : std_logic;
SIGNAL ww_OC : std_logic;
SIGNAL ww_OD : std_logic;
SIGNAL ww_OE : std_logic;
SIGNAL \ww_OF\ : std_logic;
SIGNAL ww_OG : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_S4 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \BI_RBO~input_o\ : std_logic;
SIGNAL \RBI~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \inst|57~0_combout\ : std_logic;
SIGNAL \LT~input_o\ : std_logic;
SIGNAL \inst|94~0_combout\ : std_logic;
SIGNAL \inst|93~0_combout\ : std_logic;
SIGNAL \inst|92~0_combout\ : std_logic;
SIGNAL \inst|91~0_combout\ : std_logic;
SIGNAL \inst|90~0_combout\ : std_logic;
SIGNAL \inst|89~0_combout\ : std_logic;
SIGNAL \inst|89~1_combout\ : std_logic;
SIGNAL \inst|88~0_combout\ : std_logic;
SIGNAL \ALT_INV_LT~input_o\ : std_logic;
SIGNAL \ALT_INV_RBI~input_o\ : std_logic;
SIGNAL \ALT_INV_BI_RBO~input_o\ : std_logic;
SIGNAL \ALT_INV_D~input_o\ : std_logic;
SIGNAL \ALT_INV_C~input_o\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_89~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_90~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_57~0_combout\ : std_logic;

BEGIN

OA <= ww_OA;
ww_A <= A;
ww_B <= B;
ww_RBI <= RBI;
ww_D <= D;
ww_C <= C;
ww_LT <= LT;
ww_BI_RBO <= BI_RBO;
OB <= ww_OB;
OC <= ww_OC;
OD <= ww_OD;
OE <= ww_OE;
\OF\ <= \ww_OF\;
OG <= ww_OG;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
S4 <= ww_S4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_LT~input_o\ <= NOT \LT~input_o\;
\ALT_INV_RBI~input_o\ <= NOT \RBI~input_o\;
\ALT_INV_BI_RBO~input_o\ <= NOT \BI_RBO~input_o\;
\ALT_INV_D~input_o\ <= NOT \D~input_o\;
\ALT_INV_C~input_o\ <= NOT \C~input_o\;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;
\inst|ALT_INV_89~0_combout\ <= NOT \inst|89~0_combout\;
\inst|ALT_INV_90~0_combout\ <= NOT \inst|90~0_combout\;
\inst|ALT_INV_57~0_combout\ <= NOT \inst|57~0_combout\;

-- Location: IOOBUF_X89_Y8_N5
\OA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|94~0_combout\,
	devoe => ww_devoe,
	o => ww_OA);

-- Location: IOOBUF_X89_Y6_N22
\OB~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|93~0_combout\,
	devoe => ww_devoe,
	o => ww_OB);

-- Location: IOOBUF_X89_Y9_N56
\OC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|92~0_combout\,
	devoe => ww_devoe,
	o => ww_OC);

-- Location: IOOBUF_X89_Y6_N5
\OD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|91~0_combout\,
	devoe => ww_devoe,
	o => ww_OD);

-- Location: IOOBUF_X89_Y6_N39
\OE~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_90~0_combout\,
	devoe => ww_devoe,
	o => ww_OE);

-- Location: IOOBUF_X89_Y6_N56
\OF~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|89~1_combout\,
	devoe => ww_devoe,
	o => \ww_OF\);

-- Location: IOOBUF_X89_Y8_N56
\OG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|88~0_combout\,
	devoe => ww_devoe,
	o => ww_OG);

-- Location: IOOBUF_X89_Y35_N79
\S1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_S1);

-- Location: IOOBUF_X68_Y81_N2
\S2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_S2);

-- Location: IOOBUF_X40_Y0_N53
\S3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_S3);

-- Location: IOOBUF_X32_Y81_N2
\S4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_S4);

-- Location: IOIBUF_X89_Y9_N21
\A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\BI_RBO~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BI_RBO,
	o => \BI_RBO~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\RBI~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RBI,
	o => \RBI~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\C~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\D~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: LABCELL_X88_Y8_N30
\inst|57~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|57~0_combout\ = ( \C~input_o\ & ( \D~input_o\ & ( \BI_RBO~input_o\ ) ) ) # ( !\C~input_o\ & ( \D~input_o\ & ( \BI_RBO~input_o\ ) ) ) # ( \C~input_o\ & ( !\D~input_o\ & ( \BI_RBO~input_o\ ) ) ) # ( !\C~input_o\ & ( !\D~input_o\ & ( (\BI_RBO~input_o\ 
-- & (((\B~input_o\) # (\RBI~input_o\)) # (\A~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \ALT_INV_BI_RBO~input_o\,
	datac => \ALT_INV_RBI~input_o\,
	datad => \ALT_INV_B~input_o\,
	datae => \ALT_INV_C~input_o\,
	dataf => \ALT_INV_D~input_o\,
	combout => \inst|57~0_combout\);

-- Location: IOIBUF_X89_Y9_N4
\LT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LT,
	o => \LT~input_o\);

-- Location: LABCELL_X88_Y8_N6
\inst|94~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|94~0_combout\ = ( \C~input_o\ & ( \D~input_o\ & ( (!\LT~input_o\) # ((\A~input_o\ & (\inst|57~0_combout\ & !\B~input_o\))) ) ) ) # ( !\C~input_o\ & ( \D~input_o\ & ( (!\LT~input_o\) # ((\inst|57~0_combout\ & !\B~input_o\)) ) ) ) # ( \C~input_o\ & ( 
-- !\D~input_o\ & ( (!\LT~input_o\) # ((\inst|57~0_combout\ & ((\B~input_o\) # (\A~input_o\)))) ) ) ) # ( !\C~input_o\ & ( !\D~input_o\ & ( (!\LT~input_o\) # ((\inst|57~0_combout\ & ((!\A~input_o\) # (\B~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011110011111100011111001111110011111100001111000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \inst|ALT_INV_57~0_combout\,
	datac => \ALT_INV_LT~input_o\,
	datad => \ALT_INV_B~input_o\,
	datae => \ALT_INV_C~input_o\,
	dataf => \ALT_INV_D~input_o\,
	combout => \inst|94~0_combout\);

-- Location: LABCELL_X88_Y8_N42
\inst|93~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|93~0_combout\ = ( \C~input_o\ & ( \D~input_o\ & ( (!\LT~input_o\) # ((!\A~input_o\ & (\inst|57~0_combout\ & !\B~input_o\))) ) ) ) # ( !\C~input_o\ & ( \D~input_o\ & ( (!\LT~input_o\) # ((\inst|57~0_combout\ & !\B~input_o\)) ) ) ) # ( \C~input_o\ & ( 
-- !\D~input_o\ & ( (!\LT~input_o\) # ((\inst|57~0_combout\ & (!\A~input_o\ $ (\B~input_o\)))) ) ) ) # ( !\C~input_o\ & ( !\D~input_o\ & ( (!\LT~input_o\) # (\inst|57~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100101111000111110011111100001111001011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \inst|ALT_INV_57~0_combout\,
	datac => \ALT_INV_LT~input_o\,
	datad => \ALT_INV_B~input_o\,
	datae => \ALT_INV_C~input_o\,
	dataf => \ALT_INV_D~input_o\,
	combout => \inst|93~0_combout\);

-- Location: LABCELL_X88_Y8_N18
\inst|92~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|92~0_combout\ = ( \C~input_o\ & ( \D~input_o\ & ( !\LT~input_o\ ) ) ) # ( !\C~input_o\ & ( \D~input_o\ & ( (!\LT~input_o\) # ((\inst|57~0_combout\ & ((!\B~input_o\) # (\A~input_o\)))) ) ) ) # ( \C~input_o\ & ( !\D~input_o\ & ( (!\LT~input_o\) # 
-- (\inst|57~0_combout\) ) ) ) # ( !\C~input_o\ & ( !\D~input_o\ & ( (!\LT~input_o\) # ((\inst|57~0_combout\ & ((!\B~input_o\) # (\A~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110001111100111111001111110011111100011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \inst|ALT_INV_57~0_combout\,
	datac => \ALT_INV_LT~input_o\,
	datad => \ALT_INV_B~input_o\,
	datae => \ALT_INV_C~input_o\,
	dataf => \ALT_INV_D~input_o\,
	combout => \inst|92~0_combout\);

-- Location: LABCELL_X88_Y8_N24
\inst|91~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|91~0_combout\ = ( \C~input_o\ & ( \D~input_o\ & ( (!\LT~input_o\) # ((\inst|57~0_combout\ & (!\A~input_o\ $ (!\B~input_o\)))) ) ) ) # ( !\C~input_o\ & ( \D~input_o\ & ( (!\LT~input_o\) # (\inst|57~0_combout\) ) ) ) # ( \C~input_o\ & ( !\D~input_o\ & 
-- ( (!\LT~input_o\) # ((\inst|57~0_combout\ & (!\A~input_o\ $ (!\B~input_o\)))) ) ) ) # ( !\C~input_o\ & ( !\D~input_o\ & ( (!\LT~input_o\) # ((\inst|57~0_combout\ & ((!\A~input_o\) # (\B~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011110011111100011111001011110011111100111111000111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \inst|ALT_INV_57~0_combout\,
	datac => \ALT_INV_LT~input_o\,
	datad => \ALT_INV_B~input_o\,
	datae => \ALT_INV_C~input_o\,
	dataf => \ALT_INV_D~input_o\,
	combout => \inst|91~0_combout\);

-- Location: LABCELL_X88_Y8_N0
\inst|90~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|90~0_combout\ = ( \C~input_o\ & ( (\LT~input_o\ & (((!\inst|57~0_combout\) # (!\B~input_o\)) # (\A~input_o\))) ) ) # ( !\C~input_o\ & ( (\LT~input_o\ & ((!\inst|57~0_combout\) # (\A~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011110000110100001101000011010000111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \inst|ALT_INV_57~0_combout\,
	datac => \ALT_INV_LT~input_o\,
	datad => \ALT_INV_B~input_o\,
	datae => \ALT_INV_C~input_o\,
	combout => \inst|90~0_combout\);

-- Location: LABCELL_X88_Y8_N36
\inst|89~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|89~0_combout\ = ( \C~input_o\ & ( \D~input_o\ & ( (\BI_RBO~input_o\ & ((!\A~input_o\) # (!\B~input_o\))) ) ) ) # ( !\C~input_o\ & ( \D~input_o\ & ( (\BI_RBO~input_o\ & !\B~input_o\) ) ) ) # ( \C~input_o\ & ( !\D~input_o\ & ( (\BI_RBO~input_o\ & 
-- ((!\A~input_o\) # (!\B~input_o\))) ) ) ) # ( !\C~input_o\ & ( !\D~input_o\ & ( (!\A~input_o\ & (\BI_RBO~input_o\ & (\RBI~input_o\ & !\B~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000001100110010001000110011000000000011001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \ALT_INV_BI_RBO~input_o\,
	datac => \ALT_INV_RBI~input_o\,
	datad => \ALT_INV_B~input_o\,
	datae => \ALT_INV_C~input_o\,
	dataf => \ALT_INV_D~input_o\,
	combout => \inst|89~0_combout\);

-- Location: LABCELL_X88_Y8_N15
\inst|89~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|89~1_combout\ = ( \inst|89~0_combout\ & ( \LT~input_o\ ) ) # ( \inst|89~0_combout\ & ( !\LT~input_o\ ) ) # ( !\inst|89~0_combout\ & ( !\LT~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst|ALT_INV_89~0_combout\,
	dataf => \ALT_INV_LT~input_o\,
	combout => \inst|89~1_combout\);

-- Location: LABCELL_X88_Y8_N48
\inst|88~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|88~0_combout\ = ( \C~input_o\ & ( \D~input_o\ & ( (!\LT~input_o\) # ((\inst|57~0_combout\ & ((!\A~input_o\) # (!\B~input_o\)))) ) ) ) # ( !\C~input_o\ & ( \D~input_o\ & ( (!\LT~input_o\) # (\inst|57~0_combout\) ) ) ) # ( \C~input_o\ & ( !\D~input_o\ 
-- & ( (!\LT~input_o\) # ((\inst|57~0_combout\ & ((!\A~input_o\) # (!\B~input_o\)))) ) ) ) # ( !\C~input_o\ & ( !\D~input_o\ & ( (!\LT~input_o\) # ((\inst|57~0_combout\ & \B~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110011111100111111001011110011111100111111001111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \inst|ALT_INV_57~0_combout\,
	datac => \ALT_INV_LT~input_o\,
	datad => \ALT_INV_B~input_o\,
	datae => \ALT_INV_C~input_o\,
	dataf => \ALT_INV_D~input_o\,
	combout => \inst|88~0_combout\);

-- Location: LABCELL_X10_Y68_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


