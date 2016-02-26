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

-- DATE "02/19/2016 16:10:48"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	registered_multiply IS
    PORT (
	Output : OUT std_logic_vector(9 DOWNTO 0);
	CLK : IN std_logic;
	B : IN std_logic_vector(4 DOWNTO 0);
	A : IN std_logic_vector(4 DOWNTO 0)
	);
END registered_multiply;

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
-- CLK	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF registered_multiply IS
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
SIGNAL ww_CLK : std_logic;
SIGNAL ww_B : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(4 DOWNTO 0);
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \inst30~feeder_combout\ : std_logic;
SIGNAL \inst30~q\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \inst12~feeder_combout\ : std_logic;
SIGNAL \inst12~q\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \inst27~feeder_combout\ : std_logic;
SIGNAL \inst27~q\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \inst15~q\ : std_logic;
SIGNAL \inst1|inst22~combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst14~q\ : std_logic;
SIGNAL \inst|inst21~combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst13~q\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst11~feeder_combout\ : std_logic;
SIGNAL \inst11~q\ : std_logic;
SIGNAL \inst|inst20~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst10~q\ : std_logic;
SIGNAL \inst|inst19~combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst91~q\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst4~feeder_combout\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \inst|inst10|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst10|inst3~1_combout\ : std_logic;
SIGNAL \inst|inst11|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst12|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst21~combout\ : std_logic;
SIGNAL \inst|inst12|inst2~combout\ : std_logic;
SIGNAL \inst|inst10|inst2~0_combout\ : std_logic;
SIGNAL \inst1|inst18~combout\ : std_logic;
SIGNAL \inst1|inst10|inst6~combout\ : std_logic;
SIGNAL \inst1|inst11|inst5~0_combout\ : std_logic;
SIGNAL \inst1|inst11|inst5~1_combout\ : std_logic;
SIGNAL \inst1|inst19~combout\ : std_logic;
SIGNAL \inst|inst11|inst2~combout\ : std_logic;
SIGNAL \inst1|inst11|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst12|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst13|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst14|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst14|inst2~combout\ : std_logic;
SIGNAL \inst|inst11|inst2~0_combout\ : std_logic;
SIGNAL \inst1|inst11|inst2~combout\ : std_logic;
SIGNAL \inst2|inst12|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst12|inst2~combout\ : std_logic;
SIGNAL \inst2|inst12|inst3~1_combout\ : std_logic;
SIGNAL \inst1|inst13|inst2~combout\ : std_logic;
SIGNAL \inst2|inst13|inst3~0_combout\ : std_logic;
SIGNAL \inst2|inst14|inst3~0_combout\ : std_logic;
SIGNAL \inst2|inst15|inst3~0_combout\ : std_logic;
SIGNAL \inst3|inst13|inst5~0_combout\ : std_logic;
SIGNAL \inst2|inst12|inst2~0_combout\ : std_logic;
SIGNAL \inst3|inst13|inst5~1_combout\ : std_logic;
SIGNAL \inst3|inst22~combout\ : std_logic;
SIGNAL \inst2|inst14|inst2~combout\ : std_logic;
SIGNAL \inst3|inst12|inst6~combout\ : std_logic;
SIGNAL \inst2|inst13|inst2~combout\ : std_logic;
SIGNAL \inst3|inst13|inst3~0_combout\ : std_logic;
SIGNAL \inst3|inst14|inst3~0_combout\ : std_logic;
SIGNAL \inst2|inst15|inst2~combout\ : std_logic;
SIGNAL \inst3|inst15|inst3~0_combout\ : std_logic;
SIGNAL \inst3|inst16|inst3~0_combout\ : std_logic;
SIGNAL \inst40~q\ : std_logic;
SIGNAL \inst3|inst16|inst2~combout\ : std_logic;
SIGNAL \inst39~q\ : std_logic;
SIGNAL \inst3|inst15|inst2~0_combout\ : std_logic;
SIGNAL \inst38~q\ : std_logic;
SIGNAL \inst3|inst14|inst2~0_combout\ : std_logic;
SIGNAL \inst37~q\ : std_logic;
SIGNAL \inst3|inst13|inst2~combout\ : std_logic;
SIGNAL \inst36~q\ : std_logic;
SIGNAL \inst3|inst12|inst~combout\ : std_logic;
SIGNAL \inst35~q\ : std_logic;
SIGNAL \inst2|inst11|inst~combout\ : std_logic;
SIGNAL \inst34~q\ : std_logic;
SIGNAL \inst1|inst10|inst~combout\ : std_logic;
SIGNAL \inst33~q\ : std_logic;
SIGNAL \inst|inst9|inst~combout\ : std_logic;
SIGNAL \inst32~q\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \inst31~q\ : std_logic;

BEGIN

Output <= ww_Output;
ww_CLK <= CLK;
ww_B <= B;
ww_A <= A;
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
	i => \inst40~q\,
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
	i => \inst39~q\,
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
	i => \inst38~q\,
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
	i => \inst37~q\,
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
	i => \inst36~q\,
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
	i => \inst35~q\,
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
	i => \inst34~q\,
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
	i => \inst33~q\,
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
	i => \inst32~q\,
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
	i => \inst31~q\,
	devoe => ww_devoe,
	o => \Output[0]~output_o\);

-- Location: IOIBUF_X0_Y23_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\B[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X1_Y26_N14
\inst30~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst30~feeder_combout\ = \B[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[4]~input_o\,
	combout => \inst30~feeder_combout\);

-- Location: FF_X1_Y26_N15
inst30 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst30~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30~q\);

-- Location: IOIBUF_X0_Y27_N22
\A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X2_Y27_N12
\inst12~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12~feeder_combout\ = \A[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[4]~input_o\,
	combout => \inst12~feeder_combout\);

-- Location: FF_X2_Y27_N13
inst12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst12~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12~q\);

-- Location: IOIBUF_X0_Y26_N1
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X1_Y26_N0
\inst27~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst27~feeder_combout\ = \B[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[3]~input_o\,
	combout => \inst27~feeder_combout\);

-- Location: FF_X1_Y26_N1
inst27 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst27~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27~q\);

-- Location: IOIBUF_X0_Y26_N8
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: FF_X1_Y27_N21
inst15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \B[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15~q\);

-- Location: LCCOMB_X2_Y26_N26
\inst1|inst22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst22~combout\ = (\inst15~q\ & \inst12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15~q\,
	datad => \inst12~q\,
	combout => \inst1|inst22~combout\);

-- Location: IOIBUF_X0_Y25_N15
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: FF_X1_Y27_N11
inst14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \B[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14~q\);

-- Location: LCCOMB_X2_Y26_N20
\inst|inst21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst21~combout\ = (\inst14~q\ & \inst12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14~q\,
	datad => \inst12~q\,
	combout => \inst|inst21~combout\);

-- Location: IOIBUF_X0_Y22_N15
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: FF_X1_Y27_N13
inst13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \B[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13~q\);

-- Location: IOIBUF_X0_Y23_N8
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X2_Y27_N14
\inst11~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11~feeder_combout\ = \A[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[3]~input_o\,
	combout => \inst11~feeder_combout\);

-- Location: FF_X2_Y27_N15
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst11~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

-- Location: LCCOMB_X2_Y27_N20
\inst|inst20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst20~combout\ = (\inst11~q\ & \inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11~q\,
	datad => \inst14~q\,
	combout => \inst|inst20~combout\);

-- Location: IOIBUF_X0_Y25_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: FF_X1_Y27_N25
inst10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \A[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10~q\);

-- Location: LCCOMB_X1_Y27_N26
\inst|inst19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst19~combout\ = (\inst14~q\ & \inst10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14~q\,
	datad => \inst10~q\,
	combout => \inst|inst19~combout\);

-- Location: IOIBUF_X0_Y27_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: FF_X1_Y27_N9
inst91 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \A[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst91~q\);

-- Location: IOIBUF_X0_Y24_N1
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X1_Y27_N18
\inst4~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4~feeder_combout\ = \A[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A[0]~input_o\,
	combout => \inst4~feeder_combout\);

-- Location: FF_X1_Y27_N19
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: LCCOMB_X1_Y27_N20
\inst|inst10|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|inst3~0_combout\ = (\inst10~q\) # (\inst4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10~q\,
	datad => \inst4~q\,
	combout => \inst|inst10|inst3~0_combout\);

-- Location: LCCOMB_X1_Y27_N14
\inst|inst10|inst3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|inst3~1_combout\ = (\inst13~q\ & (\inst91~q\ & (\inst14~q\ & \inst|inst10|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13~q\,
	datab => \inst91~q\,
	datac => \inst14~q\,
	datad => \inst|inst10|inst3~0_combout\,
	combout => \inst|inst10|inst3~1_combout\);

-- Location: LCCOMB_X2_Y27_N18
\inst|inst11|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11|inst3~0_combout\ = (\inst|inst19~combout\ & ((\inst|inst10|inst3~1_combout\) # ((\inst13~q\ & \inst11~q\)))) # (!\inst|inst19~combout\ & (\inst13~q\ & (\inst11~q\ & \inst|inst10|inst3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13~q\,
	datab => \inst11~q\,
	datac => \inst|inst19~combout\,
	datad => \inst|inst10|inst3~1_combout\,
	combout => \inst|inst11|inst3~0_combout\);

-- Location: LCCOMB_X2_Y27_N0
\inst|inst12|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst12|inst3~0_combout\ = (\inst|inst20~combout\ & ((\inst|inst11|inst3~0_combout\) # ((\inst13~q\ & \inst12~q\)))) # (!\inst|inst20~combout\ & (\inst13~q\ & (\inst12~q\ & \inst|inst11|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13~q\,
	datab => \inst12~q\,
	datac => \inst|inst20~combout\,
	datad => \inst|inst11|inst3~0_combout\,
	combout => \inst|inst12|inst3~0_combout\);

-- Location: LCCOMB_X1_Y27_N8
\inst1|inst21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst21~combout\ = (\inst11~q\ & \inst15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11~q\,
	datad => \inst15~q\,
	combout => \inst1|inst21~combout\);

-- Location: LCCOMB_X2_Y27_N30
\inst|inst12|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst12|inst2~combout\ = \inst|inst20~combout\ $ (\inst|inst11|inst3~0_combout\ $ (((\inst12~q\ & \inst13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datab => \inst13~q\,
	datac => \inst|inst20~combout\,
	datad => \inst|inst11|inst3~0_combout\,
	combout => \inst|inst12|inst2~combout\);

-- Location: LCCOMB_X1_Y27_N22
\inst|inst10|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst10|inst2~0_combout\ = (\inst91~q\ & (\inst14~q\ & ((!\inst4~q\) # (!\inst13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13~q\,
	datab => \inst91~q\,
	datac => \inst14~q\,
	datad => \inst4~q\,
	combout => \inst|inst10|inst2~0_combout\);

-- Location: LCCOMB_X1_Y27_N10
\inst1|inst18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst18~combout\ = (\inst4~q\ & \inst15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4~q\,
	datad => \inst15~q\,
	combout => \inst1|inst18~combout\);

-- Location: LCCOMB_X1_Y27_N28
\inst1|inst10|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst10|inst6~combout\ = (\inst1|inst18~combout\ & (\inst|inst10|inst2~0_combout\ $ (((\inst13~q\ & \inst10~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13~q\,
	datab => \inst10~q\,
	datac => \inst|inst10|inst2~0_combout\,
	datad => \inst1|inst18~combout\,
	combout => \inst1|inst10|inst6~combout\);

-- Location: LCCOMB_X1_Y27_N0
\inst1|inst11|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst11|inst5~0_combout\ = (\inst4~q\ & (\inst91~q\ & \inst15~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4~q\,
	datac => \inst91~q\,
	datad => \inst15~q\,
	combout => \inst1|inst11|inst5~0_combout\);

-- Location: LCCOMB_X1_Y27_N4
\inst1|inst11|inst5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst11|inst5~1_combout\ = (\inst1|inst11|inst5~0_combout\ & (\inst|inst10|inst2~0_combout\ $ (((\inst13~q\ & \inst10~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13~q\,
	datab => \inst10~q\,
	datac => \inst|inst10|inst2~0_combout\,
	datad => \inst1|inst11|inst5~0_combout\,
	combout => \inst1|inst11|inst5~1_combout\);

-- Location: LCCOMB_X1_Y27_N12
\inst1|inst19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst19~combout\ = (\inst15~q\ & \inst91~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15~q\,
	datab => \inst91~q\,
	combout => \inst1|inst19~combout\);

-- Location: LCCOMB_X1_Y27_N2
\inst|inst11|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11|inst2~combout\ = \inst|inst10|inst3~1_combout\ $ (\inst|inst19~combout\ $ (((\inst13~q\ & \inst11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13~q\,
	datab => \inst11~q\,
	datac => \inst|inst10|inst3~1_combout\,
	datad => \inst|inst19~combout\,
	combout => \inst|inst11|inst2~combout\);

-- Location: LCCOMB_X1_Y27_N30
\inst1|inst11|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst11|inst3~0_combout\ = (\inst1|inst11|inst5~1_combout\) # ((\inst|inst11|inst2~combout\ & ((\inst1|inst10|inst6~combout\) # (\inst1|inst19~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst10|inst6~combout\,
	datab => \inst1|inst11|inst5~1_combout\,
	datac => \inst1|inst19~combout\,
	datad => \inst|inst11|inst2~combout\,
	combout => \inst1|inst11|inst3~0_combout\);

-- Location: LCCOMB_X2_Y26_N2
\inst1|inst12|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst12|inst3~0_combout\ = (\inst|inst12|inst2~combout\ & ((\inst1|inst11|inst3~0_combout\) # ((\inst15~q\ & \inst10~q\)))) # (!\inst|inst12|inst2~combout\ & (\inst15~q\ & (\inst10~q\ & \inst1|inst11|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15~q\,
	datab => \inst10~q\,
	datac => \inst|inst12|inst2~combout\,
	datad => \inst1|inst11|inst3~0_combout\,
	combout => \inst1|inst12|inst3~0_combout\);

-- Location: LCCOMB_X2_Y26_N0
\inst1|inst13|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst13|inst3~0_combout\ = (\inst1|inst21~combout\ & ((\inst1|inst12|inst3~0_combout\) # (\inst|inst21~combout\ $ (\inst|inst12|inst3~0_combout\)))) # (!\inst1|inst21~combout\ & (\inst1|inst12|inst3~0_combout\ & (\inst|inst21~combout\ $ 
-- (\inst|inst12|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst21~combout\,
	datab => \inst|inst21~combout\,
	datac => \inst|inst12|inst3~0_combout\,
	datad => \inst1|inst12|inst3~0_combout\,
	combout => \inst1|inst13|inst3~0_combout\);

-- Location: LCCOMB_X2_Y26_N24
\inst1|inst14|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst14|inst3~0_combout\ = (\inst1|inst22~combout\ & ((\inst1|inst13|inst3~0_combout\) # ((\inst|inst21~combout\ & \inst|inst12|inst3~0_combout\)))) # (!\inst1|inst22~combout\ & (\inst|inst21~combout\ & (\inst|inst12|inst3~0_combout\ & 
-- \inst1|inst13|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst22~combout\,
	datab => \inst|inst21~combout\,
	datac => \inst|inst12|inst3~0_combout\,
	datad => \inst1|inst13|inst3~0_combout\,
	combout => \inst1|inst14|inst3~0_combout\);

-- Location: LCCOMB_X2_Y26_N4
\inst1|inst14|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst14|inst2~combout\ = \inst1|inst22~combout\ $ (\inst1|inst13|inst3~0_combout\ $ (((\inst|inst21~combout\ & \inst|inst12|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst22~combout\,
	datab => \inst|inst21~combout\,
	datac => \inst|inst12|inst3~0_combout\,
	datad => \inst1|inst13|inst3~0_combout\,
	combout => \inst1|inst14|inst2~combout\);

-- Location: LCCOMB_X1_Y27_N24
\inst|inst11|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst11|inst2~0_combout\ = (\inst13~q\ & (\inst11~q\ $ (((\inst10~q\ & \inst14~q\))))) # (!\inst13~q\ & (((\inst10~q\ & \inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13~q\,
	datab => \inst11~q\,
	datac => \inst10~q\,
	datad => \inst14~q\,
	combout => \inst|inst11|inst2~0_combout\);

-- Location: LCCOMB_X1_Y27_N16
\inst1|inst11|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst11|inst2~combout\ = \inst|inst11|inst2~0_combout\ $ (\inst|inst10|inst3~1_combout\ $ (\inst1|inst19~combout\ $ (\inst1|inst10|inst6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst11|inst2~0_combout\,
	datab => \inst|inst10|inst3~1_combout\,
	datac => \inst1|inst19~combout\,
	datad => \inst1|inst10|inst6~combout\,
	combout => \inst1|inst11|inst2~combout\);

-- Location: LCCOMB_X1_Y27_N6
\inst2|inst12|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst12|inst3~0_combout\ = (\inst4~q\ & \inst1|inst11|inst2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4~q\,
	datad => \inst1|inst11|inst2~combout\,
	combout => \inst2|inst12|inst3~0_combout\);

-- Location: LCCOMB_X1_Y26_N12
\inst1|inst12|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst12|inst2~combout\ = \inst1|inst11|inst3~0_combout\ $ (\inst|inst12|inst2~combout\ $ (((\inst10~q\ & \inst15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst11|inst3~0_combout\,
	datab => \inst10~q\,
	datac => \inst|inst12|inst2~combout\,
	datad => \inst15~q\,
	combout => \inst1|inst12|inst2~combout\);

-- Location: LCCOMB_X1_Y26_N26
\inst2|inst12|inst3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst12|inst3~1_combout\ = (\inst27~q\ & ((\inst91~q\ & ((\inst2|inst12|inst3~0_combout\) # (\inst1|inst12|inst2~combout\))) # (!\inst91~q\ & (\inst2|inst12|inst3~0_combout\ & \inst1|inst12|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst91~q\,
	datab => \inst27~q\,
	datac => \inst2|inst12|inst3~0_combout\,
	datad => \inst1|inst12|inst2~combout\,
	combout => \inst2|inst12|inst3~1_combout\);

-- Location: LCCOMB_X1_Y26_N18
\inst1|inst13|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst13|inst2~combout\ = \inst|inst21~combout\ $ (\inst1|inst21~combout\ $ (\inst|inst12|inst3~0_combout\ $ (\inst1|inst12|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst21~combout\,
	datab => \inst1|inst21~combout\,
	datac => \inst|inst12|inst3~0_combout\,
	datad => \inst1|inst12|inst3~0_combout\,
	combout => \inst1|inst13|inst2~combout\);

-- Location: LCCOMB_X1_Y26_N28
\inst2|inst13|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst13|inst3~0_combout\ = (\inst2|inst12|inst3~1_combout\ & ((\inst1|inst13|inst2~combout\) # ((\inst10~q\ & \inst27~q\)))) # (!\inst2|inst12|inst3~1_combout\ & (\inst10~q\ & (\inst27~q\ & \inst1|inst13|inst2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~q\,
	datab => \inst27~q\,
	datac => \inst2|inst12|inst3~1_combout\,
	datad => \inst1|inst13|inst2~combout\,
	combout => \inst2|inst13|inst3~0_combout\);

-- Location: LCCOMB_X2_Y26_N6
\inst2|inst14|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst14|inst3~0_combout\ = (\inst1|inst14|inst2~combout\ & ((\inst2|inst13|inst3~0_combout\) # ((\inst27~q\ & \inst11~q\)))) # (!\inst1|inst14|inst2~combout\ & (\inst27~q\ & (\inst11~q\ & \inst2|inst13|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27~q\,
	datab => \inst11~q\,
	datac => \inst1|inst14|inst2~combout\,
	datad => \inst2|inst13|inst3~0_combout\,
	combout => \inst2|inst14|inst3~0_combout\);

-- Location: LCCOMB_X2_Y26_N14
\inst2|inst15|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst15|inst3~0_combout\ = (\inst1|inst14|inst3~0_combout\ & ((\inst2|inst14|inst3~0_combout\) # ((\inst27~q\ & \inst12~q\)))) # (!\inst1|inst14|inst3~0_combout\ & (\inst27~q\ & (\inst12~q\ & \inst2|inst14|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27~q\,
	datab => \inst12~q\,
	datac => \inst1|inst14|inst3~0_combout\,
	datad => \inst2|inst14|inst3~0_combout\,
	combout => \inst2|inst15|inst3~0_combout\);

-- Location: LCCOMB_X1_Y26_N10
\inst3|inst13|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst13|inst5~0_combout\ = (\inst30~q\ & (\inst4~q\ & \inst91~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30~q\,
	datac => \inst4~q\,
	datad => \inst91~q\,
	combout => \inst3|inst13|inst5~0_combout\);

-- Location: LCCOMB_X1_Y26_N8
\inst2|inst12|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst12|inst2~0_combout\ = (\inst27~q\ & (\inst91~q\ $ (((\inst4~q\ & \inst1|inst11|inst2~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst91~q\,
	datab => \inst27~q\,
	datac => \inst4~q\,
	datad => \inst1|inst11|inst2~combout\,
	combout => \inst2|inst12|inst2~0_combout\);

-- Location: LCCOMB_X1_Y26_N16
\inst3|inst13|inst5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst13|inst5~1_combout\ = (\inst3|inst13|inst5~0_combout\ & (\inst2|inst12|inst2~0_combout\ $ (\inst1|inst12|inst2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst13|inst5~0_combout\,
	datac => \inst2|inst12|inst2~0_combout\,
	datad => \inst1|inst12|inst2~combout\,
	combout => \inst3|inst13|inst5~1_combout\);

-- Location: LCCOMB_X2_Y26_N22
\inst3|inst22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst22~combout\ = (\inst10~q\ & \inst30~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10~q\,
	datad => \inst30~q\,
	combout => \inst3|inst22~combout\);

-- Location: LCCOMB_X2_Y26_N30
\inst2|inst14|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst14|inst2~combout\ = \inst1|inst14|inst2~combout\ $ (\inst2|inst13|inst3~0_combout\ $ (((\inst27~q\ & \inst11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27~q\,
	datab => \inst11~q\,
	datac => \inst1|inst14|inst2~combout\,
	datad => \inst2|inst13|inst3~0_combout\,
	combout => \inst2|inst14|inst2~combout\);

-- Location: LCCOMB_X1_Y26_N30
\inst3|inst12|inst6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst12|inst6~combout\ = (\inst4~q\ & (\inst30~q\ & (\inst2|inst12|inst2~0_combout\ $ (\inst1|inst12|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~q\,
	datab => \inst30~q\,
	datac => \inst2|inst12|inst2~0_combout\,
	datad => \inst1|inst12|inst2~combout\,
	combout => \inst3|inst12|inst6~combout\);

-- Location: LCCOMB_X1_Y26_N2
\inst2|inst13|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst13|inst2~combout\ = \inst2|inst12|inst3~1_combout\ $ (\inst1|inst13|inst2~combout\ $ (((\inst10~q\ & \inst27~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10~q\,
	datab => \inst27~q\,
	datac => \inst2|inst12|inst3~1_combout\,
	datad => \inst1|inst13|inst2~combout\,
	combout => \inst2|inst13|inst2~combout\);

-- Location: LCCOMB_X1_Y26_N24
\inst3|inst13|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst13|inst3~0_combout\ = (\inst2|inst13|inst2~combout\ & ((\inst3|inst12|inst6~combout\) # ((\inst91~q\ & \inst30~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst91~q\,
	datab => \inst30~q\,
	datac => \inst3|inst12|inst6~combout\,
	datad => \inst2|inst13|inst2~combout\,
	combout => \inst3|inst13|inst3~0_combout\);

-- Location: LCCOMB_X2_Y26_N8
\inst3|inst14|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst14|inst3~0_combout\ = (\inst3|inst22~combout\ & ((\inst3|inst13|inst5~1_combout\) # ((\inst2|inst14|inst2~combout\) # (\inst3|inst13|inst3~0_combout\)))) # (!\inst3|inst22~combout\ & (\inst2|inst14|inst2~combout\ & 
-- ((\inst3|inst13|inst5~1_combout\) # (\inst3|inst13|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst13|inst5~1_combout\,
	datab => \inst3|inst22~combout\,
	datac => \inst2|inst14|inst2~combout\,
	datad => \inst3|inst13|inst3~0_combout\,
	combout => \inst3|inst14|inst3~0_combout\);

-- Location: LCCOMB_X2_Y26_N18
\inst2|inst15|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst15|inst2~combout\ = \inst1|inst14|inst3~0_combout\ $ (\inst2|inst14|inst3~0_combout\ $ (((\inst27~q\ & \inst12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27~q\,
	datab => \inst12~q\,
	datac => \inst1|inst14|inst3~0_combout\,
	datad => \inst2|inst14|inst3~0_combout\,
	combout => \inst2|inst15|inst2~combout\);

-- Location: LCCOMB_X2_Y26_N12
\inst3|inst15|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst15|inst3~0_combout\ = (\inst3|inst14|inst3~0_combout\ & ((\inst2|inst15|inst2~combout\) # ((\inst30~q\ & \inst11~q\)))) # (!\inst3|inst14|inst3~0_combout\ & (\inst30~q\ & (\inst11~q\ & \inst2|inst15|inst2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30~q\,
	datab => \inst11~q\,
	datac => \inst3|inst14|inst3~0_combout\,
	datad => \inst2|inst15|inst2~combout\,
	combout => \inst3|inst15|inst3~0_combout\);

-- Location: LCCOMB_X2_Y26_N28
\inst3|inst16|inst3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst16|inst3~0_combout\ = (\inst2|inst15|inst3~0_combout\ & ((\inst3|inst15|inst3~0_combout\) # ((\inst30~q\ & \inst12~q\)))) # (!\inst2|inst15|inst3~0_combout\ & (\inst30~q\ & (\inst12~q\ & \inst3|inst15|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30~q\,
	datab => \inst12~q\,
	datac => \inst2|inst15|inst3~0_combout\,
	datad => \inst3|inst15|inst3~0_combout\,
	combout => \inst3|inst16|inst3~0_combout\);

-- Location: FF_X2_Y26_N29
inst40 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|inst16|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst40~q\);

-- Location: LCCOMB_X2_Y26_N10
\inst3|inst16|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst16|inst2~combout\ = \inst2|inst15|inst3~0_combout\ $ (\inst3|inst15|inst3~0_combout\ $ (((\inst30~q\ & \inst12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30~q\,
	datab => \inst12~q\,
	datac => \inst2|inst15|inst3~0_combout\,
	datad => \inst3|inst15|inst3~0_combout\,
	combout => \inst3|inst16|inst2~combout\);

-- Location: FF_X2_Y26_N11
inst39 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|inst16|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39~q\);

-- Location: LCCOMB_X2_Y26_N16
\inst3|inst15|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst15|inst2~0_combout\ = \inst3|inst14|inst3~0_combout\ $ (\inst2|inst15|inst2~combout\ $ (((\inst30~q\ & \inst11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30~q\,
	datab => \inst11~q\,
	datac => \inst3|inst14|inst3~0_combout\,
	datad => \inst2|inst15|inst2~combout\,
	combout => \inst3|inst15|inst2~0_combout\);

-- Location: FF_X2_Y26_N17
inst38 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|inst15|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst38~q\);

-- Location: LCCOMB_X1_Y26_N20
\inst3|inst14|inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst14|inst2~0_combout\ = \inst3|inst22~combout\ $ (\inst2|inst14|inst2~combout\ $ (((\inst3|inst13|inst5~1_combout\) # (\inst3|inst13|inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst22~combout\,
	datab => \inst3|inst13|inst5~1_combout\,
	datac => \inst3|inst13|inst3~0_combout\,
	datad => \inst2|inst14|inst2~combout\,
	combout => \inst3|inst14|inst2~0_combout\);

-- Location: FF_X1_Y26_N21
inst37 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|inst14|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37~q\);

-- Location: LCCOMB_X1_Y26_N6
\inst3|inst13|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst13|inst2~combout\ = \inst3|inst12|inst6~combout\ $ (\inst2|inst13|inst2~combout\ $ (((\inst91~q\ & \inst30~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst91~q\,
	datab => \inst30~q\,
	datac => \inst3|inst12|inst6~combout\,
	datad => \inst2|inst13|inst2~combout\,
	combout => \inst3|inst13|inst2~combout\);

-- Location: FF_X1_Y26_N7
inst36 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|inst13|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst36~q\);

-- Location: LCCOMB_X1_Y26_N4
\inst3|inst12|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst12|inst~combout\ = \inst2|inst12|inst2~0_combout\ $ (\inst1|inst12|inst2~combout\ $ (((\inst30~q\ & \inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30~q\,
	datab => \inst4~q\,
	datac => \inst2|inst12|inst2~0_combout\,
	datad => \inst1|inst12|inst2~combout\,
	combout => \inst3|inst12|inst~combout\);

-- Location: FF_X1_Y26_N5
inst35 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|inst12|inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst35~q\);

-- Location: LCCOMB_X1_Y23_N28
\inst2|inst11|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst11|inst~combout\ = \inst1|inst11|inst2~combout\ $ (((\inst4~q\ & \inst27~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~q\,
	datac => \inst27~q\,
	datad => \inst1|inst11|inst2~combout\,
	combout => \inst2|inst11|inst~combout\);

-- Location: FF_X1_Y23_N29
inst34 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst11|inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34~q\);

-- Location: LCCOMB_X1_Y23_N26
\inst1|inst10|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst10|inst~combout\ = \inst1|inst18~combout\ $ (\inst|inst10|inst2~0_combout\ $ (((\inst13~q\ & \inst10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13~q\,
	datab => \inst10~q\,
	datac => \inst1|inst18~combout\,
	datad => \inst|inst10|inst2~0_combout\,
	combout => \inst1|inst10|inst~combout\);

-- Location: FF_X1_Y23_N27
inst33 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1|inst10|inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33~q\);

-- Location: LCCOMB_X1_Y23_N4
\inst|inst9|inst\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst9|inst~combout\ = (\inst13~q\ & (\inst91~q\ $ (((\inst4~q\ & \inst14~q\))))) # (!\inst13~q\ & (((\inst4~q\ & \inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13~q\,
	datab => \inst91~q\,
	datac => \inst4~q\,
	datad => \inst14~q\,
	combout => \inst|inst9|inst~combout\);

-- Location: FF_X1_Y23_N5
inst32 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst|inst9|inst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32~q\);

-- Location: LCCOMB_X1_Y23_N10
inst5 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~combout\ = (\inst4~q\ & \inst13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4~q\,
	datad => \inst13~q\,
	combout => \inst5~combout\);

-- Location: FF_X1_Y23_N11
inst31 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31~q\);

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


