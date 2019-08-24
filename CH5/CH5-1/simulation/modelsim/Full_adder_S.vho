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

-- DATE "08/24/2019 21:20:35"

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

ENTITY 	Full_adder_S IS
    PORT (
	So : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	Ci : IN std_logic;
	Co : OUT std_logic
	);
END Full_adder_S;

-- Design Ports Information
-- So	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Co	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ci	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Full_adder_S IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_So : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Ci : std_logic;
SIGNAL ww_Co : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \Ci~input_o\ : std_logic;
SIGNAL \inst1|inst~combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;
SIGNAL \ALT_INV_Ci~input_o\ : std_logic;

BEGIN

So <= ww_So;
ww_A <= A;
ww_B <= B;
ww_Ci <= Ci;
Co <= ww_Co;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;
\ALT_INV_Ci~input_o\ <= NOT \Ci~input_o\;

-- Location: IOOBUF_X4_Y0_N19
\So~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst~combout\,
	devoe => ww_devoe,
	o => ww_So);

-- Location: IOOBUF_X4_Y0_N53
\Co~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~combout\,
	devoe => ww_devoe,
	o => ww_Co);

-- Location: IOIBUF_X89_Y20_N44
\A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\Ci~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Ci,
	o => \Ci~input_o\);

-- Location: LABCELL_X88_Y20_N30
\inst1|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst~combout\ = ( \B~input_o\ & ( \Ci~input_o\ & ( \A~input_o\ ) ) ) # ( !\B~input_o\ & ( \Ci~input_o\ & ( !\A~input_o\ ) ) ) # ( \B~input_o\ & ( !\Ci~input_o\ & ( !\A~input_o\ ) ) ) # ( !\B~input_o\ & ( !\Ci~input_o\ & ( \A~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A~input_o\,
	datae => \ALT_INV_B~input_o\,
	dataf => \ALT_INV_Ci~input_o\,
	combout => \inst1|inst~combout\);

-- Location: LABCELL_X88_Y20_N9
inst2 : cyclonev_lcell_comb
-- Equation(s):
-- \inst2~combout\ = ( \B~input_o\ & ( \Ci~input_o\ ) ) # ( !\B~input_o\ & ( \Ci~input_o\ & ( \A~input_o\ ) ) ) # ( \B~input_o\ & ( !\Ci~input_o\ & ( \A~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A~input_o\,
	datae => \ALT_INV_B~input_o\,
	dataf => \ALT_INV_Ci~input_o\,
	combout => \inst2~combout\);

-- Location: LABCELL_X42_Y2_N0
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


