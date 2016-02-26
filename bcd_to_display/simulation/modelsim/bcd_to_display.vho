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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "02/26/2016 15:29:32"

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

ENTITY 	bcd_to_display IS
    PORT (
	DISPout : OUT std_logic_vector(6 DOWNTO 0);
	BCDin : IN std_logic_vector(3 DOWNTO 0)
	);
END bcd_to_display;

-- Design Ports Information
-- DISPout[6]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPout[5]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPout[4]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPout[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPout[2]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPout[1]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPout[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDin[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDin[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDin[2]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDin[0]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcd_to_display IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DISPout : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BCDin : std_logic_vector(3 DOWNTO 0);
SIGNAL \DISPout[6]~output_o\ : std_logic;
SIGNAL \DISPout[5]~output_o\ : std_logic;
SIGNAL \DISPout[4]~output_o\ : std_logic;
SIGNAL \DISPout[3]~output_o\ : std_logic;
SIGNAL \DISPout[2]~output_o\ : std_logic;
SIGNAL \DISPout[1]~output_o\ : std_logic;
SIGNAL \DISPout[0]~output_o\ : std_logic;
SIGNAL \BCDin[2]~input_o\ : std_logic;
SIGNAL \BCDin[1]~input_o\ : std_logic;
SIGNAL \BCDin[3]~input_o\ : std_logic;
SIGNAL \BCDin[0]~input_o\ : std_logic;
SIGNAL \inst30~0_combout\ : std_logic;
SIGNAL \inst29~0_combout\ : std_logic;
SIGNAL \inst32~0_combout\ : std_logic;
SIGNAL \inst23~0_combout\ : std_logic;
SIGNAL \inst21~0_combout\ : std_logic;
SIGNAL \inst24~0_combout\ : std_logic;
SIGNAL \inst20~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst24~0_combout\ : std_logic;

BEGIN

DISPout <= ww_DISPout;
ww_BCDin <= BCDin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst24~0_combout\ <= NOT \inst24~0_combout\;

-- Location: IOOBUF_X0_Y8_N9
\DISPout[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30~0_combout\,
	devoe => ww_devoe,
	o => \DISPout[6]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\DISPout[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29~0_combout\,
	devoe => ww_devoe,
	o => \DISPout[5]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\DISPout[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32~0_combout\,
	devoe => ww_devoe,
	o => \DISPout[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\DISPout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23~0_combout\,
	devoe => ww_devoe,
	o => \DISPout[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\DISPout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21~0_combout\,
	devoe => ww_devoe,
	o => \DISPout[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\DISPout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst24~0_combout\,
	devoe => ww_devoe,
	o => \DISPout[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\DISPout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20~0_combout\,
	devoe => ww_devoe,
	o => \DISPout[0]~output_o\);

-- Location: IOIBUF_X0_Y8_N1
\BCDin[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCDin(2),
	o => \BCDin[2]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\BCDin[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCDin(1),
	o => \BCDin[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\BCDin[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCDin(3),
	o => \BCDin[3]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\BCDin[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCDin(0),
	o => \BCDin[0]~input_o\);

-- Location: LCCOMB_X1_Y8_N16
\inst30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst30~0_combout\ = (\BCDin[3]~input_o\) # ((\BCDin[2]~input_o\ & ((!\BCDin[0]~input_o\) # (!\BCDin[1]~input_o\))) # (!\BCDin[2]~input_o\ & (\BCDin[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDin[2]~input_o\,
	datab => \BCDin[1]~input_o\,
	datac => \BCDin[3]~input_o\,
	datad => \BCDin[0]~input_o\,
	combout => \inst30~0_combout\);

-- Location: LCCOMB_X1_Y8_N18
\inst29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst29~0_combout\ = (\BCDin[3]~input_o\) # ((\BCDin[2]~input_o\ & ((!\BCDin[0]~input_o\) # (!\BCDin[1]~input_o\))) # (!\BCDin[2]~input_o\ & (!\BCDin[1]~input_o\ & !\BCDin[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDin[2]~input_o\,
	datab => \BCDin[1]~input_o\,
	datac => \BCDin[3]~input_o\,
	datad => \BCDin[0]~input_o\,
	combout => \inst29~0_combout\);

-- Location: LCCOMB_X1_Y8_N12
\inst32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst32~0_combout\ = (!\BCDin[0]~input_o\ & ((\BCDin[1]~input_o\) # (!\BCDin[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDin[2]~input_o\,
	datab => \BCDin[1]~input_o\,
	datad => \BCDin[0]~input_o\,
	combout => \inst32~0_combout\);

-- Location: LCCOMB_X1_Y8_N14
\inst23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23~0_combout\ = (\BCDin[3]~input_o\) # ((\BCDin[2]~input_o\ & (\BCDin[1]~input_o\ $ (\BCDin[0]~input_o\))) # (!\BCDin[2]~input_o\ & ((\BCDin[1]~input_o\) # (!\BCDin[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDin[2]~input_o\,
	datab => \BCDin[1]~input_o\,
	datac => \BCDin[3]~input_o\,
	datad => \BCDin[0]~input_o\,
	combout => \inst23~0_combout\);

-- Location: LCCOMB_X1_Y8_N8
\inst21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst21~0_combout\ = (\BCDin[2]~input_o\) # (((\BCDin[3]~input_o\) # (\BCDin[0]~input_o\)) # (!\BCDin[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDin[2]~input_o\,
	datab => \BCDin[1]~input_o\,
	datac => \BCDin[3]~input_o\,
	datad => \BCDin[0]~input_o\,
	combout => \inst21~0_combout\);

-- Location: LCCOMB_X1_Y8_N2
\inst24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst24~0_combout\ = (\BCDin[1]~input_o\ & !\BCDin[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCDin[1]~input_o\,
	datad => \BCDin[0]~input_o\,
	combout => \inst24~0_combout\);

-- Location: LCCOMB_X1_Y8_N4
\inst20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20~0_combout\ = (\BCDin[1]~input_o\) # ((\BCDin[3]~input_o\) # (\BCDin[2]~input_o\ $ (!\BCDin[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCDin[2]~input_o\,
	datab => \BCDin[1]~input_o\,
	datac => \BCDin[3]~input_o\,
	datad => \BCDin[0]~input_o\,
	combout => \inst20~0_combout\);

ww_DISPout(6) <= \DISPout[6]~output_o\;

ww_DISPout(5) <= \DISPout[5]~output_o\;

ww_DISPout(4) <= \DISPout[4]~output_o\;

ww_DISPout(3) <= \DISPout[3]~output_o\;

ww_DISPout(2) <= \DISPout[2]~output_o\;

ww_DISPout(1) <= \DISPout[1]~output_o\;

ww_DISPout(0) <= \DISPout[0]~output_o\;
END structure;


