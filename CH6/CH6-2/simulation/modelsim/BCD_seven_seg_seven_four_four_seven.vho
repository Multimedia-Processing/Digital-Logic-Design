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
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "03/16/2020 21:40:10"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
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
-- OA	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OB	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OC	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OD	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OE	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OF	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OG	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BI_RBO	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LT	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RBI	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \LT~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst|29~0_combout\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \inst|25~combout\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \RBI~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst|37~0_combout\ : std_logic;
SIGNAL \inst|27~0_combout\ : std_logic;
SIGNAL \BI_RBO~input_o\ : std_logic;
SIGNAL \inst|81~combout\ : std_logic;
SIGNAL \inst|82~0_combout\ : std_logic;
SIGNAL \inst|83~combout\ : std_logic;
SIGNAL \inst|84~combout\ : std_logic;
SIGNAL \inst|85~combout\ : std_logic;
SIGNAL \inst|37~1_combout\ : std_logic;
SIGNAL \inst|86~0_combout\ : std_logic;
SIGNAL \inst|87~0_combout\ : std_logic;
SIGNAL \ALT_INV_RBI~input_o\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;
SIGNAL \ALT_INV_C~input_o\ : std_logic;
SIGNAL \ALT_INV_D~input_o\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;
SIGNAL \ALT_INV_LT~input_o\ : std_logic;
SIGNAL \ALT_INV_BI_RBO~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_37~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_37~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_27~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_25~combout\ : std_logic;
SIGNAL \inst|ALT_INV_29~0_combout\ : std_logic;

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
\ALT_INV_RBI~input_o\ <= NOT \RBI~input_o\;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;
\ALT_INV_C~input_o\ <= NOT \C~input_o\;
\ALT_INV_D~input_o\ <= NOT \D~input_o\;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;
\ALT_INV_LT~input_o\ <= NOT \LT~input_o\;
\ALT_INV_BI_RBO~input_o\ <= NOT \BI_RBO~input_o\;
\inst|ALT_INV_37~1_combout\ <= NOT \inst|37~1_combout\;
\inst|ALT_INV_37~0_combout\ <= NOT \inst|37~0_combout\;
\inst|ALT_INV_27~0_combout\ <= NOT \inst|27~0_combout\;
\inst|ALT_INV_25~combout\ <= NOT \inst|25~combout\;
\inst|ALT_INV_29~0_combout\ <= NOT \inst|29~0_combout\;

-- Location: IOOBUF_X89_Y23_N22
\OA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|81~combout\,
	devoe => ww_devoe,
	o => ww_OA);

-- Location: IOOBUF_X89_Y16_N56
\OB~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|82~0_combout\,
	devoe => ww_devoe,
	o => ww_OB);

-- Location: IOOBUF_X89_Y23_N56
\OC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|83~combout\,
	devoe => ww_devoe,
	o => ww_OC);

-- Location: IOOBUF_X89_Y20_N45
\OD~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|84~combout\,
	devoe => ww_devoe,
	o => ww_OD);

-- Location: IOOBUF_X89_Y16_N39
\OE~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|85~combout\,
	devoe => ww_devoe,
	o => ww_OE);

-- Location: IOOBUF_X89_Y20_N62
\OF~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|86~0_combout\,
	devoe => ww_devoe,
	o => \ww_OF\);

-- Location: IOOBUF_X89_Y20_N79
\OG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|87~0_combout\,
	devoe => ww_devoe,
	o => ww_OG);

-- Location: IOOBUF_X38_Y0_N53
\OP~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_OP);

-- Location: IOIBUF_X89_Y21_N55
\LT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LT,
	o => \LT~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LABCELL_X88_Y21_N0
\inst|29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|29~0_combout\ = ( \A~input_o\ & ( \LT~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LT~input_o\,
	datae => \ALT_INV_A~input_o\,
	combout => \inst|29~0_combout\);

-- Location: IOIBUF_X89_Y23_N38
\C~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LABCELL_X88_Y21_N6
\inst|25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|25~combout\ = ( \C~input_o\ & ( \LT~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LT~input_o\,
	dataf => \ALT_INV_C~input_o\,
	combout => \inst|25~combout\);

-- Location: IOIBUF_X89_Y21_N4
\D~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\RBI~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RBI,
	o => \RBI~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LABCELL_X88_Y21_N18
\inst|37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|37~0_combout\ = ( \LT~input_o\ & ( !\C~input_o\ & ( (!\A~input_o\ & (!\D~input_o\ & (!\RBI~input_o\ & !\B~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \ALT_INV_D~input_o\,
	datac => \ALT_INV_RBI~input_o\,
	datad => \ALT_INV_B~input_o\,
	datae => \ALT_INV_LT~input_o\,
	dataf => \ALT_INV_C~input_o\,
	combout => \inst|37~0_combout\);

-- Location: LABCELL_X88_Y21_N15
\inst|27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|27~0_combout\ = ( \B~input_o\ & ( \LT~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LT~input_o\,
	datae => \ALT_INV_B~input_o\,
	combout => \inst|27~0_combout\);

-- Location: IOIBUF_X89_Y23_N4
\BI_RBO~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BI_RBO,
	o => \BI_RBO~input_o\);

-- Location: LABCELL_X88_Y21_N24
\inst|81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|81~combout\ = ( \D~input_o\ & ( \BI_RBO~input_o\ & ( (((!\inst|29~0_combout\ & \inst|25~combout\)) # (\inst|27~0_combout\)) # (\inst|37~0_combout\) ) ) ) # ( !\D~input_o\ & ( \BI_RBO~input_o\ & ( ((!\inst|29~0_combout\ & (\inst|25~combout\)) # 
-- (\inst|29~0_combout\ & (!\inst|25~combout\ & !\inst|27~0_combout\))) # (\inst|37~0_combout\) ) ) ) # ( \D~input_o\ & ( !\BI_RBO~input_o\ ) ) # ( !\D~input_o\ & ( !\BI_RBO~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101101111001011110010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_29~0_combout\,
	datab => \inst|ALT_INV_25~combout\,
	datac => \inst|ALT_INV_37~0_combout\,
	datad => \inst|ALT_INV_27~0_combout\,
	datae => \ALT_INV_D~input_o\,
	dataf => \ALT_INV_BI_RBO~input_o\,
	combout => \inst|81~combout\);

-- Location: LABCELL_X88_Y21_N30
\inst|82~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|82~0_combout\ = ( \D~input_o\ & ( \BI_RBO~input_o\ & ( (((\inst|29~0_combout\ & \inst|25~combout\)) # (\inst|27~0_combout\)) # (\inst|37~0_combout\) ) ) ) # ( !\D~input_o\ & ( \BI_RBO~input_o\ & ( ((\inst|25~combout\ & (!\inst|29~0_combout\ $ 
-- (!\inst|27~0_combout\)))) # (\inst|37~0_combout\) ) ) ) # ( \D~input_o\ & ( !\BI_RBO~input_o\ ) ) # ( !\D~input_o\ & ( !\BI_RBO~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100011111001011110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_29~0_combout\,
	datab => \inst|ALT_INV_25~combout\,
	datac => \inst|ALT_INV_37~0_combout\,
	datad => \inst|ALT_INV_27~0_combout\,
	datae => \ALT_INV_D~input_o\,
	dataf => \ALT_INV_BI_RBO~input_o\,
	combout => \inst|82~0_combout\);

-- Location: LABCELL_X88_Y21_N36
\inst|83\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|83~combout\ = ( \D~input_o\ & ( \BI_RBO~input_o\ & ( (((!\inst|29~0_combout\ & \inst|27~0_combout\)) # (\inst|37~0_combout\)) # (\inst|25~combout\) ) ) ) # ( !\D~input_o\ & ( \BI_RBO~input_o\ & ( ((!\inst|29~0_combout\ & (!\inst|25~combout\ & 
-- \inst|27~0_combout\))) # (\inst|37~0_combout\) ) ) ) # ( \D~input_o\ & ( !\BI_RBO~input_o\ ) ) # ( !\D~input_o\ & ( !\BI_RBO~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111100011110011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_29~0_combout\,
	datab => \inst|ALT_INV_25~combout\,
	datac => \inst|ALT_INV_37~0_combout\,
	datad => \inst|ALT_INV_27~0_combout\,
	datae => \ALT_INV_D~input_o\,
	dataf => \ALT_INV_BI_RBO~input_o\,
	combout => \inst|83~combout\);

-- Location: LABCELL_X88_Y21_N9
\inst|84\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|84~combout\ = ( \BI_RBO~input_o\ & ( ((!\inst|27~0_combout\ & (!\inst|25~combout\ $ (!\inst|29~0_combout\))) # (\inst|27~0_combout\ & (\inst|25~combout\ & \inst|29~0_combout\))) # (\inst|37~0_combout\) ) ) # ( !\BI_RBO~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011101110101110101110111010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_37~0_combout\,
	datab => \inst|ALT_INV_27~0_combout\,
	datac => \inst|ALT_INV_25~combout\,
	datad => \inst|ALT_INV_29~0_combout\,
	dataf => \ALT_INV_BI_RBO~input_o\,
	combout => \inst|84~combout\);

-- Location: LABCELL_X88_Y21_N42
\inst|85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|85~combout\ = ( \inst|27~0_combout\ & ( (!\BI_RBO~input_o\) # ((\inst|29~0_combout\) # (\inst|37~0_combout\)) ) ) # ( !\inst|27~0_combout\ & ( (!\BI_RBO~input_o\) # (((\inst|25~combout\) # (\inst|29~0_combout\)) # (\inst|37~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111111101111111111111110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BI_RBO~input_o\,
	datab => \inst|ALT_INV_37~0_combout\,
	datac => \inst|ALT_INV_29~0_combout\,
	datad => \inst|ALT_INV_25~combout\,
	dataf => \inst|ALT_INV_27~0_combout\,
	combout => \inst|85~combout\);

-- Location: LABCELL_X88_Y21_N45
\inst|37~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|37~1_combout\ = (\BI_RBO~input_o\ & !\inst|37~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BI_RBO~input_o\,
	datab => \inst|ALT_INV_37~0_combout\,
	combout => \inst|37~1_combout\);

-- Location: LABCELL_X88_Y21_N48
\inst|86~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|86~0_combout\ = ( \LT~input_o\ & ( \C~input_o\ & ( (!\inst|37~1_combout\) # ((\A~input_o\ & \B~input_o\)) ) ) ) # ( !\LT~input_o\ & ( \C~input_o\ & ( !\inst|37~1_combout\ ) ) ) # ( \LT~input_o\ & ( !\C~input_o\ & ( ((!\inst|37~1_combout\) # 
-- ((\A~input_o\ & !\D~input_o\))) # (\B~input_o\) ) ) ) # ( !\LT~input_o\ & ( !\C~input_o\ & ( !\inst|37~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110100111111111111000000001111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datab => \ALT_INV_D~input_o\,
	datac => \ALT_INV_B~input_o\,
	datad => \inst|ALT_INV_37~1_combout\,
	datae => \ALT_INV_LT~input_o\,
	dataf => \ALT_INV_C~input_o\,
	combout => \inst|86~0_combout\);

-- Location: LABCELL_X88_Y21_N54
\inst|87~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|87~0_combout\ = ( \B~input_o\ & ( \BI_RBO~input_o\ & ( (\LT~input_o\ & (\A~input_o\ & \C~input_o\)) ) ) ) # ( !\B~input_o\ & ( \BI_RBO~input_o\ & ( (\LT~input_o\ & (!\D~input_o\ & !\C~input_o\)) ) ) ) # ( \B~input_o\ & ( !\BI_RBO~input_o\ ) ) # ( 
-- !\B~input_o\ & ( !\BI_RBO~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101000100000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LT~input_o\,
	datab => \ALT_INV_D~input_o\,
	datac => \ALT_INV_A~input_o\,
	datad => \ALT_INV_C~input_o\,
	datae => \ALT_INV_B~input_o\,
	dataf => \ALT_INV_BI_RBO~input_o\,
	combout => \inst|87~0_combout\);

-- Location: LABCELL_X9_Y3_N0
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


