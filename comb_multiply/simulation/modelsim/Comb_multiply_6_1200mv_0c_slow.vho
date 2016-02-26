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

-- DATE "02/19/2016 15:18:13"

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

ENTITY 	Comb_multiply IS
    PORT (
	Output : OUT std_logic_vector(9 DOWNTO 0);
	Y : IN std_logic_vector(4 DOWNTO 0);
	X : IN std_logic_vector(4 DOWNTO 0)
	);
END Comb_multiply;

-- Design Ports Information
-- Output[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Comb_multiply IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Output : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_X : std_logic_vector(4 DOWNTO 0);
SIGNAL \Output[9]~output_o\ : std_logic;
SIGNAL \Output[8]~output_o\ : std_logic;
SIGNAL \Output[7]~output_o\ : std_logic;
SIGNAL \Output[6]~output_o\ : std_logic;
SIGNAL \Output[5]~output_o\ : std_logic;
SIGNAL \Output[4]~output_o\ : std_logic;
SIGNAL \Output[3]~output_o\ : std_logic;
SIGNAL \Output[2]~output_o\ : std_logic;
SIGNAL \Output[1]~output_o\ : std_logic;
SIGNAL \Output[0]~output_o\ : std_logic;
SIGNAL \X[4]~input_o\ : std_logic;
SIGNAL \Y[4]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \inst|inst21~combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \inst|inst19~combout\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \inst|inst18~combout\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \inst|inst9|inst6~combout\ : std_logic;
SIGNAL \inst|inst10|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst11|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst20~combout\ : std_logic;
SIGNAL \inst|inst12|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst12|inst2~combout\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \inst|inst10|inst2~combout\ : std_logic;
SIGNAL \inst1|inst11|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst11|inst2~combout\ : std_logic;
SIGNAL \inst1|inst11|inst3~1_combout\ : std_logic;
SIGNAL \inst1|inst12|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst21~combout\ : std_logic;
SIGNAL \inst1|inst13|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst22~combout\ : std_logic;
SIGNAL \inst1|inst14|inst3~0_combout\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \inst1|inst10|inst6~combout\ : std_logic;
SIGNAL \inst1|inst11|inst2~combout\ : std_logic;
SIGNAL \inst2|inst12|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst12|inst2~combout\ : std_logic;
SIGNAL \inst2|inst12|inst3~1_combout\ : std_logic;
SIGNAL \inst1|inst13|inst2~combout\ : std_logic;
SIGNAL \inst2|inst13|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst14|inst2~combout\ : std_logic;
SIGNAL \inst2|inst14|inst3~0_combout\ : std_logic;
SIGNAL \inst2|inst15|inst2~combout\ : std_logic;
SIGNAL \inst2|inst14|inst2~combout\ : std_logic;
SIGNAL \inst2|inst13|inst2~combout\ : std_logic;
SIGNAL \inst2|inst11|inst6~combout\ : std_logic;
SIGNAL \inst2|inst12|inst2~combout\ : std_logic;
SIGNAL \inst3|inst13|inst3~0_combout\ : std_logic;
SIGNAL \inst3|inst13|inst3~1_combout\ : std_logic;
SIGNAL \inst3|inst14|inst3~0_combout\ : std_logic;
SIGNAL \inst3|inst15|inst3~0_combout\ : std_logic;
SIGNAL \inst2|inst15|inst3~0_combout\ : std_logic;
SIGNAL \inst3|inst16|inst3~0_combout\ : std_logic;
SIGNAL \inst3|inst16|inst2~combout\ : std_logic;
SIGNAL \inst3|inst15|inst2~0_combout\ : std_logic;
SIGNAL \inst3|inst14|inst2~0_combout\ : std_logic;
SIGNAL \inst3|inst13|inst2~0_combout\ : std_logic;
SIGNAL \inst3|inst13|inst2~1_combout\ : std_logic;
SIGNAL \inst3|inst12|inst~combout\ : std_logic;
SIGNAL \inst2|inst11|inst~combout\ : std_logic;
SIGNAL \inst1|inst10|inst~combout\ : std_logic;
SIGNAL \inst|inst9|inst~combout\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;

BEGIN

Output <= ww_Output;
ww_Y <= Y;
ww_X <= X;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y27_N16
\Output[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst16|inst3~0_combout\,
	devoe => ww_devoe,
	o => \Output[9]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\Output[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst16|inst2~combout\,
	devoe => ww_devoe,
	o => \Output[8]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\Output[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst15|inst2~0_combout\,
	devoe => ww_devoe,
	o => \Output[7]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\Output[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst14|inst2~0_combout\,
	devoe => ww_devoe,
	o => \Output[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\Output[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst13|inst2~1_combout\,
	devoe => ww_devoe,
	o => \Output[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\Output[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst12|inst~combout\,
	devoe => ww_devoe,
	o => \Output[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\Output[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst11|inst~combout\,
	devoe => ww_devoe,
	o => \Output[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\Output[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst10|inst~combout\,
	devoe => ww_devoe,
	o => \Output[2]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\Output[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst9|inst~combout\,
	devoe => ww_devoe,
	o => \Output[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\Output[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~combout\,
	devoe => ww_devoe,
	o => \Output[0]~output_o\);

-- Location: IOIBUF_X0_Y27_N22
\X[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(4),
	o => \X[4]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\Y[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(4),
	o => \Y[4]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\Y[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: LCCOMB_X1_Y25_N8
\inst|inst21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst21~combout\ = (\Y[1]~input_o\ & \X[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[1]~input_o\,
	datac => \X[4]~input_o\,
	combout => \inst|inst21~combout\);

-- Location: IOIBUF_X0_Y23_N8
\X[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\Y[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\X[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: LCCOMB_X1_Y25_N14
\inst|inst19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19~combout\ = (\Y[1]~input_o\ & \X[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[1]~input_o\,
	datac => \X[2]~input_o\,
	combout => \inst|inst19~combout\);

-- Location: IOIBUF_X0_Y27_N1
\X[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: LCCOMB_X1_Y25_N24
\inst|inst18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst18~combout\ = (\Y[1]~input_o\ & \X[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[1]~input_o\,
	datac => \X[1]~input_o\,
	combout => \inst|inst18~combout\);

-- Location: IOIBUF_X0_Y24_N1
\X[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: LCCOMB_X1_Y25_N2
\inst|inst9|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst9|inst6~combout\ = (\Y[1]~input_o\ & (\X[0]~input_o\ & (\X[1]~input_o\ & \Y[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[1]~input_o\,
	datad => \Y[0]~input_o\,
	combout => \inst|inst9|inst6~combout\);

-- Location: LCCOMB_X1_Y25_N28
\inst|inst10|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|inst3~0_combout\ = (\inst|inst18~combout\ & ((\inst|inst9|inst6~combout\) # ((\Y[0]~input_o\ & \X[2]~input_o\)))) # (!\inst|inst18~combout\ & (\Y[0]~input_o\ & (\X[2]~input_o\ & \inst|inst9|inst6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \inst|inst18~combout\,
	datac => \X[2]~input_o\,
	datad => \inst|inst9|inst6~combout\,
	combout => \inst|inst10|inst3~0_combout\);

-- Location: LCCOMB_X1_Y25_N22
\inst|inst11|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11|inst3~0_combout\ = (\inst|inst19~combout\ & ((\inst|inst10|inst3~0_combout\) # ((\X[3]~input_o\ & \Y[0]~input_o\)))) # (!\inst|inst19~combout\ & (\X[3]~input_o\ & (\Y[0]~input_o\ & \inst|inst10|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \Y[0]~input_o\,
	datac => \inst|inst19~combout\,
	datad => \inst|inst10|inst3~0_combout\,
	combout => \inst|inst11|inst3~0_combout\);

-- Location: LCCOMB_X1_Y25_N0
\inst|inst20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst20~combout\ = (\X[3]~input_o\ & \Y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X[3]~input_o\,
	datad => \Y[1]~input_o\,
	combout => \inst|inst20~combout\);

-- Location: LCCOMB_X1_Y25_N26
\inst|inst12|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst12|inst3~0_combout\ = (\inst|inst11|inst3~0_combout\ & ((\inst|inst20~combout\) # ((\Y[0]~input_o\ & \X[4]~input_o\)))) # (!\inst|inst11|inst3~0_combout\ & (\Y[0]~input_o\ & (\X[4]~input_o\ & \inst|inst20~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|inst3~0_combout\,
	datab => \Y[0]~input_o\,
	datac => \X[4]~input_o\,
	datad => \inst|inst20~combout\,
	combout => \inst|inst12|inst3~0_combout\);

-- Location: LCCOMB_X1_Y25_N18
\inst|inst12|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst12|inst2~combout\ = \inst|inst11|inst3~0_combout\ $ (\inst|inst20~combout\ $ (((\Y[0]~input_o\ & \X[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|inst3~0_combout\,
	datab => \Y[0]~input_o\,
	datac => \X[4]~input_o\,
	datad => \inst|inst20~combout\,
	combout => \inst|inst12|inst2~combout\);

-- Location: IOIBUF_X0_Y26_N8
\Y[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: LCCOMB_X1_Y25_N10
\inst|inst10|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|inst2~combout\ = \inst|inst18~combout\ $ (\inst|inst9|inst6~combout\ $ (((\Y[0]~input_o\ & \X[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \inst|inst18~combout\,
	datac => \X[2]~input_o\,
	datad => \inst|inst9|inst6~combout\,
	combout => \inst|inst10|inst2~combout\);

-- Location: LCCOMB_X1_Y23_N24
\inst1|inst11|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst11|inst3~0_combout\ = (\X[0]~input_o\ & \inst|inst10|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X[0]~input_o\,
	datad => \inst|inst10|inst2~combout\,
	combout => \inst1|inst11|inst3~0_combout\);

-- Location: LCCOMB_X1_Y25_N16
\inst|inst11|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11|inst2~combout\ = \inst|inst19~combout\ $ (\inst|inst10|inst3~0_combout\ $ (((\X[3]~input_o\ & \Y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \Y[0]~input_o\,
	datac => \inst|inst19~combout\,
	datad => \inst|inst10|inst3~0_combout\,
	combout => \inst|inst11|inst2~combout\);

-- Location: LCCOMB_X1_Y25_N12
\inst1|inst11|inst3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst11|inst3~1_combout\ = (\Y[2]~input_o\ & ((\X[1]~input_o\ & ((\inst1|inst11|inst3~0_combout\) # (\inst|inst11|inst2~combout\))) # (!\X[1]~input_o\ & (\inst1|inst11|inst3~0_combout\ & \inst|inst11|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \inst1|inst11|inst3~0_combout\,
	datac => \Y[2]~input_o\,
	datad => \inst|inst11|inst2~combout\,
	combout => \inst1|inst11|inst3~1_combout\);

-- Location: LCCOMB_X1_Y25_N4
\inst1|inst12|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst12|inst3~0_combout\ = (\inst|inst12|inst2~combout\ & ((\inst1|inst11|inst3~1_combout\) # ((\X[2]~input_o\ & \Y[2]~input_o\)))) # (!\inst|inst12|inst2~combout\ & (\X[2]~input_o\ & (\Y[2]~input_o\ & \inst1|inst11|inst3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \inst|inst12|inst2~combout\,
	datac => \Y[2]~input_o\,
	datad => \inst1|inst11|inst3~1_combout\,
	combout => \inst1|inst12|inst3~0_combout\);

-- Location: LCCOMB_X1_Y25_N6
\inst1|inst21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst21~combout\ = (\Y[2]~input_o\ & \X[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[2]~input_o\,
	datac => \X[3]~input_o\,
	combout => \inst1|inst21~combout\);

-- Location: LCCOMB_X1_Y21_N28
\inst1|inst13|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst13|inst3~0_combout\ = (\inst1|inst12|inst3~0_combout\ & ((\inst1|inst21~combout\) # (\inst|inst21~combout\ $ (\inst|inst12|inst3~0_combout\)))) # (!\inst1|inst12|inst3~0_combout\ & (\inst1|inst21~combout\ & (\inst|inst21~combout\ $ 
-- (\inst|inst12|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21~combout\,
	datab => \inst|inst12|inst3~0_combout\,
	datac => \inst1|inst12|inst3~0_combout\,
	datad => \inst1|inst21~combout\,
	combout => \inst1|inst13|inst3~0_combout\);

-- Location: LCCOMB_X1_Y21_N22
\inst1|inst22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst22~combout\ = (\X[4]~input_o\ & \Y[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datac => \Y[2]~input_o\,
	combout => \inst1|inst22~combout\);

-- Location: LCCOMB_X1_Y21_N8
\inst1|inst14|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst14|inst3~0_combout\ = (\inst1|inst13|inst3~0_combout\ & ((\inst1|inst22~combout\) # ((\inst|inst21~combout\ & \inst|inst12|inst3~0_combout\)))) # (!\inst1|inst13|inst3~0_combout\ & (\inst|inst21~combout\ & (\inst1|inst22~combout\ & 
-- \inst|inst12|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21~combout\,
	datab => \inst1|inst13|inst3~0_combout\,
	datac => \inst1|inst22~combout\,
	datad => \inst|inst12|inst3~0_combout\,
	combout => \inst1|inst14|inst3~0_combout\);

-- Location: IOIBUF_X0_Y26_N1
\Y[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: LCCOMB_X1_Y23_N2
\inst1|inst10|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst10|inst6~combout\ = (\Y[2]~input_o\ & (\X[0]~input_o\ & \inst|inst10|inst2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[2]~input_o\,
	datac => \X[0]~input_o\,
	datad => \inst|inst10|inst2~combout\,
	combout => \inst1|inst10|inst6~combout\);

-- Location: LCCOMB_X1_Y23_N28
\inst1|inst11|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst11|inst2~combout\ = \inst1|inst10|inst6~combout\ $ (\inst|inst11|inst2~combout\ $ (((\X[1]~input_o\ & \Y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \inst1|inst10|inst6~combout\,
	datac => \Y[2]~input_o\,
	datad => \inst|inst11|inst2~combout\,
	combout => \inst1|inst11|inst2~combout\);

-- Location: LCCOMB_X1_Y21_N18
\inst2|inst12|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst12|inst3~0_combout\ = (\X[0]~input_o\ & \inst1|inst11|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datad => \inst1|inst11|inst2~combout\,
	combout => \inst2|inst12|inst3~0_combout\);

-- Location: LCCOMB_X1_Y25_N20
\inst1|inst12|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst12|inst2~combout\ = \inst|inst12|inst2~combout\ $ (\inst1|inst11|inst3~1_combout\ $ (((\X[2]~input_o\ & \Y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \inst|inst12|inst2~combout\,
	datac => \Y[2]~input_o\,
	datad => \inst1|inst11|inst3~1_combout\,
	combout => \inst1|inst12|inst2~combout\);

-- Location: LCCOMB_X1_Y21_N20
\inst2|inst12|inst3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst12|inst3~1_combout\ = (\Y[3]~input_o\ & ((\X[1]~input_o\ & ((\inst2|inst12|inst3~0_combout\) # (\inst1|inst12|inst2~combout\))) # (!\X[1]~input_o\ & (\inst2|inst12|inst3~0_combout\ & \inst1|inst12|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \inst2|inst12|inst3~0_combout\,
	datac => \Y[3]~input_o\,
	datad => \inst1|inst12|inst2~combout\,
	combout => \inst2|inst12|inst3~1_combout\);

-- Location: LCCOMB_X1_Y21_N0
\inst1|inst13|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst13|inst2~combout\ = \inst|inst21~combout\ $ (\inst|inst12|inst3~0_combout\ $ (\inst1|inst12|inst3~0_combout\ $ (\inst1|inst21~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21~combout\,
	datab => \inst|inst12|inst3~0_combout\,
	datac => \inst1|inst12|inst3~0_combout\,
	datad => \inst1|inst21~combout\,
	combout => \inst1|inst13|inst2~combout\);

-- Location: LCCOMB_X1_Y21_N10
\inst2|inst13|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst13|inst3~0_combout\ = (\inst2|inst12|inst3~1_combout\ & ((\inst1|inst13|inst2~combout\) # ((\X[2]~input_o\ & \Y[3]~input_o\)))) # (!\inst2|inst12|inst3~1_combout\ & (\X[2]~input_o\ & (\Y[3]~input_o\ & \inst1|inst13|inst2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \inst2|inst12|inst3~1_combout\,
	datac => \Y[3]~input_o\,
	datad => \inst1|inst13|inst2~combout\,
	combout => \inst2|inst13|inst3~0_combout\);

-- Location: LCCOMB_X1_Y21_N16
\inst1|inst14|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst14|inst2~combout\ = \inst1|inst13|inst3~0_combout\ $ (\inst1|inst22~combout\ $ (((\inst|inst21~combout\ & \inst|inst12|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21~combout\,
	datab => \inst1|inst13|inst3~0_combout\,
	datac => \inst1|inst22~combout\,
	datad => \inst|inst12|inst3~0_combout\,
	combout => \inst1|inst14|inst2~combout\);

-- Location: LCCOMB_X1_Y21_N6
\inst2|inst14|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst14|inst3~0_combout\ = (\inst2|inst13|inst3~0_combout\ & ((\inst1|inst14|inst2~combout\) # ((\X[3]~input_o\ & \Y[3]~input_o\)))) # (!\inst2|inst13|inst3~0_combout\ & (\X[3]~input_o\ & (\Y[3]~input_o\ & \inst1|inst14|inst2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst13|inst3~0_combout\,
	datab => \X[3]~input_o\,
	datac => \Y[3]~input_o\,
	datad => \inst1|inst14|inst2~combout\,
	combout => \inst2|inst14|inst3~0_combout\);

-- Location: LCCOMB_X1_Y21_N2
\inst2|inst15|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst15|inst2~combout\ = \inst1|inst14|inst3~0_combout\ $ (\inst2|inst14|inst3~0_combout\ $ (((\X[4]~input_o\ & \Y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datab => \inst1|inst14|inst3~0_combout\,
	datac => \Y[3]~input_o\,
	datad => \inst2|inst14|inst3~0_combout\,
	combout => \inst2|inst15|inst2~combout\);

-- Location: LCCOMB_X1_Y21_N4
\inst2|inst14|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst14|inst2~combout\ = \inst2|inst13|inst3~0_combout\ $ (\inst1|inst14|inst2~combout\ $ (((\X[3]~input_o\ & \Y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst13|inst3~0_combout\,
	datab => \X[3]~input_o\,
	datac => \Y[3]~input_o\,
	datad => \inst1|inst14|inst2~combout\,
	combout => \inst2|inst14|inst2~combout\);

-- Location: LCCOMB_X1_Y21_N30
\inst2|inst13|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst13|inst2~combout\ = \inst2|inst12|inst3~1_combout\ $ (\inst1|inst13|inst2~combout\ $ (((\X[2]~input_o\ & \Y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \inst2|inst12|inst3~1_combout\,
	datac => \Y[3]~input_o\,
	datad => \inst1|inst13|inst2~combout\,
	combout => \inst2|inst13|inst2~combout\);

-- Location: LCCOMB_X1_Y21_N24
\inst2|inst11|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst11|inst6~combout\ = (\X[0]~input_o\ & (\Y[3]~input_o\ & \inst1|inst11|inst2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datac => \Y[3]~input_o\,
	datad => \inst1|inst11|inst2~combout\,
	combout => \inst2|inst11|inst6~combout\);

-- Location: LCCOMB_X1_Y21_N26
\inst2|inst12|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst12|inst2~combout\ = \inst2|inst11|inst6~combout\ $ (\inst1|inst12|inst2~combout\ $ (((\X[1]~input_o\ & \Y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \inst2|inst11|inst6~combout\,
	datac => \Y[3]~input_o\,
	datad => \inst1|inst12|inst2~combout\,
	combout => \inst2|inst12|inst2~combout\);

-- Location: LCCOMB_X1_Y23_N14
\inst3|inst13|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst13|inst3~0_combout\ = (\inst2|inst12|inst2~combout\ & \X[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst12|inst2~combout\,
	datac => \X[0]~input_o\,
	combout => \inst3|inst13|inst3~0_combout\);

-- Location: LCCOMB_X1_Y23_N0
\inst3|inst13|inst3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst13|inst3~1_combout\ = (\Y[4]~input_o\ & ((\inst2|inst13|inst2~combout\ & ((\inst3|inst13|inst3~0_combout\) # (\X[1]~input_o\))) # (!\inst2|inst13|inst2~combout\ & (\inst3|inst13|inst3~0_combout\ & \X[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datab => \inst2|inst13|inst2~combout\,
	datac => \inst3|inst13|inst3~0_combout\,
	datad => \X[1]~input_o\,
	combout => \inst3|inst13|inst3~1_combout\);

-- Location: LCCOMB_X1_Y23_N10
\inst3|inst14|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst14|inst3~0_combout\ = (\inst2|inst14|inst2~combout\ & ((\inst3|inst13|inst3~1_combout\) # ((\X[2]~input_o\ & \Y[4]~input_o\)))) # (!\inst2|inst14|inst2~combout\ & (\X[2]~input_o\ & (\Y[4]~input_o\ & \inst3|inst13|inst3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst14|inst2~combout\,
	datab => \X[2]~input_o\,
	datac => \Y[4]~input_o\,
	datad => \inst3|inst13|inst3~1_combout\,
	combout => \inst3|inst14|inst3~0_combout\);

-- Location: LCCOMB_X1_Y23_N4
\inst3|inst15|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst15|inst3~0_combout\ = (\inst2|inst15|inst2~combout\ & ((\inst3|inst14|inst3~0_combout\) # ((\Y[4]~input_o\ & \X[3]~input_o\)))) # (!\inst2|inst15|inst2~combout\ & (\Y[4]~input_o\ & (\X[3]~input_o\ & \inst3|inst14|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datab => \inst2|inst15|inst2~combout\,
	datac => \X[3]~input_o\,
	datad => \inst3|inst14|inst3~0_combout\,
	combout => \inst3|inst15|inst3~0_combout\);

-- Location: LCCOMB_X1_Y21_N12
\inst2|inst15|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst15|inst3~0_combout\ = (\inst1|inst14|inst3~0_combout\ & ((\inst2|inst14|inst3~0_combout\) # ((\X[4]~input_o\ & \Y[3]~input_o\)))) # (!\inst1|inst14|inst3~0_combout\ & (\X[4]~input_o\ & (\Y[3]~input_o\ & \inst2|inst14|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datab => \inst1|inst14|inst3~0_combout\,
	datac => \Y[3]~input_o\,
	datad => \inst2|inst14|inst3~0_combout\,
	combout => \inst2|inst15|inst3~0_combout\);

-- Location: LCCOMB_X1_Y23_N6
\inst3|inst16|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst16|inst3~0_combout\ = (\inst3|inst15|inst3~0_combout\ & ((\inst2|inst15|inst3~0_combout\) # ((\X[4]~input_o\ & \Y[4]~input_o\)))) # (!\inst3|inst15|inst3~0_combout\ & (\X[4]~input_o\ & (\Y[4]~input_o\ & \inst2|inst15|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datab => \inst3|inst15|inst3~0_combout\,
	datac => \Y[4]~input_o\,
	datad => \inst2|inst15|inst3~0_combout\,
	combout => \inst3|inst16|inst3~0_combout\);

-- Location: LCCOMB_X1_Y23_N8
\inst3|inst16|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst16|inst2~combout\ = \inst3|inst15|inst3~0_combout\ $ (\inst2|inst15|inst3~0_combout\ $ (((\X[4]~input_o\ & \Y[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[4]~input_o\,
	datab => \inst3|inst15|inst3~0_combout\,
	datac => \Y[4]~input_o\,
	datad => \inst2|inst15|inst3~0_combout\,
	combout => \inst3|inst16|inst2~combout\);

-- Location: LCCOMB_X1_Y23_N18
\inst3|inst15|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst15|inst2~0_combout\ = \inst2|inst15|inst2~combout\ $ (\inst3|inst14|inst3~0_combout\ $ (((\Y[4]~input_o\ & \X[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datab => \inst2|inst15|inst2~combout\,
	datac => \X[3]~input_o\,
	datad => \inst3|inst14|inst3~0_combout\,
	combout => \inst3|inst15|inst2~0_combout\);

-- Location: LCCOMB_X1_Y23_N20
\inst3|inst14|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst14|inst2~0_combout\ = \inst2|inst14|inst2~combout\ $ (\inst3|inst13|inst3~1_combout\ $ (((\X[2]~input_o\ & \Y[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst14|inst2~combout\,
	datab => \X[2]~input_o\,
	datac => \Y[4]~input_o\,
	datad => \inst3|inst13|inst3~1_combout\,
	combout => \inst3|inst14|inst2~0_combout\);

-- Location: LCCOMB_X1_Y23_N12
\inst3|inst13|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst13|inst2~0_combout\ = (\Y[4]~input_o\ & ((\inst2|inst12|inst2~combout\ $ (\X[1]~input_o\)) # (!\X[0]~input_o\))) # (!\Y[4]~input_o\ & (!\X[0]~input_o\ & ((!\X[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datab => \X[0]~input_o\,
	datac => \inst2|inst12|inst2~combout\,
	datad => \X[1]~input_o\,
	combout => \inst3|inst13|inst2~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\inst3|inst13|inst2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst13|inst2~1_combout\ = (\inst2|inst13|inst2~combout\ & (\inst3|inst13|inst2~0_combout\ $ (((\X[1]~input_o\) # (\X[0]~input_o\))))) # (!\inst2|inst13|inst2~combout\ & (\inst3|inst13|inst2~0_combout\ & ((\X[1]~input_o\) # (\X[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \inst2|inst13|inst2~combout\,
	datac => \X[0]~input_o\,
	datad => \inst3|inst13|inst2~0_combout\,
	combout => \inst3|inst13|inst2~1_combout\);

-- Location: LCCOMB_X1_Y23_N26
\inst3|inst12|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst12|inst~combout\ = \inst2|inst12|inst2~combout\ $ (((\Y[4]~input_o\ & \X[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[4]~input_o\,
	datac => \inst2|inst12|inst2~combout\,
	datad => \X[0]~input_o\,
	combout => \inst3|inst12|inst~combout\);

-- Location: LCCOMB_X1_Y21_N14
\inst2|inst11|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst11|inst~combout\ = \inst1|inst11|inst2~combout\ $ (((\X[0]~input_o\ & \Y[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datac => \Y[3]~input_o\,
	datad => \inst1|inst11|inst2~combout\,
	combout => \inst2|inst11|inst~combout\);

-- Location: LCCOMB_X1_Y23_N30
\inst1|inst10|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst10|inst~combout\ = \inst|inst10|inst2~combout\ $ (((\Y[2]~input_o\ & \X[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[2]~input_o\,
	datac => \X[0]~input_o\,
	datad => \inst|inst10|inst2~combout\,
	combout => \inst1|inst10|inst~combout\);

-- Location: LCCOMB_X1_Y25_N30
\inst|inst9|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst9|inst~combout\ = (\Y[1]~input_o\ & (\X[0]~input_o\ $ (((\X[1]~input_o\ & \Y[0]~input_o\))))) # (!\Y[1]~input_o\ & (((\X[1]~input_o\ & \Y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[1]~input_o\,
	datad => \Y[0]~input_o\,
	combout => \inst|inst9|inst~combout\);

-- Location: LCCOMB_X1_Y23_N16
inst5 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~combout\ = (\Y[0]~input_o\ & \X[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[0]~input_o\,
	datac => \X[0]~input_o\,
	combout => \inst5~combout\);

ww_Output(9) <= \Output[9]~output_o\;

ww_Output(8) <= \Output[8]~output_o\;

ww_Output(7) <= \Output[7]~output_o\;

ww_Output(6) <= \Output[6]~output_o\;

ww_Output(5) <= \Output[5]~output_o\;

ww_Output(4) <= \Output[4]~output_o\;

ww_Output(3) <= \Output[3]~output_o\;

ww_Output(2) <= \Output[2]~output_o\;

ww_Output(1) <= \Output[1]~output_o\;

ww_Output(0) <= \Output[0]~output_o\;
END structure;


