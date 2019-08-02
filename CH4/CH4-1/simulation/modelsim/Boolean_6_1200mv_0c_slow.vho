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

-- DATE "08/02/2019 23:29:18"

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
	F8 : OUT std_logic
	);
END Boolean;

-- Design Ports Information
-- F	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F3	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F4	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F5	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F6	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F7	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F8	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A4	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B4	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \F2~output_o\ : std_logic;
SIGNAL \F3~output_o\ : std_logic;
SIGNAL \F4~output_o\ : std_logic;
SIGNAL \F5~output_o\ : std_logic;
SIGNAL \F6~output_o\ : std_logic;
SIGNAL \F7~output_o\ : std_logic;
SIGNAL \F8~output_o\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \A4~input_o\ : std_logic;
SIGNAL \B4~input_o\ : std_logic;
SIGNAL \ALT_INV_B4~input_o\ : std_logic;
SIGNAL \ALT_INV_A4~input_o\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B4~input_o\ <= NOT \B4~input_o\;
\ALT_INV_A4~input_o\ <= NOT \A4~input_o\;

-- Location: IOOBUF_X0_Y27_N16
\F~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\F2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \F2~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\F3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2~input_o\,
	devoe => ww_devoe,
	o => \F3~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\F4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A3~input_o\,
	devoe => ww_devoe,
	o => \F4~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\F5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_A4~input_o\,
	devoe => ww_devoe,
	o => \F5~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\F6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A4~input_o\,
	devoe => ww_devoe,
	o => \F6~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\F7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_B4~input_o\,
	devoe => ww_devoe,
	o => \F7~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\F8~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B4~input_o\,
	devoe => ww_devoe,
	o => \F8~output_o\);

-- Location: IOIBUF_X0_Y26_N8
\A2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\A3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\A4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A4,
	o => \A4~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\B4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B4,
	o => \B4~input_o\);

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
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\B2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\B3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

ww_F <= \F~output_o\;

ww_F2 <= \F2~output_o\;

ww_F3 <= \F3~output_o\;

ww_F4 <= \F4~output_o\;

ww_F5 <= \F5~output_o\;

ww_F6 <= \F6~output_o\;

ww_F7 <= \F7~output_o\;

ww_F8 <= \F8~output_o\;
END structure;


