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

-- DATE "08/24/2019 23:24:32"

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

ENTITY 	eight_bit_adder IS
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
	S5 : OUT std_logic;
	A7 : IN std_logic;
	B7 : IN std_logic;
	A6 : IN std_logic;
	B6 : IN std_logic;
	A5 : IN std_logic;
	B5 : IN std_logic;
	A4 : IN std_logic;
	B4 : IN std_logic;
	S4 : OUT std_logic;
	C7 : OUT std_logic;
	S7 : OUT std_logic;
	S6 : OUT std_logic
	);
END eight_bit_adder;

-- Design Ports Information
-- S3	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C7	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S7	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S6	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A5	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B5	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A4	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B4	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A6	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B6	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A7	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B7	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF eight_bit_adder IS
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
SIGNAL ww_S5 : std_logic;
SIGNAL ww_A7 : std_logic;
SIGNAL ww_B7 : std_logic;
SIGNAL ww_A6 : std_logic;
SIGNAL ww_B6 : std_logic;
SIGNAL ww_A5 : std_logic;
SIGNAL ww_B5 : std_logic;
SIGNAL ww_A4 : std_logic;
SIGNAL ww_B4 : std_logic;
SIGNAL ww_S4 : std_logic;
SIGNAL ww_C7 : std_logic;
SIGNAL ww_S7 : std_logic;
SIGNAL ww_S6 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \inst|inst2|inst2~combout\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \inst|inst|inst1|inst~combout\ : std_logic;
SIGNAL \inst|inst2|inst1|inst~combout\ : std_logic;
SIGNAL \inst|inst3|inst1|inst~combout\ : std_logic;
SIGNAL \inst|inst4|inst|inst~combout\ : std_logic;
SIGNAL \B4~input_o\ : std_logic;
SIGNAL \A4~input_o\ : std_logic;
SIGNAL \B5~input_o\ : std_logic;
SIGNAL \A5~input_o\ : std_logic;
SIGNAL \inst2|inst3|inst|inst~combout\ : std_logic;
SIGNAL \inst2|inst3|inst1|inst~combout\ : std_logic;
SIGNAL \inst2|inst4|inst1|inst~combout\ : std_logic;
SIGNAL \B6~input_o\ : std_logic;
SIGNAL \A7~input_o\ : std_logic;
SIGNAL \B7~input_o\ : std_logic;
SIGNAL \A6~input_o\ : std_logic;
SIGNAL \inst2|inst3|inst|inst2~combout\ : std_logic;
SIGNAL \inst2|inst3|inst1|inst2~combout\ : std_logic;
SIGNAL \inst2|inst|inst2~combout\ : std_logic;
SIGNAL \inst2|inst|inst1|inst~combout\ : std_logic;
SIGNAL \inst2|inst2|inst1|inst~combout\ : std_logic;
SIGNAL \ALT_INV_B7~input_o\ : std_logic;
SIGNAL \ALT_INV_A7~input_o\ : std_logic;
SIGNAL \ALT_INV_B6~input_o\ : std_logic;
SIGNAL \ALT_INV_A6~input_o\ : std_logic;
SIGNAL \ALT_INV_B4~input_o\ : std_logic;
SIGNAL \ALT_INV_A4~input_o\ : std_logic;
SIGNAL \ALT_INV_B5~input_o\ : std_logic;
SIGNAL \ALT_INV_A5~input_o\ : std_logic;
SIGNAL \ALT_INV_B3~input_o\ : std_logic;
SIGNAL \ALT_INV_A3~input_o\ : std_logic;
SIGNAL \ALT_INV_B0~input_o\ : std_logic;
SIGNAL \ALT_INV_A0~input_o\ : std_logic;
SIGNAL \ALT_INV_B1~input_o\ : std_logic;
SIGNAL \ALT_INV_A1~input_o\ : std_logic;
SIGNAL \ALT_INV_B2~input_o\ : std_logic;
SIGNAL \ALT_INV_A2~input_o\ : std_logic;
SIGNAL \inst2|inst3|inst|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst2|inst3|inst1|ALT_INV_inst2~combout\ : std_logic;
SIGNAL \inst2|inst3|inst|ALT_INV_inst~combout\ : std_logic;
SIGNAL \inst|inst2|ALT_INV_inst2~combout\ : std_logic;

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
S5 <= ww_S5;
ww_A7 <= A7;
ww_B7 <= B7;
ww_A6 <= A6;
ww_B6 <= B6;
ww_A5 <= A5;
ww_B5 <= B5;
ww_A4 <= A4;
ww_B4 <= B4;
S4 <= ww_S4;
C7 <= ww_C7;
S7 <= ww_S7;
S6 <= ww_S6;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B7~input_o\ <= NOT \B7~input_o\;
\ALT_INV_A7~input_o\ <= NOT \A7~input_o\;
\ALT_INV_B6~input_o\ <= NOT \B6~input_o\;
\ALT_INV_A6~input_o\ <= NOT \A6~input_o\;
\ALT_INV_B4~input_o\ <= NOT \B4~input_o\;
\ALT_INV_A4~input_o\ <= NOT \A4~input_o\;
\ALT_INV_B5~input_o\ <= NOT \B5~input_o\;
\ALT_INV_A5~input_o\ <= NOT \A5~input_o\;
\ALT_INV_B3~input_o\ <= NOT \B3~input_o\;
\ALT_INV_A3~input_o\ <= NOT \A3~input_o\;
\ALT_INV_B0~input_o\ <= NOT \B0~input_o\;
\ALT_INV_A0~input_o\ <= NOT \A0~input_o\;
\ALT_INV_B1~input_o\ <= NOT \B1~input_o\;
\ALT_INV_A1~input_o\ <= NOT \A1~input_o\;
\ALT_INV_B2~input_o\ <= NOT \B2~input_o\;
\ALT_INV_A2~input_o\ <= NOT \A2~input_o\;
\inst2|inst3|inst|ALT_INV_inst2~combout\ <= NOT \inst2|inst3|inst|inst2~combout\;
\inst2|inst3|inst1|ALT_INV_inst2~combout\ <= NOT \inst2|inst3|inst1|inst2~combout\;
\inst2|inst3|inst|ALT_INV_inst~combout\ <= NOT \inst2|inst3|inst|inst~combout\;
\inst|inst2|ALT_INV_inst2~combout\ <= NOT \inst|inst2|inst2~combout\;

-- Location: IOOBUF_X64_Y0_N19
\S3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|inst1|inst~combout\,
	devoe => ww_devoe,
	o => ww_S3);

-- Location: IOOBUF_X74_Y0_N59
\S2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst1|inst~combout\,
	devoe => ww_devoe,
	o => ww_S2);

-- Location: IOOBUF_X76_Y0_N36
\S1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst1|inst~combout\,
	devoe => ww_devoe,
	o => ww_S1);

-- Location: IOOBUF_X66_Y0_N59
\S0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst|inst~combout\,
	devoe => ww_devoe,
	o => ww_S0);

-- Location: IOOBUF_X76_Y0_N19
\S5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst3|inst1|inst~combout\,
	devoe => ww_devoe,
	o => ww_S5);

-- Location: IOOBUF_X68_Y0_N19
\S4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst4|inst1|inst~combout\,
	devoe => ww_devoe,
	o => ww_S4);

-- Location: IOOBUF_X66_Y0_N76
\C7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|inst2~combout\,
	devoe => ww_devoe,
	o => ww_C7);

-- Location: IOOBUF_X74_Y0_N93
\S7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|inst1|inst~combout\,
	devoe => ww_devoe,
	o => ww_S7);

-- Location: IOOBUF_X72_Y0_N36
\S6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst2|inst1|inst~combout\,
	devoe => ww_devoe,
	o => ww_S6);

-- Location: IOIBUF_X70_Y0_N52
\B3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: IOIBUF_X74_Y0_N41
\A0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\B0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\B2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: IOIBUF_X74_Y0_N75
\B1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\A1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X76_Y0_N52
\A2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: LABCELL_X71_Y1_N0
\inst|inst2|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst2~combout\ = ( \A1~input_o\ & ( \A2~input_o\ & ( (((\A0~input_o\ & \B0~input_o\)) # (\B1~input_o\)) # (\B2~input_o\) ) ) ) # ( !\A1~input_o\ & ( \A2~input_o\ & ( ((\A0~input_o\ & (\B0~input_o\ & \B1~input_o\))) # (\B2~input_o\) ) ) ) # ( 
-- \A1~input_o\ & ( !\A2~input_o\ & ( (\B2~input_o\ & (((\A0~input_o\ & \B0~input_o\)) # (\B1~input_o\))) ) ) ) # ( !\A1~input_o\ & ( !\A2~input_o\ & ( (\A0~input_o\ & (\B0~input_o\ & (\B2~input_o\ & \B1~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010000111100001111000111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A0~input_o\,
	datab => \ALT_INV_B0~input_o\,
	datac => \ALT_INV_B2~input_o\,
	datad => \ALT_INV_B1~input_o\,
	datae => \ALT_INV_A1~input_o\,
	dataf => \ALT_INV_A2~input_o\,
	combout => \inst|inst2|inst2~combout\);

-- Location: IOIBUF_X68_Y0_N1
\A3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: LABCELL_X71_Y1_N36
\inst|inst|inst1|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|inst~combout\ = ( \A3~input_o\ & ( !\B3~input_o\ $ (\inst|inst2|inst2~combout\) ) ) # ( !\A3~input_o\ & ( !\B3~input_o\ $ (!\inst|inst2|inst2~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B3~input_o\,
	datac => \inst|inst2|ALT_INV_inst2~combout\,
	dataf => \ALT_INV_A3~input_o\,
	combout => \inst|inst|inst1|inst~combout\);

-- Location: LABCELL_X71_Y1_N42
\inst|inst2|inst1|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1|inst~combout\ = ( \A1~input_o\ & ( \A2~input_o\ & ( !\B2~input_o\ $ ((((\A0~input_o\ & \B0~input_o\)) # (\B1~input_o\))) ) ) ) # ( !\A1~input_o\ & ( \A2~input_o\ & ( !\B2~input_o\ $ (((\A0~input_o\ & (\B0~input_o\ & \B1~input_o\)))) ) ) 
-- ) # ( \A1~input_o\ & ( !\A2~input_o\ & ( !\B2~input_o\ $ (((!\B1~input_o\ & ((!\A0~input_o\) # (!\B0~input_o\))))) ) ) ) # ( !\A1~input_o\ & ( !\A2~input_o\ & ( !\B2~input_o\ $ (((!\A0~input_o\) # ((!\B0~input_o\) # (!\B1~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110000111101111000011110000111000011110000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A0~input_o\,
	datab => \ALT_INV_B0~input_o\,
	datac => \ALT_INV_B2~input_o\,
	datad => \ALT_INV_B1~input_o\,
	datae => \ALT_INV_A1~input_o\,
	dataf => \ALT_INV_A2~input_o\,
	combout => \inst|inst2|inst1|inst~combout\);

-- Location: LABCELL_X71_Y1_N18
\inst|inst3|inst1|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1|inst~combout\ = !\A1~input_o\ $ (!\B1~input_o\ $ (((\A0~input_o\ & \B0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000100011110111000010001111011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A0~input_o\,
	datab => \ALT_INV_B0~input_o\,
	datac => \ALT_INV_A1~input_o\,
	datad => \ALT_INV_B1~input_o\,
	combout => \inst|inst3|inst1|inst~combout\);

-- Location: LABCELL_X71_Y1_N21
\inst|inst4|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4|inst|inst~combout\ = !\A0~input_o\ $ (!\B0~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A0~input_o\,
	datab => \ALT_INV_B0~input_o\,
	combout => \inst|inst4|inst|inst~combout\);

-- Location: IOIBUF_X68_Y0_N35
\B4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B4,
	o => \B4~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\A4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A4,
	o => \A4~input_o\);

-- Location: IOIBUF_X76_Y0_N1
\B5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B5,
	o => \B5~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\A5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A5,
	o => \A5~input_o\);

-- Location: LABCELL_X71_Y1_N24
\inst2|inst3|inst|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst|inst~combout\ = !\B5~input_o\ $ (!\A5~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B5~input_o\,
	datab => \ALT_INV_A5~input_o\,
	combout => \inst2|inst3|inst|inst~combout\);

-- Location: LABCELL_X71_Y1_N30
\inst2|inst3|inst1|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst1|inst~combout\ = ( \A4~input_o\ & ( \inst2|inst3|inst|inst~combout\ & ( (!\B4~input_o\ & ((!\inst|inst2|inst2~combout\ & ((!\B3~input_o\) # (!\A3~input_o\))) # (\inst|inst2|inst2~combout\ & (!\B3~input_o\ & !\A3~input_o\)))) ) ) ) # ( 
-- !\A4~input_o\ & ( \inst2|inst3|inst|inst~combout\ & ( (!\B4~input_o\) # ((!\inst|inst2|inst2~combout\ & ((!\B3~input_o\) # (!\A3~input_o\))) # (\inst|inst2|inst2~combout\ & (!\B3~input_o\ & !\A3~input_o\))) ) ) ) # ( \A4~input_o\ & ( 
-- !\inst2|inst3|inst|inst~combout\ & ( ((!\inst|inst2|inst2~combout\ & (\B3~input_o\ & \A3~input_o\)) # (\inst|inst2|inst2~combout\ & ((\A3~input_o\) # (\B3~input_o\)))) # (\B4~input_o\) ) ) ) # ( !\A4~input_o\ & ( !\inst2|inst3|inst|inst~combout\ & ( 
-- (\B4~input_o\ & ((!\inst|inst2|inst2~combout\ & (\B3~input_o\ & \A3~input_o\)) # (\inst|inst2|inst2~combout\ & ((\A3~input_o\) # (\B3~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010011001101110111111111111110111011001100100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ALT_INV_inst2~combout\,
	datab => \ALT_INV_B4~input_o\,
	datac => \ALT_INV_B3~input_o\,
	datad => \ALT_INV_A3~input_o\,
	datae => \ALT_INV_A4~input_o\,
	dataf => \inst2|inst3|inst|ALT_INV_inst~combout\,
	combout => \inst2|inst3|inst1|inst~combout\);

-- Location: LABCELL_X71_Y1_N39
\inst2|inst4|inst1|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst4|inst1|inst~combout\ = ( \A3~input_o\ & ( !\B4~input_o\ $ (!\A4~input_o\ $ (((\B3~input_o\) # (\inst|inst2|inst2~combout\)))) ) ) # ( !\A3~input_o\ & ( !\B4~input_o\ $ (!\A4~input_o\ $ (((\inst|inst2|inst2~combout\ & \B3~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ALT_INV_inst2~combout\,
	datab => \ALT_INV_B3~input_o\,
	datac => \ALT_INV_B4~input_o\,
	datad => \ALT_INV_A4~input_o\,
	dataf => \ALT_INV_A3~input_o\,
	combout => \inst2|inst4|inst1|inst~combout\);

-- Location: IOIBUF_X70_Y0_N1
\B6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B6,
	o => \B6~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\A7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A7,
	o => \A7~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\B7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B7,
	o => \B7~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\A6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A6,
	o => \A6~input_o\);

-- Location: LABCELL_X71_Y1_N27
\inst2|inst3|inst|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst|inst2~combout\ = (\B5~input_o\ & \A5~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B5~input_o\,
	datab => \ALT_INV_A5~input_o\,
	combout => \inst2|inst3|inst|inst2~combout\);

-- Location: LABCELL_X71_Y1_N6
\inst2|inst3|inst1|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst3|inst1|inst2~combout\ = ( \A4~input_o\ & ( \inst2|inst3|inst|inst~combout\ & ( ((!\inst|inst2|inst2~combout\ & (\B3~input_o\ & \A3~input_o\)) # (\inst|inst2|inst2~combout\ & ((\A3~input_o\) # (\B3~input_o\)))) # (\B4~input_o\) ) ) ) # ( 
-- !\A4~input_o\ & ( \inst2|inst3|inst|inst~combout\ & ( (\B4~input_o\ & ((!\inst|inst2|inst2~combout\ & (\B3~input_o\ & \A3~input_o\)) # (\inst|inst2|inst2~combout\ & ((\A3~input_o\) # (\B3~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000100110011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|ALT_INV_inst2~combout\,
	datab => \ALT_INV_B4~input_o\,
	datac => \ALT_INV_B3~input_o\,
	datad => \ALT_INV_A3~input_o\,
	datae => \ALT_INV_A4~input_o\,
	dataf => \inst2|inst3|inst|ALT_INV_inst~combout\,
	combout => \inst2|inst3|inst1|inst2~combout\);

-- Location: LABCELL_X71_Y1_N12
\inst2|inst|inst2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst|inst2~combout\ = ( \inst2|inst3|inst|inst2~combout\ & ( \inst2|inst3|inst1|inst2~combout\ & ( (!\A7~input_o\ & (\B7~input_o\ & ((\A6~input_o\) # (\B6~input_o\)))) # (\A7~input_o\ & (((\A6~input_o\) # (\B7~input_o\)) # (\B6~input_o\))) ) ) ) # 
-- ( !\inst2|inst3|inst|inst2~combout\ & ( \inst2|inst3|inst1|inst2~combout\ & ( (!\A7~input_o\ & (\B7~input_o\ & ((\A6~input_o\) # (\B6~input_o\)))) # (\A7~input_o\ & (((\A6~input_o\) # (\B7~input_o\)) # (\B6~input_o\))) ) ) ) # ( 
-- \inst2|inst3|inst|inst2~combout\ & ( !\inst2|inst3|inst1|inst2~combout\ & ( (!\A7~input_o\ & (\B7~input_o\ & ((\A6~input_o\) # (\B6~input_o\)))) # (\A7~input_o\ & (((\A6~input_o\) # (\B7~input_o\)) # (\B6~input_o\))) ) ) ) # ( 
-- !\inst2|inst3|inst|inst2~combout\ & ( !\inst2|inst3|inst1|inst2~combout\ & ( (!\A7~input_o\ & (\B6~input_o\ & (\B7~input_o\ & \A6~input_o\))) # (\A7~input_o\ & (((\B6~input_o\ & \A6~input_o\)) # (\B7~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000101110011111100010111001111110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B6~input_o\,
	datab => \ALT_INV_A7~input_o\,
	datac => \ALT_INV_B7~input_o\,
	datad => \ALT_INV_A6~input_o\,
	datae => \inst2|inst3|inst|ALT_INV_inst2~combout\,
	dataf => \inst2|inst3|inst1|ALT_INV_inst2~combout\,
	combout => \inst2|inst|inst2~combout\);

-- Location: LABCELL_X71_Y1_N48
\inst2|inst|inst1|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst|inst1|inst~combout\ = ( \inst2|inst3|inst|inst2~combout\ & ( \inst2|inst3|inst1|inst2~combout\ & ( !\A7~input_o\ $ (!\B7~input_o\ $ (((\A6~input_o\) # (\B6~input_o\)))) ) ) ) # ( !\inst2|inst3|inst|inst2~combout\ & ( 
-- \inst2|inst3|inst1|inst2~combout\ & ( !\A7~input_o\ $ (!\B7~input_o\ $ (((\A6~input_o\) # (\B6~input_o\)))) ) ) ) # ( \inst2|inst3|inst|inst2~combout\ & ( !\inst2|inst3|inst1|inst2~combout\ & ( !\A7~input_o\ $ (!\B7~input_o\ $ (((\A6~input_o\) # 
-- (\B6~input_o\)))) ) ) ) # ( !\inst2|inst3|inst|inst2~combout\ & ( !\inst2|inst3|inst1|inst2~combout\ & ( !\A7~input_o\ $ (!\B7~input_o\ $ (((\B6~input_o\ & \A6~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001011010011100001101101001110000110110100111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B6~input_o\,
	datab => \ALT_INV_A7~input_o\,
	datac => \ALT_INV_B7~input_o\,
	datad => \ALT_INV_A6~input_o\,
	datae => \inst2|inst3|inst|ALT_INV_inst2~combout\,
	dataf => \inst2|inst3|inst1|ALT_INV_inst2~combout\,
	combout => \inst2|inst|inst1|inst~combout\);

-- Location: LABCELL_X71_Y1_N54
\inst2|inst2|inst1|inst\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst1|inst~combout\ = ( \inst2|inst3|inst|inst2~combout\ & ( !\B6~input_o\ $ (\A6~input_o\) ) ) # ( !\inst2|inst3|inst|inst2~combout\ & ( !\inst2|inst3|inst1|inst2~combout\ $ (!\B6~input_o\ $ (\A6~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011111100000000111100111100110000111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst3|inst1|ALT_INV_inst2~combout\,
	datac => \ALT_INV_B6~input_o\,
	datad => \ALT_INV_A6~input_o\,
	datae => \inst2|inst3|inst|ALT_INV_inst2~combout\,
	combout => \inst2|inst2|inst1|inst~combout\);

-- Location: LABCELL_X70_Y25_N0
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


