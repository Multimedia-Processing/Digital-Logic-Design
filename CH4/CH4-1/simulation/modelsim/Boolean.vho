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

-- DATE "08/12/2019 00:41:03"

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

ENTITY 	Boolean IS
    PORT (
	F : OUT std_logic;
	A : IN std_logic;
	F2 : OUT std_logic;
	A1 : IN std_logic;
	F3 : OUT std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	F4 : OUT std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	F5 : OUT std_logic;
	A4 : IN std_logic;
	F6 : OUT std_logic;
	F7 : OUT std_logic;
	B4 : IN std_logic;
	F8 : OUT std_logic;
	F9 : OUT std_logic;
	B5 : IN std_logic;
	A5 : IN std_logic;
	F10 : OUT std_logic;
	F11 : OUT std_logic;
	B6 : IN std_logic;
	A6 : IN std_logic;
	F12 : OUT std_logic
	);
END Boolean;

-- Design Ports Information
-- F	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F3	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F4	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F5	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F6	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F7	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F8	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F9	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F10	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F11	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F12	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A4	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B4	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B5	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A5	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B6	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A6	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Boolean IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_F2 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_F3 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_F4 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_F5 : std_logic;
SIGNAL ww_A4 : std_logic;
SIGNAL ww_F6 : std_logic;
SIGNAL ww_F7 : std_logic;
SIGNAL ww_B4 : std_logic;
SIGNAL ww_F8 : std_logic;
SIGNAL ww_F9 : std_logic;
SIGNAL ww_B5 : std_logic;
SIGNAL ww_A5 : std_logic;
SIGNAL ww_F10 : std_logic;
SIGNAL ww_F11 : std_logic;
SIGNAL ww_B6 : std_logic;
SIGNAL ww_A6 : std_logic;
SIGNAL ww_F12 : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \A4~input_o\ : std_logic;
SIGNAL \B4~input_o\ : std_logic;
SIGNAL \A5~input_o\ : std_logic;
SIGNAL \B5~input_o\ : std_logic;
SIGNAL \inst17~combout\ : std_logic;
SIGNAL \A6~input_o\ : std_logic;
SIGNAL \B6~input_o\ : std_logic;
SIGNAL \inst14~combout\ : std_logic;
SIGNAL \ALT_INV_A6~input_o\ : std_logic;
SIGNAL \ALT_INV_B6~input_o\ : std_logic;
SIGNAL \ALT_INV_A5~input_o\ : std_logic;
SIGNAL \ALT_INV_B5~input_o\ : std_logic;
SIGNAL \ALT_INV_B4~input_o\ : std_logic;
SIGNAL \ALT_INV_A4~input_o\ : std_logic;
SIGNAL \ALT_INV_inst14~combout\ : std_logic;
SIGNAL \ALT_INV_inst17~combout\ : std_logic;

BEGIN

F <= ww_F;
ww_A <= A;
F2 <= ww_F2;
ww_A1 <= A1;
F3 <= ww_F3;
ww_A2 <= A2;
ww_B2 <= B2;
F4 <= ww_F4;
ww_A3 <= A3;
ww_B3 <= B3;
F5 <= ww_F5;
ww_A4 <= A4;
F6 <= ww_F6;
F7 <= ww_F7;
ww_B4 <= B4;
F8 <= ww_F8;
F9 <= ww_F9;
ww_B5 <= B5;
ww_A5 <= A5;
F10 <= ww_F10;
F11 <= ww_F11;
ww_B6 <= B6;
ww_A6 <= A6;
F12 <= ww_F12;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A6~input_o\ <= NOT \A6~input_o\;
\ALT_INV_B6~input_o\ <= NOT \B6~input_o\;
\ALT_INV_A5~input_o\ <= NOT \A5~input_o\;
\ALT_INV_B5~input_o\ <= NOT \B5~input_o\;
\ALT_INV_B4~input_o\ <= NOT \B4~input_o\;
\ALT_INV_A4~input_o\ <= NOT \A4~input_o\;
\ALT_INV_inst14~combout\ <= NOT \inst14~combout\;
\ALT_INV_inst17~combout\ <= NOT \inst17~combout\;

-- Location: IOOBUF_X32_Y0_N2
\F~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_F);

-- Location: IOOBUF_X89_Y6_N39
\F2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_F2);

-- Location: IOOBUF_X89_Y25_N22
\F3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A2~input_o\,
	devoe => ww_devoe,
	o => ww_F3);

-- Location: IOOBUF_X89_Y21_N5
\F4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A3~input_o\,
	devoe => ww_devoe,
	o => ww_F4);

-- Location: IOOBUF_X89_Y23_N5
\F5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_A4~input_o\,
	devoe => ww_devoe,
	o => ww_F5);

-- Location: IOOBUF_X89_Y23_N56
\F6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A4~input_o\,
	devoe => ww_devoe,
	o => ww_F6);

-- Location: IOOBUF_X89_Y25_N56
\F7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_B4~input_o\,
	devoe => ww_devoe,
	o => ww_F7);

-- Location: IOOBUF_X89_Y25_N39
\F8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \B4~input_o\,
	devoe => ww_devoe,
	o => ww_F8);

-- Location: IOOBUF_X4_Y0_N53
\F9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17~combout\,
	devoe => ww_devoe,
	o => ww_F9);

-- Location: IOOBUF_X4_Y0_N19
\F10~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst17~combout\,
	devoe => ww_devoe,
	o => ww_F10);

-- Location: IOOBUF_X4_Y0_N36
\F11~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst14~combout\,
	devoe => ww_devoe,
	o => ww_F11);

-- Location: IOOBUF_X6_Y0_N2
\F12~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~combout\,
	devoe => ww_devoe,
	o => ww_F12);

-- Location: IOIBUF_X89_Y25_N4
\A2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\A3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\A4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A4,
	o => \A4~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\B4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B4,
	o => \B4~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\A5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A5,
	o => \A5~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\B5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B5,
	o => \B5~input_o\);

-- Location: LABCELL_X88_Y20_N30
inst17 : cyclonev_lcell_comb
-- Equation(s):
-- \inst17~combout\ = ( \B5~input_o\ ) # ( !\B5~input_o\ & ( \A5~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A5~input_o\,
	dataf => \ALT_INV_B5~input_o\,
	combout => \inst17~combout\);

-- Location: IOIBUF_X89_Y20_N78
\A6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A6,
	o => \A6~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\B6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B6,
	o => \B6~input_o\);

-- Location: LABCELL_X88_Y20_N9
inst14 : cyclonev_lcell_comb
-- Equation(s):
-- \inst14~combout\ = ( \B6~input_o\ & ( !\A6~input_o\ ) ) # ( !\B6~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001111000011111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A6~input_o\,
	datae => \ALT_INV_B6~input_o\,
	combout => \inst14~combout\);

-- Location: IOIBUF_X18_Y81_N75
\A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\A1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\B2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: IOIBUF_X2_Y81_N75
\B3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: MLABCELL_X47_Y14_N0
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


