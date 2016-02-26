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

-- DATE "02/18/2016 22:56:52"

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

ENTITY 	ten_bit_adder_NO_BUS IS
    PORT (
	Cout : OUT std_logic;
	X9 : IN std_logic;
	Y9 : IN std_logic;
	ENY : IN std_logic;
	X8 : IN std_logic;
	Y8 : IN std_logic;
	X7 : IN std_logic;
	Y7 : IN std_logic;
	X6 : IN std_logic;
	Y6 : IN std_logic;
	X5 : IN std_logic;
	Y5 : IN std_logic;
	X4 : IN std_logic;
	Y4 : IN std_logic;
	X3 : IN std_logic;
	Y3 : IN std_logic;
	X2 : IN std_logic;
	Y2 : IN std_logic;
	X1 : IN std_logic;
	Y1 : IN std_logic;
	X0 : IN std_logic;
	Y0 : IN std_logic;
	S0 : OUT std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	S5 : OUT std_logic;
	S6 : OUT std_logic;
	S7 : OUT std_logic;
	S8 : OUT std_logic;
	S9 : OUT std_logic
	);
END ten_bit_adder_NO_BUS;

-- Design Ports Information
-- Cout	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S5	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S6	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S7	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S8	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S9	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y9	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENY	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y8	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y7	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y6	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y5	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y4	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y3	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y0	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X0	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X1	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X2	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X3	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X4	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X5	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X6	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X7	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X8	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X9	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ten_bit_adder_NO_BUS IS
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
SIGNAL ww_X9 : std_logic;
SIGNAL ww_Y9 : std_logic;
SIGNAL ww_ENY : std_logic;
SIGNAL ww_X8 : std_logic;
SIGNAL ww_Y8 : std_logic;
SIGNAL ww_X7 : std_logic;
SIGNAL ww_Y7 : std_logic;
SIGNAL ww_X6 : std_logic;
SIGNAL ww_Y6 : std_logic;
SIGNAL ww_X5 : std_logic;
SIGNAL ww_Y5 : std_logic;
SIGNAL ww_X4 : std_logic;
SIGNAL ww_Y4 : std_logic;
SIGNAL ww_X3 : std_logic;
SIGNAL ww_Y3 : std_logic;
SIGNAL ww_X2 : std_logic;
SIGNAL ww_Y2 : std_logic;
SIGNAL ww_X1 : std_logic;
SIGNAL ww_Y1 : std_logic;
SIGNAL ww_X0 : std_logic;
SIGNAL ww_Y0 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_S4 : std_logic;
SIGNAL ww_S5 : std_logic;
SIGNAL ww_S6 : std_logic;
SIGNAL ww_S7 : std_logic;
SIGNAL ww_S8 : std_logic;
SIGNAL ww_S9 : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \S4~output_o\ : std_logic;
SIGNAL \S5~output_o\ : std_logic;
SIGNAL \S6~output_o\ : std_logic;
SIGNAL \S7~output_o\ : std_logic;
SIGNAL \S8~output_o\ : std_logic;
SIGNAL \S9~output_o\ : std_logic;
SIGNAL \Y9~input_o\ : std_logic;
SIGNAL \ENY~input_o\ : std_logic;
SIGNAL \X9~input_o\ : std_logic;
SIGNAL \X8~input_o\ : std_logic;
SIGNAL \Y8~input_o\ : std_logic;
SIGNAL \X7~input_o\ : std_logic;
SIGNAL \Y7~input_o\ : std_logic;
SIGNAL \Y6~input_o\ : std_logic;
SIGNAL \X6~input_o\ : std_logic;
SIGNAL \X5~input_o\ : std_logic;
SIGNAL \Y4~input_o\ : std_logic;
SIGNAL \Y2~input_o\ : std_logic;
SIGNAL \X0~input_o\ : std_logic;
SIGNAL \Y0~input_o\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \Y1~input_o\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \X1~input_o\ : std_logic;
SIGNAL \inst9|inst3~0_combout\ : std_logic;
SIGNAL \X2~input_o\ : std_logic;
SIGNAL \inst10|inst3~0_combout\ : std_logic;
SIGNAL \X3~input_o\ : std_logic;
SIGNAL \Y3~input_o\ : std_logic;
SIGNAL \inst11|inst3~0_combout\ : std_logic;
SIGNAL \X4~input_o\ : std_logic;
SIGNAL \inst12|inst3~0_combout\ : std_logic;
SIGNAL \Y5~input_o\ : std_logic;
SIGNAL \inst13|inst3~0_combout\ : std_logic;
SIGNAL \inst14|inst3~0_combout\ : std_logic;
SIGNAL \inst15|inst3~0_combout\ : std_logic;
SIGNAL \inst16|inst3~0_combout\ : std_logic;
SIGNAL \inst17|inst3~0_combout\ : std_logic;
SIGNAL \inst8|inst~combout\ : std_logic;
SIGNAL \inst9|inst2~combout\ : std_logic;
SIGNAL \inst10|inst2~0_combout\ : std_logic;
SIGNAL \inst11|inst2~0_combout\ : std_logic;
SIGNAL \inst12|inst2~0_combout\ : std_logic;
SIGNAL \inst13|inst2~0_combout\ : std_logic;
SIGNAL \inst14|inst2~0_combout\ : std_logic;
SIGNAL \inst15|inst2~0_combout\ : std_logic;
SIGNAL \inst16|inst2~0_combout\ : std_logic;
SIGNAL \inst17|inst2~0_combout\ : std_logic;

BEGIN

Cout <= ww_Cout;
ww_X9 <= X9;
ww_Y9 <= Y9;
ww_ENY <= ENY;
ww_X8 <= X8;
ww_Y8 <= Y8;
ww_X7 <= X7;
ww_Y7 <= Y7;
ww_X6 <= X6;
ww_Y6 <= Y6;
ww_X5 <= X5;
ww_Y5 <= Y5;
ww_X4 <= X4;
ww_Y4 <= Y4;
ww_X3 <= X3;
ww_Y3 <= Y3;
ww_X2 <= X2;
ww_Y2 <= Y2;
ww_X1 <= X1;
ww_Y1 <= Y1;
ww_X0 <= X0;
ww_Y0 <= Y0;
S0 <= ww_S0;
S1 <= ww_S1;
S2 <= ww_S2;
S3 <= ww_S3;
S4 <= ww_S4;
S5 <= ww_S5;
S6 <= ww_S6;
S7 <= ww_S7;
S8 <= ww_S8;
S9 <= ww_S9;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X20_Y0_N2
\Cout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|inst3~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\S0~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|inst~combout\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\S1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2~combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\S2~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst2~0_combout\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\S3~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|inst2~0_combout\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\S4~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|inst2~0_combout\,
	devoe => ww_devoe,
	o => \S4~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\S5~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|inst2~0_combout\,
	devoe => ww_devoe,
	o => \S5~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\S6~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|inst2~0_combout\,
	devoe => ww_devoe,
	o => \S6~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\S7~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|inst2~0_combout\,
	devoe => ww_devoe,
	o => \S7~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\S8~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|inst2~0_combout\,
	devoe => ww_devoe,
	o => \S8~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\S9~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|inst2~0_combout\,
	devoe => ww_devoe,
	o => \S9~output_o\);

-- Location: IOIBUF_X16_Y0_N8
\Y9~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y9,
	o => \Y9~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\ENY~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENY,
	o => \ENY~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\X9~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X9,
	o => \X9~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\X8~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X8,
	o => \X8~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\Y8~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y8,
	o => \Y8~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\X7~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X7,
	o => \X7~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\Y7~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y7,
	o => \Y7~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\Y6~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y6,
	o => \Y6~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\X6~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X6,
	o => \X6~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\X5~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X5,
	o => \X5~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\Y4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y4,
	o => \Y4~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\Y2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y2,
	o => \Y2~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\X0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X0,
	o => \X0~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\Y0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y0,
	o => \Y0~input_o\);

-- Location: LCCOMB_X25_Y7_N0
inst6 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst6~combout\ = (\ENY~input_o\ & \Y0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ENY~input_o\,
	datad => \Y0~input_o\,
	combout => \inst6~combout\);

-- Location: IOIBUF_X31_Y0_N8
\Y1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y1,
	o => \Y1~input_o\);

-- Location: LCCOMB_X25_Y7_N26
inst7 : cycloneiv_lcell_comb
-- Equation(s):
-- \inst7~combout\ = (\ENY~input_o\ & \Y1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ENY~input_o\,
	datad => \Y1~input_o\,
	combout => \inst7~combout\);

-- Location: IOIBUF_X33_Y15_N1
\X1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X1,
	o => \X1~input_o\);

-- Location: LCCOMB_X25_Y7_N20
\inst9|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|inst3~0_combout\ = (\inst7~combout\ & ((\X1~input_o\) # ((\X0~input_o\ & \inst6~combout\)))) # (!\inst7~combout\ & (\X0~input_o\ & (\inst6~combout\ & \X1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~input_o\,
	datab => \inst6~combout\,
	datac => \inst7~combout\,
	datad => \X1~input_o\,
	combout => \inst9|inst3~0_combout\);

-- Location: IOIBUF_X33_Y16_N8
\X2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X2,
	o => \X2~input_o\);

-- Location: LCCOMB_X25_Y7_N14
\inst10|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst3~0_combout\ = (\inst9|inst3~0_combout\ & ((\X2~input_o\) # ((\Y2~input_o\ & \ENY~input_o\)))) # (!\inst9|inst3~0_combout\ & (\Y2~input_o\ & (\ENY~input_o\ & \X2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2~input_o\,
	datab => \inst9|inst3~0_combout\,
	datac => \ENY~input_o\,
	datad => \X2~input_o\,
	combout => \inst10|inst3~0_combout\);

-- Location: IOIBUF_X33_Y16_N1
\X3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X3,
	o => \X3~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\Y3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y3,
	o => \Y3~input_o\);

-- Location: LCCOMB_X25_Y7_N24
\inst11|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11|inst3~0_combout\ = (\inst10|inst3~0_combout\ & ((\X3~input_o\) # ((\ENY~input_o\ & \Y3~input_o\)))) # (!\inst10|inst3~0_combout\ & (\ENY~input_o\ & (\X3~input_o\ & \Y3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENY~input_o\,
	datab => \inst10|inst3~0_combout\,
	datac => \X3~input_o\,
	datad => \Y3~input_o\,
	combout => \inst11|inst3~0_combout\);

-- Location: IOIBUF_X33_Y11_N8
\X4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X4,
	o => \X4~input_o\);

-- Location: LCCOMB_X25_Y7_N2
\inst12|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|inst3~0_combout\ = (\inst11|inst3~0_combout\ & ((\X4~input_o\) # ((\Y4~input_o\ & \ENY~input_o\)))) # (!\inst11|inst3~0_combout\ & (\Y4~input_o\ & (\ENY~input_o\ & \X4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y4~input_o\,
	datab => \inst11|inst3~0_combout\,
	datac => \ENY~input_o\,
	datad => \X4~input_o\,
	combout => \inst12|inst3~0_combout\);

-- Location: IOIBUF_X33_Y10_N1
\Y5~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y5,
	o => \Y5~input_o\);

-- Location: LCCOMB_X25_Y7_N12
\inst13|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst13|inst3~0_combout\ = (\X5~input_o\ & ((\inst12|inst3~0_combout\) # ((\ENY~input_o\ & \Y5~input_o\)))) # (!\X5~input_o\ & (\inst12|inst3~0_combout\ & (\ENY~input_o\ & \Y5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X5~input_o\,
	datab => \inst12|inst3~0_combout\,
	datac => \ENY~input_o\,
	datad => \Y5~input_o\,
	combout => \inst13|inst3~0_combout\);

-- Location: LCCOMB_X25_Y7_N22
\inst14|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst14|inst3~0_combout\ = (\X6~input_o\ & ((\inst13|inst3~0_combout\) # ((\ENY~input_o\ & \Y6~input_o\)))) # (!\X6~input_o\ & (\ENY~input_o\ & (\Y6~input_o\ & \inst13|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENY~input_o\,
	datab => \Y6~input_o\,
	datac => \X6~input_o\,
	datad => \inst13|inst3~0_combout\,
	combout => \inst14|inst3~0_combout\);

-- Location: LCCOMB_X16_Y1_N0
\inst15|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|inst3~0_combout\ = (\X7~input_o\ & ((\inst14|inst3~0_combout\) # ((\ENY~input_o\ & \Y7~input_o\)))) # (!\X7~input_o\ & (\ENY~input_o\ & (\Y7~input_o\ & \inst14|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X7~input_o\,
	datab => \ENY~input_o\,
	datac => \Y7~input_o\,
	datad => \inst14|inst3~0_combout\,
	combout => \inst15|inst3~0_combout\);

-- Location: LCCOMB_X16_Y1_N2
\inst16|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst16|inst3~0_combout\ = (\X8~input_o\ & ((\inst15|inst3~0_combout\) # ((\ENY~input_o\ & \Y8~input_o\)))) # (!\X8~input_o\ & (\ENY~input_o\ & (\Y8~input_o\ & \inst15|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X8~input_o\,
	datab => \ENY~input_o\,
	datac => \Y8~input_o\,
	datad => \inst15|inst3~0_combout\,
	combout => \inst16|inst3~0_combout\);

-- Location: LCCOMB_X16_Y1_N20
\inst17|inst3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst17|inst3~0_combout\ = (\X9~input_o\ & ((\inst16|inst3~0_combout\) # ((\Y9~input_o\ & \ENY~input_o\)))) # (!\X9~input_o\ & (\Y9~input_o\ & (\ENY~input_o\ & \inst16|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y9~input_o\,
	datab => \ENY~input_o\,
	datac => \X9~input_o\,
	datad => \inst16|inst3~0_combout\,
	combout => \inst17|inst3~0_combout\);

-- Location: LCCOMB_X25_Y7_N8
\inst8|inst\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst8|inst~combout\ = \X0~input_o\ $ (((\ENY~input_o\ & \Y0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENY~input_o\,
	datac => \X0~input_o\,
	datad => \Y0~input_o\,
	combout => \inst8|inst~combout\);

-- Location: LCCOMB_X25_Y7_N10
\inst9|inst2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst9|inst2~combout\ = \inst7~combout\ $ (\X1~input_o\ $ (((\X0~input_o\ & \inst6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X0~input_o\,
	datab => \inst6~combout\,
	datac => \inst7~combout\,
	datad => \X1~input_o\,
	combout => \inst9|inst2~combout\);

-- Location: LCCOMB_X25_Y7_N28
\inst10|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst10|inst2~0_combout\ = \inst9|inst3~0_combout\ $ (\X2~input_o\ $ (((\Y2~input_o\ & \ENY~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y2~input_o\,
	datab => \inst9|inst3~0_combout\,
	datac => \ENY~input_o\,
	datad => \X2~input_o\,
	combout => \inst10|inst2~0_combout\);

-- Location: LCCOMB_X25_Y7_N6
\inst11|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst11|inst2~0_combout\ = \inst10|inst3~0_combout\ $ (\X3~input_o\ $ (((\ENY~input_o\ & \Y3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENY~input_o\,
	datab => \inst10|inst3~0_combout\,
	datac => \X3~input_o\,
	datad => \Y3~input_o\,
	combout => \inst11|inst2~0_combout\);

-- Location: LCCOMB_X25_Y7_N16
\inst12|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst12|inst2~0_combout\ = \inst11|inst3~0_combout\ $ (\X4~input_o\ $ (((\Y4~input_o\ & \ENY~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y4~input_o\,
	datab => \inst11|inst3~0_combout\,
	datac => \ENY~input_o\,
	datad => \X4~input_o\,
	combout => \inst12|inst2~0_combout\);

-- Location: LCCOMB_X25_Y7_N18
\inst13|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst13|inst2~0_combout\ = \X5~input_o\ $ (\inst12|inst3~0_combout\ $ (((\ENY~input_o\ & \Y5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X5~input_o\,
	datab => \inst12|inst3~0_combout\,
	datac => \ENY~input_o\,
	datad => \Y5~input_o\,
	combout => \inst13|inst2~0_combout\);

-- Location: LCCOMB_X25_Y7_N4
\inst14|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst14|inst2~0_combout\ = \X6~input_o\ $ (\inst13|inst3~0_combout\ $ (((\ENY~input_o\ & \Y6~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENY~input_o\,
	datab => \Y6~input_o\,
	datac => \X6~input_o\,
	datad => \inst13|inst3~0_combout\,
	combout => \inst14|inst2~0_combout\);

-- Location: LCCOMB_X16_Y1_N22
\inst15|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst15|inst2~0_combout\ = \X7~input_o\ $ (\inst14|inst3~0_combout\ $ (((\ENY~input_o\ & \Y7~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X7~input_o\,
	datab => \ENY~input_o\,
	datac => \Y7~input_o\,
	datad => \inst14|inst3~0_combout\,
	combout => \inst15|inst2~0_combout\);

-- Location: LCCOMB_X16_Y1_N24
\inst16|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst16|inst2~0_combout\ = \X8~input_o\ $ (\inst15|inst3~0_combout\ $ (((\ENY~input_o\ & \Y8~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X8~input_o\,
	datab => \ENY~input_o\,
	datac => \Y8~input_o\,
	datad => \inst15|inst3~0_combout\,
	combout => \inst16|inst2~0_combout\);

-- Location: LCCOMB_X16_Y1_N26
\inst17|inst2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst17|inst2~0_combout\ = \X9~input_o\ $ (\inst16|inst3~0_combout\ $ (((\Y9~input_o\ & \ENY~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y9~input_o\,
	datab => \ENY~input_o\,
	datac => \X9~input_o\,
	datad => \inst16|inst3~0_combout\,
	combout => \inst17|inst2~0_combout\);

ww_Cout <= \Cout~output_o\;

ww_S0 <= \S0~output_o\;

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;

ww_S4 <= \S4~output_o\;

ww_S5 <= \S5~output_o\;

ww_S6 <= \S6~output_o\;

ww_S7 <= \S7~output_o\;

ww_S8 <= \S8~output_o\;

ww_S9 <= \S9~output_o\;
END structure;


