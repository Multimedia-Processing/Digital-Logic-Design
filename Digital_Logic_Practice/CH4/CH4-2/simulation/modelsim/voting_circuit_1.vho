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

-- DATE "08/12/2019 15:19:40"

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

ENTITY 	voting_circuit_1 IS
    PORT (
	Y : OUT std_logic;
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	F : OUT std_logic;
	X : IN std_logic;
	Y1 : IN std_logic;
	Z : IN std_logic;
	Y2 : OUT std_logic;
	A17 : IN std_logic;
	B18 : IN std_logic;
	C19 : IN std_logic
	);
END voting_circuit_1;

-- Design Ports Information
-- Y	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B18	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A17	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C19	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF voting_circuit_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y1 : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_Y2 : std_logic;
SIGNAL ww_A17 : std_logic;
SIGNAL ww_B18 : std_logic;
SIGNAL ww_C19 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \Y1~input_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \A17~input_o\ : std_logic;
SIGNAL \B18~input_o\ : std_logic;
SIGNAL \C19~input_o\ : std_logic;
SIGNAL \inst22~0_combout\ : std_logic;
SIGNAL \ALT_INV_C19~input_o\ : std_logic;
SIGNAL \ALT_INV_A17~input_o\ : std_logic;
SIGNAL \ALT_INV_B18~input_o\ : std_logic;
SIGNAL \ALT_INV_X~input_o\ : std_logic;
SIGNAL \ALT_INV_Z~input_o\ : std_logic;
SIGNAL \ALT_INV_Y1~input_o\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;
SIGNAL \ALT_INV_C~input_o\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;

BEGIN

Y <= ww_Y;
ww_A <= A;
ww_B <= B;
ww_C <= C;
F <= ww_F;
ww_X <= X;
ww_Y1 <= Y1;
ww_Z <= Z;
Y2 <= ww_Y2;
ww_A17 <= A17;
ww_B18 <= B18;
ww_C19 <= C19;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_C19~input_o\ <= NOT \C19~input_o\;
\ALT_INV_A17~input_o\ <= NOT \A17~input_o\;
\ALT_INV_B18~input_o\ <= NOT \B18~input_o\;
\ALT_INV_X~input_o\ <= NOT \X~input_o\;
\ALT_INV_Z~input_o\ <= NOT \Z~input_o\;
\ALT_INV_Y1~input_o\ <= NOT \Y1~input_o\;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;
\ALT_INV_C~input_o\ <= NOT \C~input_o\;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;

-- Location: IOOBUF_X89_Y8_N22
\Y~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~0_combout\,
	devoe => ww_devoe,
	o => ww_Y);

-- Location: IOOBUF_X16_Y0_N36
\F~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~0_combout\,
	devoe => ww_devoe,
	o => ww_F);

-- Location: IOOBUF_X4_Y0_N53
\Y2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22~0_combout\,
	devoe => ww_devoe,
	o => ww_Y2);

-- Location: IOIBUF_X89_Y8_N38
\B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\C~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LABCELL_X88_Y8_N0
\inst7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = ( \A~input_o\ & ( (\C~input_o\) # (\B~input_o\) ) ) # ( !\A~input_o\ & ( (\B~input_o\ & \C~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001111110011111100000011000000110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B~input_o\,
	datac => \ALT_INV_C~input_o\,
	datae => \ALT_INV_A~input_o\,
	combout => \inst7~0_combout\);

-- Location: IOIBUF_X16_Y0_N18
\Z~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\Y1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y1,
	o => \Y1~input_o\);

-- Location: IOIBUF_X16_Y0_N52
\X~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: LABCELL_X16_Y1_N30
\inst15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = ( \Y1~input_o\ & ( \X~input_o\ & ( !\Z~input_o\ ) ) ) # ( !\Y1~input_o\ & ( \X~input_o\ ) ) # ( !\Y1~input_o\ & ( !\X~input_o\ & ( \Z~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Z~input_o\,
	datae => \ALT_INV_Y1~input_o\,
	dataf => \ALT_INV_X~input_o\,
	combout => \inst15~0_combout\);

-- Location: IOIBUF_X89_Y20_N44
\A17~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A17,
	o => \A17~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\B18~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B18,
	o => \B18~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\C19~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C19,
	o => \C19~input_o\);

-- Location: LABCELL_X88_Y20_N33
\inst22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22~0_combout\ = ( \B18~input_o\ & ( \C19~input_o\ ) ) # ( \B18~input_o\ & ( !\C19~input_o\ & ( \A17~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A17~input_o\,
	datae => \ALT_INV_B18~input_o\,
	dataf => \ALT_INV_C19~input_o\,
	combout => \inst22~0_combout\);

-- Location: LABCELL_X50_Y10_N0
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


