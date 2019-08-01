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

-- DATE "08/01/2019 23:28:58"

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
	B3 : IN std_logic
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
-- A2	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \F2~output_o\ : std_logic;
SIGNAL \F3~output_o\ : std_logic;
SIGNAL \F4~output_o\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

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
END structure;


