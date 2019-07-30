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

-- DATE "07/30/2019 21:38:31"

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

ENTITY 	Learn_VHDL IS
    PORT (
	F : OUT std_logic;
	B : IN std_logic;
	A : IN std_logic
	);
END Learn_VHDL;

-- Design Ports Information
-- F	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Learn_VHDL IS
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
SIGNAL ww_B : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \ALT_INV_inst~combout\ : std_logic;

BEGIN

F <= ww_F;
ww_B <= B;
ww_A <= A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst~combout\ <= NOT \inst~combout\;

-- Location: IOOBUF_X0_Y27_N16
\F~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst~combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOIBUF_X0_Y25_N1
\A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X1_Y27_N16
inst : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\A~input_o\ & \B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~input_o\,
	datac => \B~input_o\,
	combout => \inst~combout\);

ww_F <= \F~output_o\;
END structure;


