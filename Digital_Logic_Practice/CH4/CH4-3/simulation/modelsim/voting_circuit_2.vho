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

-- DATE "08/15/2019 10:11:11"

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

ENTITY 	voting_circuit_2 IS
    PORT (
	F1 : OUT std_logic;
	B : IN std_logic;
	C : IN std_logic;
	A : IN std_logic;
	F2 : OUT std_logic;
	F3 : OUT std_logic;
	F4 : OUT std_logic;
	A1 : IN std_logic;
	C1 : IN std_logic;
	D1 : IN std_logic;
	B1 : IN std_logic
	);
END voting_circuit_2;

-- Design Ports Information
-- F1	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F3	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F4	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C1	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF voting_circuit_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_F1 : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_F2 : std_logic;
SIGNAL ww_F3 : std_logic;
SIGNAL ww_F4 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_C1 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \inst16~0_combout\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \C1~input_o\ : std_logic;
SIGNAL \D1~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \inst26~0_combout\ : std_logic;
SIGNAL \ALT_INV_A1~input_o\ : std_logic;
SIGNAL \ALT_INV_C1~input_o\ : std_logic;
SIGNAL \ALT_INV_B1~input_o\ : std_logic;
SIGNAL \ALT_INV_D1~input_o\ : std_logic;
SIGNAL \ALT_INV_C~input_o\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;
SIGNAL \ALT_INV_inst16~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst15~0_combout\ : std_logic;

BEGIN

F1 <= ww_F1;
ww_B <= B;
ww_C <= C;
ww_A <= A;
F2 <= ww_F2;
F3 <= ww_F3;
F4 <= ww_F4;
ww_A1 <= A1;
ww_C1 <= C1;
ww_D1 <= D1;
ww_B1 <= B1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A1~input_o\ <= NOT \A1~input_o\;
\ALT_INV_C1~input_o\ <= NOT \C1~input_o\;
\ALT_INV_B1~input_o\ <= NOT \B1~input_o\;
\ALT_INV_D1~input_o\ <= NOT \D1~input_o\;
\ALT_INV_C~input_o\ <= NOT \C~input_o\;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;
\ALT_INV_inst16~0_combout\ <= NOT \inst16~0_combout\;
\ALT_INV_inst15~0_combout\ <= NOT \inst15~0_combout\;

-- Location: IOOBUF_X89_Y21_N22
\F1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst15~0_combout\,
	devoe => ww_devoe,
	o => ww_F1);

-- Location: IOOBUF_X89_Y23_N56
\F2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst16~0_combout\,
	devoe => ww_devoe,
	o => ww_F2);

-- Location: IOOBUF_X89_Y23_N22
\F3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~0_combout\,
	devoe => ww_devoe,
	o => ww_F3);

-- Location: IOOBUF_X4_Y0_N53
\F4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26~0_combout\,
	devoe => ww_devoe,
	o => ww_F4);

-- Location: IOIBUF_X89_Y21_N38
\C~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X89_Y21_N55
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
\inst15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = ( \A~input_o\ & ( (!\C~input_o\ & !\B~input_o\) ) ) # ( !\A~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110000001100000011111111111111111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_C~input_o\,
	datac => \ALT_INV_B~input_o\,
	datae => \ALT_INV_A~input_o\,
	combout => \inst15~0_combout\);

-- Location: LABCELL_X88_Y21_N39
\inst16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst16~0_combout\ = ( \A~input_o\ ) # ( !\A~input_o\ & ( (\B~input_o\ & \C~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111111111111111100000101000001011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B~input_o\,
	datac => \ALT_INV_C~input_o\,
	datae => \ALT_INV_A~input_o\,
	combout => \inst16~0_combout\);

-- Location: LABCELL_X88_Y21_N42
\inst10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = ( \A~input_o\ & ( (!\C~input_o\ & !\B~input_o\) ) ) # ( !\A~input_o\ & ( (\C~input_o\ & \B~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000001100000000000011000000111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_C~input_o\,
	datac => \ALT_INV_B~input_o\,
	datae => \ALT_INV_A~input_o\,
	combout => \inst10~0_combout\);

-- Location: IOIBUF_X89_Y20_N44
\A1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\C1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C1,
	o => \C1~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\D1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1,
	o => \D1~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\B1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: LABCELL_X88_Y20_N33
\inst26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26~0_combout\ = ( \B1~input_o\ & ( !\C1~input_o\ $ (((!\A1~input_o\ & \D1~input_o\))) ) ) # ( !\B1~input_o\ & ( ((\D1~input_o\) # (\C1~input_o\)) # (\A1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111111100000101101001011111111111111111000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A1~input_o\,
	datac => \ALT_INV_C1~input_o\,
	datad => \ALT_INV_D1~input_o\,
	datae => \ALT_INV_B1~input_o\,
	combout => \inst26~0_combout\);

-- Location: LABCELL_X24_Y36_N0
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


