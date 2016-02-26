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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/18/2016 22:20:17"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ten_bit_adder IS
    PORT (
	Cout : OUT std_logic;
	X : IN std_logic_vector(9 DOWNTO 0);
	Y : IN std_logic_vector(9 DOWNTO 0);
	S : OUT std_logic_vector(9 DOWNTO 0);
	EN : IN std_logic
	);
END ten_bit_adder;

-- Design Ports Information
-- Cout	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[9]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[7]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[6]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[8]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ten_bit_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_X : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_EN : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \Y[8]~input_o\ : std_logic;
SIGNAL \Y[7]~input_o\ : std_logic;
SIGNAL \X[4]~input_o\ : std_logic;
SIGNAL \Y[4]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \inst9|inst3~0_combout\ : std_logic;
SIGNAL \inst10|inst3~1_combout\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \inst10|inst3~0_combout\ : std_logic;
SIGNAL \inst11|inst3~0_combout\ : std_logic;
SIGNAL \inst13|inst3~0_combout\ : std_logic;
SIGNAL \Y[5]~input_o\ : std_logic;
SIGNAL \X[5]~input_o\ : std_logic;
SIGNAL \inst13|inst3~1_combout\ : std_logic;
SIGNAL \X[6]~input_o\ : std_logic;
SIGNAL \Y[6]~input_o\ : std_logic;
SIGNAL \inst15|inst3~0_combout\ : std_logic;
SIGNAL \X[7]~input_o\ : std_logic;
SIGNAL \inst15|inst3~1_combout\ : std_logic;
SIGNAL \X[8]~input_o\ : std_logic;
SIGNAL \inst17|inst3~0_combout\ : std_logic;
SIGNAL \Y[9]~input_o\ : std_logic;
SIGNAL \X[9]~input_o\ : std_logic;
SIGNAL \inst17|inst3~1_combout\ : std_logic;
SIGNAL \inst17|inst2~0_combout\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \inst25~combout\ : std_logic;
SIGNAL \inst24~combout\ : std_logic;
SIGNAL \inst23~combout\ : std_logic;
SIGNAL \inst22~combout\ : std_logic;
SIGNAL \inst21~combout\ : std_logic;
SIGNAL \inst20~combout\ : std_logic;
SIGNAL \inst11|inst2~combout\ : std_logic;
SIGNAL \inst19~combout\ : std_logic;
SIGNAL \inst18~combout\ : std_logic;
SIGNAL \inst9|inst2~0_combout\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;

BEGIN

Cout <= ww_Cout;
ww_X <= X;
ww_Y <= Y;
S <= ww_S;
ww_EN <= EN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X33_Y28_N2
\Cout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|inst3~1_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\S[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25~combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\S[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24~combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\S[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23~combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\S[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22~combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\S[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst21~combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\S[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20~combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\S[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\S[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18~combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\S[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\S[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOIBUF_X22_Y31_N1
\Y[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(8),
	o => \Y[8]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\Y[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(7),
	o => \Y[7]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\X[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(4),
	o => \X[4]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\Y[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(4),
	o => \Y[4]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\X[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\X[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\Y[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\Y[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\X[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\Y[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: IOIBUF_X33_Y16_N8
\X[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: LCCOMB_X19_Y9_N24
\inst9|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|inst3~0_combout\ = (\Y[1]~input_o\ & ((\X[1]~input_o\) # ((\X[0]~input_o\ & \Y[0]~input_o\)))) # (!\Y[1]~input_o\ & (\X[0]~input_o\ & (\Y[0]~input_o\ & \X[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \Y[0]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst9|inst3~0_combout\);

-- Location: LCCOMB_X19_Y9_N4
\inst10|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst3~1_combout\ = (\X[2]~input_o\ & ((\Y[2]~input_o\) # (\inst9|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \Y[2]~input_o\,
	datad => \inst9|inst3~0_combout\,
	combout => \inst10|inst3~1_combout\);

-- Location: IOIBUF_X12_Y0_N8
\Y[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: LCCOMB_X19_Y9_N2
\inst10|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst3~0_combout\ = (\Y[2]~input_o\ & \inst9|inst3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y[2]~input_o\,
	datad => \inst9|inst3~0_combout\,
	combout => \inst10|inst3~0_combout\);

-- Location: LCCOMB_X19_Y9_N14
\inst11|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11|inst3~0_combout\ = (\X[3]~input_o\ & ((\inst10|inst3~1_combout\) # ((\Y[3]~input_o\) # (\inst10|inst3~0_combout\)))) # (!\X[3]~input_o\ & (\Y[3]~input_o\ & ((\inst10|inst3~1_combout\) # (\inst10|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \inst10|inst3~1_combout\,
	datac => \Y[3]~input_o\,
	datad => \inst10|inst3~0_combout\,
	combout => \inst11|inst3~0_combout\);

-- Location: LCCOMB_X19_Y9_N16
\inst13|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst13|inst3~0_combout\ = (\X[4]~input_o\ & ((\Y[4]~input_o\) # (\inst11|inst3~0_combout\))) # (!\X[4]~input_o\ & (\Y[4]~input_o\ & \inst11|inst3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datab => \Y[4]~input_o\,
	datac => \inst11|inst3~0_combout\,
	combout => \inst13|inst3~0_combout\);

-- Location: IOIBUF_X14_Y0_N8
\Y[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(5),
	o => \Y[5]~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\X[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(5),
	o => \X[5]~input_o\);

-- Location: LCCOMB_X19_Y9_N26
\inst13|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst13|inst3~1_combout\ = (\inst13|inst3~0_combout\ & ((\Y[5]~input_o\) # (\X[5]~input_o\))) # (!\inst13|inst3~0_combout\ & (\Y[5]~input_o\ & \X[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst3~0_combout\,
	datac => \Y[5]~input_o\,
	datad => \X[5]~input_o\,
	combout => \inst13|inst3~1_combout\);

-- Location: IOIBUF_X33_Y10_N8
\X[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(6),
	o => \X[6]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\Y[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(6),
	o => \Y[6]~input_o\);

-- Location: LCCOMB_X19_Y9_N28
\inst15|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|inst3~0_combout\ = (\inst13|inst3~1_combout\ & ((\X[6]~input_o\) # (\Y[6]~input_o\))) # (!\inst13|inst3~1_combout\ & (\X[6]~input_o\ & \Y[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst3~1_combout\,
	datac => \X[6]~input_o\,
	datad => \Y[6]~input_o\,
	combout => \inst15|inst3~0_combout\);

-- Location: IOIBUF_X33_Y25_N1
\X[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(7),
	o => \X[7]~input_o\);

-- Location: LCCOMB_X20_Y28_N0
\inst15|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|inst3~1_combout\ = (\Y[7]~input_o\ & ((\inst15|inst3~0_combout\) # (\X[7]~input_o\))) # (!\Y[7]~input_o\ & (\inst15|inst3~0_combout\ & \X[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[7]~input_o\,
	datac => \inst15|inst3~0_combout\,
	datad => \X[7]~input_o\,
	combout => \inst15|inst3~1_combout\);

-- Location: IOIBUF_X33_Y27_N8
\X[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(8),
	o => \X[8]~input_o\);

-- Location: LCCOMB_X20_Y28_N26
\inst17|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst17|inst3~0_combout\ = (\Y[8]~input_o\ & ((\inst15|inst3~1_combout\) # (\X[8]~input_o\))) # (!\Y[8]~input_o\ & (\inst15|inst3~1_combout\ & \X[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[8]~input_o\,
	datab => \inst15|inst3~1_combout\,
	datac => \X[8]~input_o\,
	combout => \inst17|inst3~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\Y[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(9),
	o => \Y[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\X[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(9),
	o => \X[9]~input_o\);

-- Location: LCCOMB_X20_Y28_N28
\inst17|inst3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst17|inst3~1_combout\ = (\inst17|inst3~0_combout\ & ((\Y[9]~input_o\) # (\X[9]~input_o\))) # (!\inst17|inst3~0_combout\ & (\Y[9]~input_o\ & \X[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst3~0_combout\,
	datab => \Y[9]~input_o\,
	datac => \X[9]~input_o\,
	combout => \inst17|inst3~1_combout\);

-- Location: LCCOMB_X20_Y28_N6
\inst17|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst17|inst2~0_combout\ = \X[9]~input_o\ $ (((\Y[8]~input_o\ & ((\X[8]~input_o\) # (\inst15|inst3~1_combout\))) # (!\Y[8]~input_o\ & (\X[8]~input_o\ & \inst15|inst3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[8]~input_o\,
	datab => \X[9]~input_o\,
	datac => \X[8]~input_o\,
	datad => \inst15|inst3~1_combout\,
	combout => \inst17|inst2~0_combout\);

-- Location: IOIBUF_X33_Y22_N8
\EN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: LCCOMB_X20_Y28_N16
inst25 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst25~combout\ = (\EN~input_o\ & (\inst17|inst2~0_combout\ $ (\Y[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst2~0_combout\,
	datab => \Y[9]~input_o\,
	datad => \EN~input_o\,
	combout => \inst25~combout\);

-- Location: LCCOMB_X20_Y28_N2
inst24 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst24~combout\ = (\EN~input_o\ & (\Y[8]~input_o\ $ (\inst15|inst3~1_combout\ $ (\X[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[8]~input_o\,
	datab => \inst15|inst3~1_combout\,
	datac => \X[8]~input_o\,
	datad => \EN~input_o\,
	combout => \inst24~combout\);

-- Location: LCCOMB_X20_Y28_N12
inst23 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst23~combout\ = (\EN~input_o\ & (\Y[7]~input_o\ $ (\inst15|inst3~0_combout\ $ (\X[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \Y[7]~input_o\,
	datac => \inst15|inst3~0_combout\,
	datad => \X[7]~input_o\,
	combout => \inst23~combout\);

-- Location: LCCOMB_X19_Y9_N22
inst22 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst22~combout\ = (\EN~input_o\ & (\inst13|inst3~1_combout\ $ (\X[6]~input_o\ $ (\Y[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst3~1_combout\,
	datab => \X[6]~input_o\,
	datac => \Y[6]~input_o\,
	datad => \EN~input_o\,
	combout => \inst22~combout\);

-- Location: LCCOMB_X19_Y9_N0
inst21 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst21~combout\ = (\EN~input_o\ & (\X[5]~input_o\ $ (\inst13|inst3~0_combout\ $ (\Y[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[5]~input_o\,
	datab => \inst13|inst3~0_combout\,
	datac => \Y[5]~input_o\,
	datad => \EN~input_o\,
	combout => \inst21~combout\);

-- Location: LCCOMB_X19_Y9_N18
inst20 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst20~combout\ = (\EN~input_o\ & (\X[4]~input_o\ $ (\Y[4]~input_o\ $ (\inst11|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datab => \Y[4]~input_o\,
	datac => \inst11|inst3~0_combout\,
	datad => \EN~input_o\,
	combout => \inst20~combout\);

-- Location: LCCOMB_X19_Y9_N12
\inst11|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11|inst2~combout\ = \X[3]~input_o\ $ (\Y[3]~input_o\ $ (((\inst10|inst3~1_combout\) # (\inst10|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \inst10|inst3~1_combout\,
	datac => \Y[3]~input_o\,
	datad => \inst10|inst3~0_combout\,
	combout => \inst11|inst2~combout\);

-- Location: LCCOMB_X19_Y9_N30
inst19 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst19~combout\ = (\EN~input_o\ & \inst11|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EN~input_o\,
	datad => \inst11|inst2~combout\,
	combout => \inst19~combout\);

-- Location: LCCOMB_X19_Y9_N8
inst18 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst18~combout\ = (\EN~input_o\ & (\X[2]~input_o\ $ (\inst9|inst3~0_combout\ $ (\Y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \inst9|inst3~0_combout\,
	datac => \Y[2]~input_o\,
	datad => \EN~input_o\,
	combout => \inst18~combout\);

-- Location: LCCOMB_X19_Y9_N10
\inst9|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|inst2~0_combout\ = \Y[1]~input_o\ $ (\X[1]~input_o\ $ (((\X[0]~input_o\ & \Y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \Y[0]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst9|inst2~0_combout\);

-- Location: LCCOMB_X19_Y9_N20
inst7 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7~combout\ = (\EN~input_o\ & \inst9|inst2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EN~input_o\,
	datad => \inst9|inst2~0_combout\,
	combout => \inst7~combout\);

-- Location: LCCOMB_X19_Y9_N6
inst6 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6~combout\ = (\EN~input_o\ & (\X[0]~input_o\ $ (\Y[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X[0]~input_o\,
	datac => \Y[0]~input_o\,
	datad => \EN~input_o\,
	combout => \inst6~combout\);

ww_Cout <= \Cout~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;
END structure;


