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

-- DATE "10/31/2019 21:29:24"

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

ENTITY 	enight_to_three_priority_encoder IS
    PORT (
	Y0 : OUT std_logic;
	I5 : IN std_logic;
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	I4 : IN std_logic;
	I6 : IN std_logic;
	I7 : IN std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic
	);
END enight_to_three_priority_encoder;

-- Design Ports Information
-- Y0	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I7	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I5	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I6	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I3	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I4	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF enight_to_three_priority_encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y0 : std_logic;
SIGNAL ww_I5 : std_logic;
SIGNAL ww_I0 : std_logic;
SIGNAL ww_I1 : std_logic;
SIGNAL ww_I2 : std_logic;
SIGNAL ww_I3 : std_logic;
SIGNAL ww_I4 : std_logic;
SIGNAL ww_I6 : std_logic;
SIGNAL ww_I7 : std_logic;
SIGNAL ww_Y1 : std_logic;
SIGNAL ww_Y2 : std_logic;
SIGNAL \I0~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \I5~input_o\ : std_logic;
SIGNAL \I7~input_o\ : std_logic;
SIGNAL \I6~input_o\ : std_logic;
SIGNAL \I4~input_o\ : std_logic;
SIGNAL \I3~input_o\ : std_logic;
SIGNAL \I2~input_o\ : std_logic;
SIGNAL \I1~input_o\ : std_logic;
SIGNAL \inst|8~0_combout\ : std_logic;
SIGNAL \inst|8~1_combout\ : std_logic;
SIGNAL \inst|109~0_combout\ : std_logic;
SIGNAL \inst|9~combout\ : std_logic;
SIGNAL \ALT_INV_I4~input_o\ : std_logic;
SIGNAL \ALT_INV_I2~input_o\ : std_logic;
SIGNAL \ALT_INV_I1~input_o\ : std_logic;
SIGNAL \ALT_INV_I3~input_o\ : std_logic;
SIGNAL \ALT_INV_I6~input_o\ : std_logic;
SIGNAL \ALT_INV_I5~input_o\ : std_logic;
SIGNAL \ALT_INV_I7~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_9~combout\ : std_logic;
SIGNAL \inst|ALT_INV_109~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_8~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_8~0_combout\ : std_logic;

BEGIN

Y0 <= ww_Y0;
ww_I5 <= I5;
ww_I0 <= I0;
ww_I1 <= I1;
ww_I2 <= I2;
ww_I3 <= I3;
ww_I4 <= I4;
ww_I6 <= I6;
ww_I7 <= I7;
Y1 <= ww_Y1;
Y2 <= ww_Y2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_I4~input_o\ <= NOT \I4~input_o\;
\ALT_INV_I2~input_o\ <= NOT \I2~input_o\;
\ALT_INV_I1~input_o\ <= NOT \I1~input_o\;
\ALT_INV_I3~input_o\ <= NOT \I3~input_o\;
\ALT_INV_I6~input_o\ <= NOT \I6~input_o\;
\ALT_INV_I5~input_o\ <= NOT \I5~input_o\;
\ALT_INV_I7~input_o\ <= NOT \I7~input_o\;
\inst|ALT_INV_9~combout\ <= NOT \inst|9~combout\;
\inst|ALT_INV_109~0_combout\ <= NOT \inst|109~0_combout\;
\inst|ALT_INV_8~1_combout\ <= NOT \inst|8~1_combout\;
\inst|ALT_INV_8~0_combout\ <= NOT \inst|8~0_combout\;

-- Location: IOOBUF_X4_Y0_N19
\Y0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_8~1_combout\,
	devoe => ww_devoe,
	o => ww_Y0);

-- Location: IOOBUF_X4_Y0_N36
\Y1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_109~0_combout\,
	devoe => ww_devoe,
	o => ww_Y1);

-- Location: IOOBUF_X6_Y0_N2
\Y2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_9~combout\,
	devoe => ww_devoe,
	o => ww_Y2);

-- Location: IOIBUF_X2_Y0_N75
\I5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I5,
	o => \I5~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\I7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I7,
	o => \I7~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\I6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I6,
	o => \I6~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\I4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I4,
	o => \I4~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\I3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I3,
	o => \I3~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\I2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2,
	o => \I2~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\I1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1,
	o => \I1~input_o\);

-- Location: LABCELL_X4_Y2_N30
\inst|8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|8~0_combout\ = ( \I1~input_o\ & ( \I3~input_o\ ) ) # ( !\I1~input_o\ & ( (\I3~input_o\ & !\I2~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_I3~input_o\,
	datac => \ALT_INV_I2~input_o\,
	dataf => \ALT_INV_I1~input_o\,
	combout => \inst|8~0_combout\);

-- Location: LABCELL_X4_Y2_N36
\inst|8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|8~1_combout\ = ( \I4~input_o\ & ( \inst|8~0_combout\ & ( (!\I7~input_o\) # ((!\I5~input_o\ & \I6~input_o\)) ) ) ) # ( !\I4~input_o\ & ( \inst|8~0_combout\ & ( (!\I7~input_o\) # ((!\I5~input_o\ & \I6~input_o\)) ) ) ) # ( \I4~input_o\ & ( 
-- !\inst|8~0_combout\ & ( (!\I7~input_o\) # (\I6~input_o\) ) ) ) # ( !\I4~input_o\ & ( !\inst|8~0_combout\ & ( (!\I7~input_o\) # ((!\I5~input_o\ & \I6~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111011001110110011111100111111001110110011101100111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I5~input_o\,
	datab => \ALT_INV_I7~input_o\,
	datac => \ALT_INV_I6~input_o\,
	datae => \ALT_INV_I4~input_o\,
	dataf => \inst|ALT_INV_8~0_combout\,
	combout => \inst|8~1_combout\);

-- Location: LABCELL_X4_Y2_N12
\inst|109~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|109~0_combout\ = ( \I4~input_o\ & ( \I2~input_o\ & ( (!\I7~input_o\) # ((!\I6~input_o\) # ((\I5~input_o\ & !\I3~input_o\))) ) ) ) # ( !\I4~input_o\ & ( \I2~input_o\ & ( (!\I7~input_o\) # (!\I6~input_o\) ) ) ) # ( \I4~input_o\ & ( !\I2~input_o\ & ( 
-- ((!\I7~input_o\) # (!\I6~input_o\)) # (\I5~input_o\) ) ) ) # ( !\I4~input_o\ & ( !\I2~input_o\ & ( (!\I7~input_o\) # (!\I6~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111011111110111111100111111001111110111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I5~input_o\,
	datab => \ALT_INV_I7~input_o\,
	datac => \ALT_INV_I6~input_o\,
	datad => \ALT_INV_I3~input_o\,
	datae => \ALT_INV_I4~input_o\,
	dataf => \ALT_INV_I2~input_o\,
	combout => \inst|109~0_combout\);

-- Location: LABCELL_X4_Y2_N21
\inst|9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|9~combout\ = ( \I4~input_o\ & ( \I7~input_o\ & ( (!\I6~input_o\) # (!\I5~input_o\) ) ) ) # ( !\I4~input_o\ & ( \I7~input_o\ ) ) # ( \I4~input_o\ & ( !\I7~input_o\ ) ) # ( !\I4~input_o\ & ( !\I7~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_I6~input_o\,
	datad => \ALT_INV_I5~input_o\,
	datae => \ALT_INV_I4~input_o\,
	dataf => \ALT_INV_I7~input_o\,
	combout => \inst|9~combout\);

-- Location: IOIBUF_X89_Y20_N95
\I0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0,
	o => \I0~input_o\);

-- Location: LABCELL_X64_Y19_N3
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


