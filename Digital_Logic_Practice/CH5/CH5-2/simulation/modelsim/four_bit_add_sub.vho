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

-- DATE "08/26/2019 22:13:35"

-- 
-- Device: Altera 5CSXFC6D6F31C8 Package FBGA896
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

ENTITY 	four_bit_add_sub IS
    PORT (
	C3 : OUT std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	SUB : IN std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	A0 : IN std_logic;
	B0 : IN std_logic;
	S3 : OUT std_logic;
	S2 : OUT std_logic;
	S1 : OUT std_logic;
	S0 : OUT std_logic
	);
END four_bit_add_sub;

-- Design Ports Information
-- C3	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUB	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF four_bit_add_sub IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_C3 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_SUB : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \SUB~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst2|inst2~combout\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \inst|inst2~combout\ : std_logic;
SIGNAL \inst|inst1|inst~combout\ : std_logic;
SIGNAL \inst1|inst1|inst~combout\ : std_logic;
SIGNAL \inst2|inst1|inst~combout\ : std_logic;
SIGNAL \inst3|inst|inst~combout\ : std_logic;
SIGNAL \ALT_INV_B0~input_o\ : std_logic;
SIGNAL \ALT_INV_A0~input_o\ : std_logic;
SIGNAL \ALT_INV_B1~input_o\ : std_logic;
SIGNAL \ALT_INV_A1~input_o\ : std_logic;
SIGNAL \ALT_INV_B2~input_o\ : std_logic;
SIGNAL \ALT_INV_A2~input_o\ : std_logic;
SIGNAL \ALT_INV_SUB~input_o\ : std_logic;
SIGNAL \ALT_INV_B3~input_o\ : std_logic;
SIGNAL \ALT_INV_A3~input_o\ : std_logic;
SIGNAL \inst2|ALT_INV_inst2~combout\ : std_logic;

BEGIN

C3 <= ww_C3;
ww_A3 <= A3;
ww_B3 <= B3;
ww_SUB <= SUB;
ww_A2 <= A2;
ww_B2 <= B2;
ww_A1 <= A1;
ww_B1 <= B1;
ww_A0 <= A0;
ww_B0 <= B0;
S3 <= ww_S3;
S2 <= ww_S2;
S1 <= ww_S1;
S0 <= ww_S0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B0~input_o\ <= NOT \B0~input_o\;
\ALT_INV_A0~input_o\ <= NOT \A0~input_o\;
\ALT_INV_B1~input_o\ <= NOT \B1~input_o\;
\ALT_INV_A1~input_o\ <= NOT \A1~input_o\;
\ALT_INV_B2~input_o\ <= NOT \B2~input_o\;
\ALT_INV_A2~input_o\ <= NOT \A2~input_o\;
\ALT_INV_SUB~input_o\ <= NOT \SUB~input_o\;
\ALT_INV_B3~input_o\ <= NOT \B3~input_o\;
\ALT_INV_A3~input_o\ <= NOT \A3~input_o\;
\inst2|ALT_INV_inst2~combout\ <= NOT \inst2|inst2~combout\;

-- Location: IOOBUF_X89_Y23_N56
\C3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2~combout\,
	devoe => ww_devoe,
	o => ww_C3);

-- Location: IOOBUF_X89_Y16_N5
\S3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst~combout\,
	devoe => ww_devoe,
	o => ww_S3);

-- Location: IOOBUF_X89_Y16_N22
\S2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst~combout\,
	devoe => ww_devoe,
	o => ww_S2);

-- Location: IOOBUF_X89_Y23_N22
\S1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|inst~combout\,
	devoe => ww_devoe,
	o => ww_S1);

-- Location: IOOBUF_X89_Y20_N96
\S0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|inst~combout\,
	devoe => ww_devoe,
	o => ww_S0);

-- Location: IOIBUF_X89_Y21_N55
\B3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\SUB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUB,
	o => \SUB~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\B2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\A2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\A0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\A1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\B0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\B1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: LABCELL_X88_Y21_N0
\inst2|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst2~combout\ = ( \SUB~input_o\ & ( \B1~input_o\ & ( (\A1~input_o\ & ((!\B0~input_o\) # (\A0~input_o\))) ) ) ) # ( !\SUB~input_o\ & ( \B1~input_o\ & ( ((\A0~input_o\ & \B0~input_o\)) # (\A1~input_o\) ) ) ) # ( \SUB~input_o\ & ( !\B1~input_o\ & ( 
-- ((!\B0~input_o\) # (\A1~input_o\)) # (\A0~input_o\) ) ) ) # ( !\SUB~input_o\ & ( !\B1~input_o\ & ( (\A0~input_o\ & (\A1~input_o\ & \B0~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111110011111100001111001111110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A0~input_o\,
	datac => \ALT_INV_A1~input_o\,
	datad => \ALT_INV_B0~input_o\,
	datae => \ALT_INV_SUB~input_o\,
	dataf => \ALT_INV_B1~input_o\,
	combout => \inst2|inst2~combout\);

-- Location: IOIBUF_X89_Y23_N38
\A3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: LABCELL_X88_Y21_N36
\inst|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2~combout\ = ( \inst2|inst2~combout\ & ( \A3~input_o\ & ( ((!\B3~input_o\ & ((\B2~input_o\) # (\SUB~input_o\))) # (\B3~input_o\ & ((!\SUB~input_o\) # (!\B2~input_o\)))) # (\A2~input_o\) ) ) ) # ( !\inst2|inst2~combout\ & ( \A3~input_o\ & ( 
-- (!\B3~input_o\ & (((\B2~input_o\ & \A2~input_o\)) # (\SUB~input_o\))) # (\B3~input_o\ & ((!\SUB~input_o\) # ((!\B2~input_o\ & \A2~input_o\)))) ) ) ) # ( \inst2|inst2~combout\ & ( !\A3~input_o\ & ( (!\B3~input_o\ & (\SUB~input_o\ & ((!\B2~input_o\) # 
-- (\A2~input_o\)))) # (\B3~input_o\ & (!\SUB~input_o\ & ((\A2~input_o\) # (\B2~input_o\)))) ) ) ) # ( !\inst2|inst2~combout\ & ( !\A3~input_o\ & ( (\A2~input_o\ & ((!\B3~input_o\ & (\SUB~input_o\ & !\B2~input_o\)) # (\B3~input_o\ & (!\SUB~input_o\ & 
-- \B2~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100100001001000110011001100110011111100111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B3~input_o\,
	datab => \ALT_INV_SUB~input_o\,
	datac => \ALT_INV_B2~input_o\,
	datad => \ALT_INV_A2~input_o\,
	datae => \inst2|ALT_INV_inst2~combout\,
	dataf => \ALT_INV_A3~input_o\,
	combout => \inst|inst2~combout\);

-- Location: LABCELL_X88_Y21_N12
\inst|inst1|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst1|inst~combout\ = ( \inst2|inst2~combout\ & ( \A3~input_o\ & ( !\B3~input_o\ $ (((!\A2~input_o\ & ((\B2~input_o\))) # (\A2~input_o\ & (!\SUB~input_o\)))) ) ) ) # ( !\inst2|inst2~combout\ & ( \A3~input_o\ & ( !\B3~input_o\ $ (((!\A2~input_o\ & 
-- (\SUB~input_o\)) # (\A2~input_o\ & ((\B2~input_o\))))) ) ) ) # ( \inst2|inst2~combout\ & ( !\A3~input_o\ & ( !\B3~input_o\ $ (((!\A2~input_o\ & ((!\B2~input_o\))) # (\A2~input_o\ & (\SUB~input_o\)))) ) ) ) # ( !\inst2|inst2~combout\ & ( !\A3~input_o\ & ( 
-- !\B3~input_o\ $ (((!\A2~input_o\ & (!\SUB~input_o\)) # (\A2~input_o\ & ((!\B2~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001011010010110101001100110011001101001011010010101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B3~input_o\,
	datab => \ALT_INV_SUB~input_o\,
	datac => \ALT_INV_B2~input_o\,
	datad => \ALT_INV_A2~input_o\,
	datae => \inst2|ALT_INV_inst2~combout\,
	dataf => \ALT_INV_A3~input_o\,
	combout => \inst|inst1|inst~combout\);

-- Location: LABCELL_X88_Y21_N51
\inst1|inst1|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst~combout\ = ( \SUB~input_o\ & ( !\B2~input_o\ $ (!\A2~input_o\ $ (!\inst2|inst2~combout\)) ) ) # ( !\SUB~input_o\ & ( !\B2~input_o\ $ (!\A2~input_o\ $ (\inst2|inst2~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001100110010110011001100110100110011001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B2~input_o\,
	datab => \ALT_INV_A2~input_o\,
	datad => \inst2|ALT_INV_inst2~combout\,
	datae => \ALT_INV_SUB~input_o\,
	combout => \inst1|inst1|inst~combout\);

-- Location: LABCELL_X88_Y21_N27
\inst2|inst1|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst1|inst~combout\ = ( \SUB~input_o\ & ( \B1~input_o\ & ( !\A1~input_o\ $ (((\B0~input_o\ & !\A0~input_o\))) ) ) ) # ( !\SUB~input_o\ & ( \B1~input_o\ & ( !\A1~input_o\ $ (((\B0~input_o\ & \A0~input_o\))) ) ) ) # ( \SUB~input_o\ & ( !\B1~input_o\ 
-- & ( !\A1~input_o\ $ (((!\B0~input_o\) # (\A0~input_o\))) ) ) ) # ( !\SUB~input_o\ & ( !\B1~input_o\ & ( !\A1~input_o\ $ (((!\B0~input_o\) # (!\A0~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110011001010110010110101001101010011001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A1~input_o\,
	datab => \ALT_INV_B0~input_o\,
	datac => \ALT_INV_A0~input_o\,
	datae => \ALT_INV_SUB~input_o\,
	dataf => \ALT_INV_B1~input_o\,
	combout => \inst2|inst1|inst~combout\);

-- Location: LABCELL_X88_Y21_N30
\inst3|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|inst|inst~combout\ = ( \B0~input_o\ & ( !\A0~input_o\ ) ) # ( !\B0~input_o\ & ( \A0~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A0~input_o\,
	datae => \ALT_INV_B0~input_o\,
	combout => \inst3|inst|inst~combout\);

-- Location: LABCELL_X7_Y44_N0
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


