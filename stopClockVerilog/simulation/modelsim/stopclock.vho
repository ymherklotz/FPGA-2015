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

-- DATE "03/02/2016 15:24:50"

-- 
-- Device: Altera EP3C16U484C6 Package UFBGA484
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

ENTITY 	stopclock IS
    PORT (
	clk : IN std_logic;
	button0 : IN std_logic;
	button1 : IN std_logic;
	button2 : IN std_logic;
	hex0 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex1 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex2 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex3 : BUFFER std_logic_vector(6 DOWNTO 0);
	decimal_point : BUFFER std_logic
	);
END stopclock;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decimal_point	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button2	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button0	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF stopclock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_button0 : std_logic;
SIGNAL ww_button1 : std_logic;
SIGNAL ww_button2 : std_logic;
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_decimal_point : std_logic;
SIGNAL \clockConv|clock_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex2[0]~output_o\ : std_logic;
SIGNAL \hex2[1]~output_o\ : std_logic;
SIGNAL \hex2[2]~output_o\ : std_logic;
SIGNAL \hex2[3]~output_o\ : std_logic;
SIGNAL \hex2[4]~output_o\ : std_logic;
SIGNAL \hex2[5]~output_o\ : std_logic;
SIGNAL \hex2[6]~output_o\ : std_logic;
SIGNAL \hex3[0]~output_o\ : std_logic;
SIGNAL \hex3[1]~output_o\ : std_logic;
SIGNAL \hex3[2]~output_o\ : std_logic;
SIGNAL \hex3[3]~output_o\ : std_logic;
SIGNAL \hex3[4]~output_o\ : std_logic;
SIGNAL \hex3[5]~output_o\ : std_logic;
SIGNAL \hex3[6]~output_o\ : std_logic;
SIGNAL \decimal_point~output_o\ : std_logic;
SIGNAL \button2~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \button1~input_o\ : std_logic;
SIGNAL \clockConv|start~0_combout\ : std_logic;
SIGNAL \clockConv|start~q\ : std_logic;
SIGNAL \clockConv|ctr[0]~18_combout\ : std_logic;
SIGNAL \clockConv|ctr[0]~19\ : std_logic;
SIGNAL \clockConv|ctr[1]~20_combout\ : std_logic;
SIGNAL \clockConv|ctr[1]~21\ : std_logic;
SIGNAL \clockConv|ctr[2]~22_combout\ : std_logic;
SIGNAL \clockConv|ctr[2]~23\ : std_logic;
SIGNAL \clockConv|ctr[3]~24_combout\ : std_logic;
SIGNAL \clockConv|ctr[3]~25\ : std_logic;
SIGNAL \clockConv|ctr[4]~26_combout\ : std_logic;
SIGNAL \clockConv|ctr[4]~27\ : std_logic;
SIGNAL \clockConv|ctr[5]~28_combout\ : std_logic;
SIGNAL \clockConv|ctr[5]~29\ : std_logic;
SIGNAL \clockConv|ctr[6]~30_combout\ : std_logic;
SIGNAL \clockConv|ctr[6]~31\ : std_logic;
SIGNAL \clockConv|ctr[7]~32_combout\ : std_logic;
SIGNAL \clockConv|ctr[7]~33\ : std_logic;
SIGNAL \clockConv|ctr[8]~34_combout\ : std_logic;
SIGNAL \clockConv|ctr[8]~35\ : std_logic;
SIGNAL \clockConv|ctr[9]~36_combout\ : std_logic;
SIGNAL \clockConv|ctr[9]~37\ : std_logic;
SIGNAL \clockConv|ctr[10]~38_combout\ : std_logic;
SIGNAL \clockConv|ctr[10]~39\ : std_logic;
SIGNAL \clockConv|ctr[11]~40_combout\ : std_logic;
SIGNAL \clockConv|ctr[11]~41\ : std_logic;
SIGNAL \clockConv|ctr[12]~42_combout\ : std_logic;
SIGNAL \clockConv|ctr[12]~43\ : std_logic;
SIGNAL \clockConv|ctr[13]~44_combout\ : std_logic;
SIGNAL \clockConv|ctr[13]~45\ : std_logic;
SIGNAL \clockConv|ctr[14]~46_combout\ : std_logic;
SIGNAL \clockConv|ctr[14]~47\ : std_logic;
SIGNAL \clockConv|ctr[15]~48_combout\ : std_logic;
SIGNAL \clockConv|ctr[15]~49\ : std_logic;
SIGNAL \clockConv|ctr[16]~50_combout\ : std_logic;
SIGNAL \clockConv|ctr[16]~51\ : std_logic;
SIGNAL \clockConv|ctr[17]~52_combout\ : std_logic;
SIGNAL \clockConv|LessThan0~0_combout\ : std_logic;
SIGNAL \clockConv|LessThan0~3_combout\ : std_logic;
SIGNAL \clockConv|LessThan0~1_combout\ : std_logic;
SIGNAL \clockConv|LessThan0~2_combout\ : std_logic;
SIGNAL \clockConv|LessThan0~4_combout\ : std_logic;
SIGNAL \clockConv|LessThan0~5_combout\ : std_logic;
SIGNAL \clockConv|clock_out~0_combout\ : std_logic;
SIGNAL \clockConv|clock_out~feeder_combout\ : std_logic;
SIGNAL \clockConv|clock_out~q\ : std_logic;
SIGNAL \clockConv|clock_out~clkctrl_outclk\ : std_logic;
SIGNAL \button0~input_o\ : std_logic;
SIGNAL \timeCount|en~q\ : std_logic;
SIGNAL \timeCount|always0~0_combout\ : std_logic;
SIGNAL \timeCount|c0~0_combout\ : std_logic;
SIGNAL \timeCount|c0~1_combout\ : std_logic;
SIGNAL \timeCount|c2[0]~0_combout\ : std_logic;
SIGNAL \timeCount|Add3~0_combout\ : std_logic;
SIGNAL \timeCount|c0~2_combout\ : std_logic;
SIGNAL \timeCount|c0[3]~3_combout\ : std_logic;
SIGNAL \timeCount|c0~4_combout\ : std_logic;
SIGNAL \dss0|out~0_combout\ : std_logic;
SIGNAL \dss0|out~1_combout\ : std_logic;
SIGNAL \dss0|WideOr4~0_combout\ : std_logic;
SIGNAL \dss0|WideOr3~0_combout\ : std_logic;
SIGNAL \dss0|WideOr2~0_combout\ : std_logic;
SIGNAL \dss0|WideOr1~0_combout\ : std_logic;
SIGNAL \dss0|WideOr0~0_combout\ : std_logic;
SIGNAL \timeCount|c1~1_combout\ : std_logic;
SIGNAL \timeCount|Add2~0_combout\ : std_logic;
SIGNAL \timeCount|c1~2_combout\ : std_logic;
SIGNAL \timeCount|Add2~1_combout\ : std_logic;
SIGNAL \timeCount|c1~3_combout\ : std_logic;
SIGNAL \timeCount|c2[0]~1_combout\ : std_logic;
SIGNAL \timeCount|c1~0_combout\ : std_logic;
SIGNAL \dss1|out~0_combout\ : std_logic;
SIGNAL \dss1|out~1_combout\ : std_logic;
SIGNAL \dss1|WideOr4~0_combout\ : std_logic;
SIGNAL \dss1|WideOr3~0_combout\ : std_logic;
SIGNAL \dss1|WideOr2~0_combout\ : std_logic;
SIGNAL \dss1|WideOr1~0_combout\ : std_logic;
SIGNAL \dss1|WideOr0~0_combout\ : std_logic;
SIGNAL \timeCount|c2~3_combout\ : std_logic;
SIGNAL \timeCount|c2[0]~4_combout\ : std_logic;
SIGNAL \timeCount|c2~5_combout\ : std_logic;
SIGNAL \timeCount|Add1~0_combout\ : std_logic;
SIGNAL \timeCount|c2~6_combout\ : std_logic;
SIGNAL \timeCount|c2[0]~2_combout\ : std_logic;
SIGNAL \timeCount|Add1~1_combout\ : std_logic;
SIGNAL \timeCount|c2~7_combout\ : std_logic;
SIGNAL \dss2|out~0_combout\ : std_logic;
SIGNAL \dss2|out~1_combout\ : std_logic;
SIGNAL \dss2|WideOr4~0_combout\ : std_logic;
SIGNAL \dss2|WideOr3~0_combout\ : std_logic;
SIGNAL \dss2|WideOr2~0_combout\ : std_logic;
SIGNAL \dss2|WideOr1~0_combout\ : std_logic;
SIGNAL \dss2|WideOr0~0_combout\ : std_logic;
SIGNAL \timeCount|Add0~0_combout\ : std_logic;
SIGNAL \timeCount|c3~4_combout\ : std_logic;
SIGNAL \timeCount|c3[1]~2_combout\ : std_logic;
SIGNAL \timeCount|c3[1]~0_combout\ : std_logic;
SIGNAL \timeCount|c3~1_combout\ : std_logic;
SIGNAL \timeCount|c3~3_combout\ : std_logic;
SIGNAL \timeCount|Add0~1_combout\ : std_logic;
SIGNAL \timeCount|c3~5_combout\ : std_logic;
SIGNAL \dss3|out~0_combout\ : std_logic;
SIGNAL \dss3|out~1_combout\ : std_logic;
SIGNAL \dss3|WideOr4~0_combout\ : std_logic;
SIGNAL \dss3|WideOr3~0_combout\ : std_logic;
SIGNAL \dss3|WideOr2~0_combout\ : std_logic;
SIGNAL \dss3|WideOr1~0_combout\ : std_logic;
SIGNAL \dss3|WideOr0~0_combout\ : std_logic;
SIGNAL \dss1|out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dss2|out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dss3|out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \clockConv|ctr\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \timeCount|c3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timeCount|c2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timeCount|c1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timeCount|c0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dss0|out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \timeCount|ALT_INV_c0[3]~3_combout\ : std_logic;
SIGNAL \clockConv|ALT_INV_LessThan0~5_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_button0 <= button0;
ww_button1 <= button1;
ww_button2 <= button2;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
decimal_point <= ww_decimal_point;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clockConv|clock_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clockConv|clock_out~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\timeCount|ALT_INV_c0[3]~3_combout\ <= NOT \timeCount|c0[3]~3_combout\;
\clockConv|ALT_INV_LessThan0~5_combout\ <= NOT \clockConv|LessThan0~5_combout\;

-- Location: IOOBUF_X21_Y29_N23
\hex0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss0|out\(0),
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\hex0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss0|out\(1),
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\hex0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss0|out\(2),
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\hex0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss0|out\(3),
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\hex0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss0|out\(4),
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\hex0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss0|out\(5),
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\hex0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss0|out\(6),
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\hex1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss1|out\(0),
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\hex1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss1|out\(1),
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\hex1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss1|out\(2),
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\hex1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss1|out\(3),
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\hex1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss1|out\(4),
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\hex1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss1|out\(5),
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\hex1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss1|out\(6),
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\hex2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss2|out\(0),
	devoe => ww_devoe,
	o => \hex2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\hex2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss2|out\(1),
	devoe => ww_devoe,
	o => \hex2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\hex2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss2|out\(2),
	devoe => ww_devoe,
	o => \hex2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\hex2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss2|out\(3),
	devoe => ww_devoe,
	o => \hex2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\hex2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss2|out\(4),
	devoe => ww_devoe,
	o => \hex2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\hex2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss2|out\(5),
	devoe => ww_devoe,
	o => \hex2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\hex2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss2|out\(6),
	devoe => ww_devoe,
	o => \hex2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\hex3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss3|out\(0),
	devoe => ww_devoe,
	o => \hex3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\hex3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss3|out\(1),
	devoe => ww_devoe,
	o => \hex3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\hex3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss3|out\(2),
	devoe => ww_devoe,
	o => \hex3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\hex3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss3|out\(3),
	devoe => ww_devoe,
	o => \hex3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\hex3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss3|out\(4),
	devoe => ww_devoe,
	o => \hex3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\hex3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss3|out\(5),
	devoe => ww_devoe,
	o => \hex3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\hex3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dss3|out\(6),
	devoe => ww_devoe,
	o => \hex3[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\decimal_point~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \decimal_point~output_o\);

-- Location: IOIBUF_X0_Y23_N1
\button2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button2,
	o => \button2~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y23_N15
\button1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button1,
	o => \button1~input_o\);

-- Location: LCCOMB_X19_Y27_N26
\clockConv|start~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|start~0_combout\ = (\clockConv|start~q\) # (!\button1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button1~input_o\,
	datac => \clockConv|start~q\,
	combout => \clockConv|start~0_combout\);

-- Location: FF_X19_Y27_N27
\clockConv|start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|start~q\);

-- Location: LCCOMB_X19_Y28_N14
\clockConv|ctr[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[0]~18_combout\ = \clockConv|ctr\(0) $ (VCC)
-- \clockConv|ctr[0]~19\ = CARRY(\clockConv|ctr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clockConv|ctr\(0),
	datad => VCC,
	combout => \clockConv|ctr[0]~18_combout\,
	cout => \clockConv|ctr[0]~19\);

-- Location: FF_X19_Y28_N15
\clockConv|ctr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[0]~18_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(0));

-- Location: LCCOMB_X19_Y28_N16
\clockConv|ctr[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[1]~20_combout\ = (\clockConv|ctr\(1) & (!\clockConv|ctr[0]~19\)) # (!\clockConv|ctr\(1) & ((\clockConv|ctr[0]~19\) # (GND)))
-- \clockConv|ctr[1]~21\ = CARRY((!\clockConv|ctr[0]~19\) # (!\clockConv|ctr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockConv|ctr\(1),
	datad => VCC,
	cin => \clockConv|ctr[0]~19\,
	combout => \clockConv|ctr[1]~20_combout\,
	cout => \clockConv|ctr[1]~21\);

-- Location: FF_X19_Y28_N17
\clockConv|ctr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[1]~20_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(1));

-- Location: LCCOMB_X19_Y28_N18
\clockConv|ctr[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[2]~22_combout\ = (\clockConv|ctr\(2) & (\clockConv|ctr[1]~21\ $ (GND))) # (!\clockConv|ctr\(2) & (!\clockConv|ctr[1]~21\ & VCC))
-- \clockConv|ctr[2]~23\ = CARRY((\clockConv|ctr\(2) & !\clockConv|ctr[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockConv|ctr\(2),
	datad => VCC,
	cin => \clockConv|ctr[1]~21\,
	combout => \clockConv|ctr[2]~22_combout\,
	cout => \clockConv|ctr[2]~23\);

-- Location: FF_X19_Y28_N19
\clockConv|ctr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[2]~22_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(2));

-- Location: LCCOMB_X19_Y28_N20
\clockConv|ctr[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[3]~24_combout\ = (\clockConv|ctr\(3) & (!\clockConv|ctr[2]~23\)) # (!\clockConv|ctr\(3) & ((\clockConv|ctr[2]~23\) # (GND)))
-- \clockConv|ctr[3]~25\ = CARRY((!\clockConv|ctr[2]~23\) # (!\clockConv|ctr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockConv|ctr\(3),
	datad => VCC,
	cin => \clockConv|ctr[2]~23\,
	combout => \clockConv|ctr[3]~24_combout\,
	cout => \clockConv|ctr[3]~25\);

-- Location: FF_X19_Y28_N21
\clockConv|ctr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[3]~24_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(3));

-- Location: LCCOMB_X19_Y28_N22
\clockConv|ctr[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[4]~26_combout\ = (\clockConv|ctr\(4) & (\clockConv|ctr[3]~25\ $ (GND))) # (!\clockConv|ctr\(4) & (!\clockConv|ctr[3]~25\ & VCC))
-- \clockConv|ctr[4]~27\ = CARRY((\clockConv|ctr\(4) & !\clockConv|ctr[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockConv|ctr\(4),
	datad => VCC,
	cin => \clockConv|ctr[3]~25\,
	combout => \clockConv|ctr[4]~26_combout\,
	cout => \clockConv|ctr[4]~27\);

-- Location: FF_X19_Y28_N23
\clockConv|ctr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[4]~26_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(4));

-- Location: LCCOMB_X19_Y28_N24
\clockConv|ctr[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[5]~28_combout\ = (\clockConv|ctr\(5) & (!\clockConv|ctr[4]~27\)) # (!\clockConv|ctr\(5) & ((\clockConv|ctr[4]~27\) # (GND)))
-- \clockConv|ctr[5]~29\ = CARRY((!\clockConv|ctr[4]~27\) # (!\clockConv|ctr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockConv|ctr\(5),
	datad => VCC,
	cin => \clockConv|ctr[4]~27\,
	combout => \clockConv|ctr[5]~28_combout\,
	cout => \clockConv|ctr[5]~29\);

-- Location: FF_X19_Y28_N25
\clockConv|ctr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[5]~28_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(5));

-- Location: LCCOMB_X19_Y28_N26
\clockConv|ctr[6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[6]~30_combout\ = (\clockConv|ctr\(6) & (\clockConv|ctr[5]~29\ $ (GND))) # (!\clockConv|ctr\(6) & (!\clockConv|ctr[5]~29\ & VCC))
-- \clockConv|ctr[6]~31\ = CARRY((\clockConv|ctr\(6) & !\clockConv|ctr[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockConv|ctr\(6),
	datad => VCC,
	cin => \clockConv|ctr[5]~29\,
	combout => \clockConv|ctr[6]~30_combout\,
	cout => \clockConv|ctr[6]~31\);

-- Location: FF_X19_Y28_N27
\clockConv|ctr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[6]~30_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(6));

-- Location: LCCOMB_X19_Y28_N28
\clockConv|ctr[7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[7]~32_combout\ = (\clockConv|ctr\(7) & (!\clockConv|ctr[6]~31\)) # (!\clockConv|ctr\(7) & ((\clockConv|ctr[6]~31\) # (GND)))
-- \clockConv|ctr[7]~33\ = CARRY((!\clockConv|ctr[6]~31\) # (!\clockConv|ctr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockConv|ctr\(7),
	datad => VCC,
	cin => \clockConv|ctr[6]~31\,
	combout => \clockConv|ctr[7]~32_combout\,
	cout => \clockConv|ctr[7]~33\);

-- Location: FF_X19_Y28_N29
\clockConv|ctr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[7]~32_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(7));

-- Location: LCCOMB_X19_Y28_N30
\clockConv|ctr[8]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[8]~34_combout\ = (\clockConv|ctr\(8) & (\clockConv|ctr[7]~33\ $ (GND))) # (!\clockConv|ctr\(8) & (!\clockConv|ctr[7]~33\ & VCC))
-- \clockConv|ctr[8]~35\ = CARRY((\clockConv|ctr\(8) & !\clockConv|ctr[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockConv|ctr\(8),
	datad => VCC,
	cin => \clockConv|ctr[7]~33\,
	combout => \clockConv|ctr[8]~34_combout\,
	cout => \clockConv|ctr[8]~35\);

-- Location: FF_X19_Y28_N31
\clockConv|ctr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[8]~34_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(8));

-- Location: LCCOMB_X19_Y27_N0
\clockConv|ctr[9]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[9]~36_combout\ = (\clockConv|ctr\(9) & (!\clockConv|ctr[8]~35\)) # (!\clockConv|ctr\(9) & ((\clockConv|ctr[8]~35\) # (GND)))
-- \clockConv|ctr[9]~37\ = CARRY((!\clockConv|ctr[8]~35\) # (!\clockConv|ctr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockConv|ctr\(9),
	datad => VCC,
	cin => \clockConv|ctr[8]~35\,
	combout => \clockConv|ctr[9]~36_combout\,
	cout => \clockConv|ctr[9]~37\);

-- Location: FF_X19_Y27_N1
\clockConv|ctr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[9]~36_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(9));

-- Location: LCCOMB_X19_Y27_N2
\clockConv|ctr[10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[10]~38_combout\ = (\clockConv|ctr\(10) & (\clockConv|ctr[9]~37\ $ (GND))) # (!\clockConv|ctr\(10) & (!\clockConv|ctr[9]~37\ & VCC))
-- \clockConv|ctr[10]~39\ = CARRY((\clockConv|ctr\(10) & !\clockConv|ctr[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockConv|ctr\(10),
	datad => VCC,
	cin => \clockConv|ctr[9]~37\,
	combout => \clockConv|ctr[10]~38_combout\,
	cout => \clockConv|ctr[10]~39\);

-- Location: FF_X19_Y27_N3
\clockConv|ctr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[10]~38_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(10));

-- Location: LCCOMB_X19_Y27_N4
\clockConv|ctr[11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[11]~40_combout\ = (\clockConv|ctr\(11) & (!\clockConv|ctr[10]~39\)) # (!\clockConv|ctr\(11) & ((\clockConv|ctr[10]~39\) # (GND)))
-- \clockConv|ctr[11]~41\ = CARRY((!\clockConv|ctr[10]~39\) # (!\clockConv|ctr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockConv|ctr\(11),
	datad => VCC,
	cin => \clockConv|ctr[10]~39\,
	combout => \clockConv|ctr[11]~40_combout\,
	cout => \clockConv|ctr[11]~41\);

-- Location: FF_X19_Y27_N5
\clockConv|ctr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[11]~40_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(11));

-- Location: LCCOMB_X19_Y27_N6
\clockConv|ctr[12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[12]~42_combout\ = (\clockConv|ctr\(12) & (\clockConv|ctr[11]~41\ $ (GND))) # (!\clockConv|ctr\(12) & (!\clockConv|ctr[11]~41\ & VCC))
-- \clockConv|ctr[12]~43\ = CARRY((\clockConv|ctr\(12) & !\clockConv|ctr[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockConv|ctr\(12),
	datad => VCC,
	cin => \clockConv|ctr[11]~41\,
	combout => \clockConv|ctr[12]~42_combout\,
	cout => \clockConv|ctr[12]~43\);

-- Location: FF_X19_Y27_N7
\clockConv|ctr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[12]~42_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(12));

-- Location: LCCOMB_X19_Y27_N8
\clockConv|ctr[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[13]~44_combout\ = (\clockConv|ctr\(13) & (!\clockConv|ctr[12]~43\)) # (!\clockConv|ctr\(13) & ((\clockConv|ctr[12]~43\) # (GND)))
-- \clockConv|ctr[13]~45\ = CARRY((!\clockConv|ctr[12]~43\) # (!\clockConv|ctr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockConv|ctr\(13),
	datad => VCC,
	cin => \clockConv|ctr[12]~43\,
	combout => \clockConv|ctr[13]~44_combout\,
	cout => \clockConv|ctr[13]~45\);

-- Location: FF_X19_Y27_N9
\clockConv|ctr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[13]~44_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(13));

-- Location: LCCOMB_X19_Y27_N10
\clockConv|ctr[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[14]~46_combout\ = (\clockConv|ctr\(14) & (\clockConv|ctr[13]~45\ $ (GND))) # (!\clockConv|ctr\(14) & (!\clockConv|ctr[13]~45\ & VCC))
-- \clockConv|ctr[14]~47\ = CARRY((\clockConv|ctr\(14) & !\clockConv|ctr[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockConv|ctr\(14),
	datad => VCC,
	cin => \clockConv|ctr[13]~45\,
	combout => \clockConv|ctr[14]~46_combout\,
	cout => \clockConv|ctr[14]~47\);

-- Location: FF_X19_Y27_N11
\clockConv|ctr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[14]~46_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(14));

-- Location: LCCOMB_X19_Y27_N12
\clockConv|ctr[15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[15]~48_combout\ = (\clockConv|ctr\(15) & (!\clockConv|ctr[14]~47\)) # (!\clockConv|ctr\(15) & ((\clockConv|ctr[14]~47\) # (GND)))
-- \clockConv|ctr[15]~49\ = CARRY((!\clockConv|ctr[14]~47\) # (!\clockConv|ctr\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clockConv|ctr\(15),
	datad => VCC,
	cin => \clockConv|ctr[14]~47\,
	combout => \clockConv|ctr[15]~48_combout\,
	cout => \clockConv|ctr[15]~49\);

-- Location: FF_X19_Y27_N13
\clockConv|ctr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[15]~48_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(15));

-- Location: LCCOMB_X19_Y27_N14
\clockConv|ctr[16]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[16]~50_combout\ = (\clockConv|ctr\(16) & (\clockConv|ctr[15]~49\ $ (GND))) # (!\clockConv|ctr\(16) & (!\clockConv|ctr[15]~49\ & VCC))
-- \clockConv|ctr[16]~51\ = CARRY((\clockConv|ctr\(16) & !\clockConv|ctr[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clockConv|ctr\(16),
	datad => VCC,
	cin => \clockConv|ctr[15]~49\,
	combout => \clockConv|ctr[16]~50_combout\,
	cout => \clockConv|ctr[16]~51\);

-- Location: FF_X19_Y27_N15
\clockConv|ctr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[16]~50_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(16));

-- Location: LCCOMB_X19_Y27_N16
\clockConv|ctr[17]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|ctr[17]~52_combout\ = \clockConv|ctr[16]~51\ $ (\clockConv|ctr\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clockConv|ctr\(17),
	cin => \clockConv|ctr[16]~51\,
	combout => \clockConv|ctr[17]~52_combout\);

-- Location: FF_X19_Y27_N17
\clockConv|ctr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|ctr[17]~52_combout\,
	sclr => \clockConv|ALT_INV_LessThan0~5_combout\,
	ena => \clockConv|start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|ctr\(17));

-- Location: LCCOMB_X19_Y27_N18
\clockConv|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|LessThan0~0_combout\ = (\clockConv|ctr\(14) & (\clockConv|ctr\(17) & (\clockConv|ctr\(16) & \clockConv|ctr\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockConv|ctr\(14),
	datab => \clockConv|ctr\(17),
	datac => \clockConv|ctr\(16),
	datad => \clockConv|ctr\(15),
	combout => \clockConv|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y28_N12
\clockConv|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|LessThan0~3_combout\ = (!\clockConv|ctr\(6) & (!\clockConv|ctr\(4) & !\clockConv|ctr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockConv|ctr\(6),
	datac => \clockConv|ctr\(4),
	datad => \clockConv|ctr\(5),
	combout => \clockConv|LessThan0~3_combout\);

-- Location: LCCOMB_X19_Y28_N8
\clockConv|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|LessThan0~1_combout\ = (!\clockConv|ctr\(8) & (!\clockConv|ctr\(9) & (!\clockConv|ctr\(10) & !\clockConv|ctr\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockConv|ctr\(8),
	datab => \clockConv|ctr\(9),
	datac => \clockConv|ctr\(10),
	datad => \clockConv|ctr\(11),
	combout => \clockConv|LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y28_N10
\clockConv|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|LessThan0~2_combout\ = (((!\clockConv|ctr\(1)) # (!\clockConv|ctr\(0))) # (!\clockConv|ctr\(2))) # (!\clockConv|ctr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockConv|ctr\(3),
	datab => \clockConv|ctr\(2),
	datac => \clockConv|ctr\(0),
	datad => \clockConv|ctr\(1),
	combout => \clockConv|LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y28_N2
\clockConv|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|LessThan0~4_combout\ = (\clockConv|LessThan0~1_combout\ & (((\clockConv|LessThan0~3_combout\ & \clockConv|LessThan0~2_combout\)) # (!\clockConv|ctr\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockConv|LessThan0~3_combout\,
	datab => \clockConv|ctr\(7),
	datac => \clockConv|LessThan0~1_combout\,
	datad => \clockConv|LessThan0~2_combout\,
	combout => \clockConv|LessThan0~4_combout\);

-- Location: LCCOMB_X19_Y27_N24
\clockConv|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|LessThan0~5_combout\ = ((!\clockConv|ctr\(13) & ((\clockConv|LessThan0~4_combout\) # (!\clockConv|ctr\(12))))) # (!\clockConv|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockConv|ctr\(12),
	datab => \clockConv|ctr\(13),
	datac => \clockConv|LessThan0~0_combout\,
	datad => \clockConv|LessThan0~4_combout\,
	combout => \clockConv|LessThan0~5_combout\);

-- Location: LCCOMB_X19_Y27_N28
\clockConv|clock_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|clock_out~0_combout\ = \clockConv|clock_out~q\ $ (((!\clockConv|LessThan0~5_combout\ & ((\clockConv|start~q\) # (!\button1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clockConv|start~q\,
	datab => \button1~input_o\,
	datac => \clockConv|clock_out~q\,
	datad => \clockConv|LessThan0~5_combout\,
	combout => \clockConv|clock_out~0_combout\);

-- Location: LCCOMB_X19_Y27_N22
\clockConv|clock_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clockConv|clock_out~feeder_combout\ = \clockConv|clock_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clockConv|clock_out~0_combout\,
	combout => \clockConv|clock_out~feeder_combout\);

-- Location: FF_X19_Y27_N23
\clockConv|clock_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clockConv|clock_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockConv|clock_out~q\);

-- Location: CLKCTRL_G14
\clockConv|clock_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clockConv|clock_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clockConv|clock_out~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y21_N8
\button0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button0,
	o => \button0~input_o\);

-- Location: FF_X28_Y27_N27
\timeCount|en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	asdata => \timeCount|always0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|en~q\);

-- Location: LCCOMB_X28_Y27_N0
\timeCount|always0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|always0~0_combout\ = ((\timeCount|en~q\ & \button1~input_o\)) # (!\button0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button0~input_o\,
	datac => \timeCount|en~q\,
	datad => \button1~input_o\,
	combout => \timeCount|always0~0_combout\);

-- Location: LCCOMB_X28_Y28_N4
\timeCount|c0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c0~0_combout\ = (!\timeCount|c2[0]~0_combout\ & (!\timeCount|c0\(0) & !\timeCount|always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeCount|c2[0]~0_combout\,
	datac => \timeCount|c0\(0),
	datad => \timeCount|always0~0_combout\,
	combout => \timeCount|c0~0_combout\);

-- Location: FF_X28_Y28_N5
\timeCount|c0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	d => \timeCount|c0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|c0\(0));

-- Location: LCCOMB_X28_Y28_N6
\timeCount|c0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c0~1_combout\ = (!\timeCount|always0~0_combout\ & (!\timeCount|c2[0]~0_combout\ & (\timeCount|c0\(0) $ (\timeCount|c0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c0\(0),
	datab => \timeCount|always0~0_combout\,
	datac => \timeCount|c0\(1),
	datad => \timeCount|c2[0]~0_combout\,
	combout => \timeCount|c0~1_combout\);

-- Location: FF_X28_Y28_N7
\timeCount|c0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	d => \timeCount|c0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|c0\(1));

-- Location: LCCOMB_X28_Y28_N0
\timeCount|c2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c2[0]~0_combout\ = (!\timeCount|c0\(1) & (\timeCount|c0\(3) & (\timeCount|c0\(0) & !\timeCount|c0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c0\(1),
	datab => \timeCount|c0\(3),
	datac => \timeCount|c0\(0),
	datad => \timeCount|c0\(2),
	combout => \timeCount|c2[0]~0_combout\);

-- Location: LCCOMB_X29_Y28_N18
\timeCount|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|Add3~0_combout\ = (\timeCount|c0\(0) & \timeCount|c0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeCount|c0\(0),
	datac => \timeCount|c0\(1),
	combout => \timeCount|Add3~0_combout\);

-- Location: LCCOMB_X28_Y28_N24
\timeCount|c0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c0~2_combout\ = (!\timeCount|c2[0]~0_combout\ & (!\timeCount|always0~0_combout\ & (\timeCount|c0\(2) $ (\timeCount|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2[0]~0_combout\,
	datab => \timeCount|always0~0_combout\,
	datac => \timeCount|c0\(2),
	datad => \timeCount|Add3~0_combout\,
	combout => \timeCount|c0~2_combout\);

-- Location: FF_X28_Y28_N25
\timeCount|c0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	d => \timeCount|c0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|c0\(2));

-- Location: LCCOMB_X28_Y27_N22
\timeCount|c0[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c0[3]~3_combout\ = (\button0~input_o\ & (!\timeCount|c2[0]~0_combout\ & ((!\timeCount|en~q\) # (!\button1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datab => \button0~input_o\,
	datac => \timeCount|en~q\,
	datad => \timeCount|c2[0]~0_combout\,
	combout => \timeCount|c0[3]~3_combout\);

-- Location: LCCOMB_X28_Y28_N2
\timeCount|c0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c0~4_combout\ = (\timeCount|c0[3]~3_combout\ & (\timeCount|c0\(3) $ (((\timeCount|c0\(2) & \timeCount|Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c0\(2),
	datab => \timeCount|Add3~0_combout\,
	datac => \timeCount|c0\(3),
	datad => \timeCount|c0[3]~3_combout\,
	combout => \timeCount|c0~4_combout\);

-- Location: FF_X28_Y28_N3
\timeCount|c0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	d => \timeCount|c0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|c0\(3));

-- Location: LCCOMB_X29_Y28_N12
\dss0|out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss0|out~0_combout\ = (!\timeCount|c0\(3) & (!\timeCount|c0\(1) & (\timeCount|c0\(0) $ (\timeCount|c0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c0\(3),
	datab => \timeCount|c0\(1),
	datac => \timeCount|c0\(0),
	datad => \timeCount|c0\(2),
	combout => \dss0|out~0_combout\);

-- Location: LCCOMB_X29_Y28_N8
\dss0|out[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss0|out\(0) = (\button2~input_o\ & ((\dss0|out~0_combout\))) # (!\button2~input_o\ & (\dss0|out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dss0|out\(0),
	datac => \button2~input_o\,
	datad => \dss0|out~0_combout\,
	combout => \dss0|out\(0));

-- Location: LCCOMB_X28_Y28_N20
\dss0|out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss0|out~1_combout\ = (!\timeCount|c0\(3) & (\timeCount|c0\(2) & (\timeCount|c0\(1) $ (\timeCount|c0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c0\(1),
	datab => \timeCount|c0\(3),
	datac => \timeCount|c0\(0),
	datad => \timeCount|c0\(2),
	combout => \dss0|out~1_combout\);

-- Location: LCCOMB_X28_Y28_N30
\dss0|out[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss0|out\(1) = (\button2~input_o\ & (\dss0|out~1_combout\)) # (!\button2~input_o\ & ((\dss0|out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dss0|out~1_combout\,
	datac => \dss0|out\(1),
	datad => \button2~input_o\,
	combout => \dss0|out\(1));

-- Location: LCCOMB_X28_Y28_N14
\dss0|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss0|WideOr4~0_combout\ = (\timeCount|c0\(2) & (((\timeCount|c0\(3))))) # (!\timeCount|c0\(2) & (\timeCount|c0\(1) & ((\timeCount|c0\(3)) # (!\timeCount|c0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c0\(1),
	datab => \timeCount|c0\(0),
	datac => \timeCount|c0\(3),
	datad => \timeCount|c0\(2),
	combout => \dss0|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y28_N16
\dss0|out[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss0|out\(2) = (\button2~input_o\ & ((\dss0|WideOr4~0_combout\))) # (!\button2~input_o\ & (\dss0|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dss0|out\(2),
	datac => \dss0|WideOr4~0_combout\,
	datad => \button2~input_o\,
	combout => \dss0|out\(2));

-- Location: LCCOMB_X28_Y28_N8
\dss0|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss0|WideOr3~0_combout\ = (!\timeCount|c0\(3) & ((\timeCount|c0\(1) & (\timeCount|c0\(0) & \timeCount|c0\(2))) # (!\timeCount|c0\(1) & (\timeCount|c0\(0) $ (\timeCount|c0\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c0\(1),
	datab => \timeCount|c0\(0),
	datac => \timeCount|c0\(2),
	datad => \timeCount|c0\(3),
	combout => \dss0|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y28_N18
\dss0|out[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss0|out\(3) = (\button2~input_o\ & ((\dss0|WideOr3~0_combout\))) # (!\button2~input_o\ & (\dss0|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dss0|out\(3),
	datac => \dss0|WideOr3~0_combout\,
	datad => \button2~input_o\,
	combout => \dss0|out\(3));

-- Location: LCCOMB_X28_Y28_N10
\dss0|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss0|WideOr2~0_combout\ = (\timeCount|c0\(1) & (!\timeCount|c0\(3) & (\timeCount|c0\(0)))) # (!\timeCount|c0\(1) & ((\timeCount|c0\(2) & (!\timeCount|c0\(3))) # (!\timeCount|c0\(2) & ((\timeCount|c0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c0\(1),
	datab => \timeCount|c0\(3),
	datac => \timeCount|c0\(0),
	datad => \timeCount|c0\(2),
	combout => \dss0|WideOr2~0_combout\);

-- Location: LCCOMB_X28_Y28_N28
\dss0|out[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss0|out\(4) = (\button2~input_o\ & ((\dss0|WideOr2~0_combout\))) # (!\button2~input_o\ & (\dss0|out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dss0|out\(4),
	datac => \button2~input_o\,
	datad => \dss0|WideOr2~0_combout\,
	combout => \dss0|out\(4));

-- Location: LCCOMB_X28_Y28_N12
\dss0|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss0|WideOr1~0_combout\ = (!\timeCount|c0\(3) & ((\timeCount|c0\(1) & ((\timeCount|c0\(0)) # (!\timeCount|c0\(2)))) # (!\timeCount|c0\(1) & (!\timeCount|c0\(2) & \timeCount|c0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c0\(1),
	datab => \timeCount|c0\(2),
	datac => \timeCount|c0\(3),
	datad => \timeCount|c0\(0),
	combout => \dss0|WideOr1~0_combout\);

-- Location: LCCOMB_X29_Y28_N10
\dss0|out[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss0|out\(5) = (\button2~input_o\ & ((\dss0|WideOr1~0_combout\))) # (!\button2~input_o\ & (\dss0|out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dss0|out\(5),
	datac => \button2~input_o\,
	datad => \dss0|WideOr1~0_combout\,
	combout => \dss0|out\(5));

-- Location: LCCOMB_X28_Y28_N26
\dss0|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss0|WideOr0~0_combout\ = (\timeCount|c0\(3)) # ((\timeCount|c0\(1) & ((!\timeCount|c0\(2)) # (!\timeCount|c0\(0)))) # (!\timeCount|c0\(1) & ((\timeCount|c0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c0\(1),
	datab => \timeCount|c0\(3),
	datac => \timeCount|c0\(0),
	datad => \timeCount|c0\(2),
	combout => \dss0|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y28_N22
\dss0|out[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss0|out\(6) = (\button2~input_o\ & ((!\dss0|WideOr0~0_combout\))) # (!\button2~input_o\ & (\dss0|out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dss0|out\(6),
	datac => \dss0|WideOr0~0_combout\,
	datad => \button2~input_o\,
	combout => \dss0|out\(6));

-- Location: LCCOMB_X27_Y27_N22
\timeCount|c1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c1~1_combout\ = (!\timeCount|c2[0]~1_combout\ & (!\timeCount|always0~0_combout\ & (\timeCount|c1\(1) $ (\timeCount|c1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2[0]~1_combout\,
	datab => \timeCount|always0~0_combout\,
	datac => \timeCount|c1\(1),
	datad => \timeCount|c1\(0),
	combout => \timeCount|c1~1_combout\);

-- Location: FF_X27_Y27_N23
\timeCount|c1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	d => \timeCount|c1~1_combout\,
	ena => \timeCount|ALT_INV_c0[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|c1\(1));

-- Location: LCCOMB_X26_Y27_N22
\timeCount|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|Add2~0_combout\ = \timeCount|c1\(2) $ (((\timeCount|c1\(0) & \timeCount|c1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c1\(2),
	datab => \timeCount|c1\(0),
	datac => \timeCount|c1\(1),
	combout => \timeCount|Add2~0_combout\);

-- Location: LCCOMB_X27_Y27_N4
\timeCount|c1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c1~2_combout\ = (!\timeCount|c2[0]~1_combout\ & (!\timeCount|always0~0_combout\ & \timeCount|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2[0]~1_combout\,
	datac => \timeCount|always0~0_combout\,
	datad => \timeCount|Add2~0_combout\,
	combout => \timeCount|c1~2_combout\);

-- Location: FF_X27_Y27_N5
\timeCount|c1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	d => \timeCount|c1~2_combout\,
	ena => \timeCount|ALT_INV_c0[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|c1\(2));

-- Location: LCCOMB_X26_Y27_N24
\timeCount|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|Add2~1_combout\ = \timeCount|c1\(3) $ (((\timeCount|c1\(0) & (\timeCount|c1\(1) & \timeCount|c1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c1\(0),
	datab => \timeCount|c1\(3),
	datac => \timeCount|c1\(1),
	datad => \timeCount|c1\(2),
	combout => \timeCount|Add2~1_combout\);

-- Location: LCCOMB_X27_Y27_N26
\timeCount|c1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c1~3_combout\ = (!\timeCount|c2[0]~1_combout\ & (!\timeCount|always0~0_combout\ & \timeCount|Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2[0]~1_combout\,
	datac => \timeCount|always0~0_combout\,
	datad => \timeCount|Add2~1_combout\,
	combout => \timeCount|c1~3_combout\);

-- Location: FF_X27_Y27_N27
\timeCount|c1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	d => \timeCount|c1~3_combout\,
	ena => \timeCount|ALT_INV_c0[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|c1\(3));

-- Location: LCCOMB_X27_Y27_N20
\timeCount|c2[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c2[0]~1_combout\ = (!\timeCount|c1\(1) & (!\timeCount|c1\(2) & (\timeCount|c1\(3) & \timeCount|c1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c1\(1),
	datab => \timeCount|c1\(2),
	datac => \timeCount|c1\(3),
	datad => \timeCount|c1\(0),
	combout => \timeCount|c2[0]~1_combout\);

-- Location: LCCOMB_X27_Y27_N0
\timeCount|c1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c1~0_combout\ = (!\timeCount|c2[0]~1_combout\ & (!\timeCount|always0~0_combout\ & !\timeCount|c1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2[0]~1_combout\,
	datab => \timeCount|always0~0_combout\,
	datac => \timeCount|c1\(0),
	combout => \timeCount|c1~0_combout\);

-- Location: FF_X27_Y27_N1
\timeCount|c1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	d => \timeCount|c1~0_combout\,
	ena => \timeCount|ALT_INV_c0[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|c1\(0));

-- Location: LCCOMB_X27_Y27_N12
\dss1|out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss1|out~0_combout\ = (!\timeCount|c1\(1) & (!\timeCount|c1\(3) & (\timeCount|c1\(0) $ (\timeCount|c1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c1\(0),
	datab => \timeCount|c1\(2),
	datac => \timeCount|c1\(1),
	datad => \timeCount|c1\(3),
	combout => \dss1|out~0_combout\);

-- Location: LCCOMB_X27_Y27_N6
\dss1|out[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss1|out\(0) = (\button2~input_o\ & ((\dss1|out~0_combout\))) # (!\button2~input_o\ & (\dss1|out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button2~input_o\,
	datac => \dss1|out\(0),
	datad => \dss1|out~0_combout\,
	combout => \dss1|out\(0));

-- Location: LCCOMB_X27_Y27_N30
\dss1|out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss1|out~1_combout\ = (!\timeCount|c1\(3) & (\timeCount|c1\(2) & (\timeCount|c1\(1) $ (\timeCount|c1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c1\(3),
	datab => \timeCount|c1\(2),
	datac => \timeCount|c1\(1),
	datad => \timeCount|c1\(0),
	combout => \dss1|out~1_combout\);

-- Location: LCCOMB_X27_Y27_N28
\dss1|out[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss1|out\(1) = (\button2~input_o\ & (\dss1|out~1_combout\)) # (!\button2~input_o\ & ((\dss1|out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button2~input_o\,
	datac => \dss1|out~1_combout\,
	datad => \dss1|out\(1),
	combout => \dss1|out\(1));

-- Location: LCCOMB_X26_Y27_N28
\dss1|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss1|WideOr4~0_combout\ = (\timeCount|c1\(2) & (((\timeCount|c1\(3))))) # (!\timeCount|c1\(2) & (\timeCount|c1\(1) & ((\timeCount|c1\(3)) # (!\timeCount|c1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c1\(2),
	datab => \timeCount|c1\(1),
	datac => \timeCount|c1\(0),
	datad => \timeCount|c1\(3),
	combout => \dss1|WideOr4~0_combout\);

-- Location: LCCOMB_X26_Y27_N30
\dss1|out[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss1|out\(2) = (\button2~input_o\ & ((\dss1|WideOr4~0_combout\))) # (!\button2~input_o\ & (\dss1|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button2~input_o\,
	datac => \dss1|out\(2),
	datad => \dss1|WideOr4~0_combout\,
	combout => \dss1|out\(2));

-- Location: LCCOMB_X27_Y27_N16
\dss1|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss1|WideOr3~0_combout\ = (!\timeCount|c1\(3) & ((\timeCount|c1\(2) & (\timeCount|c1\(1) $ (!\timeCount|c1\(0)))) # (!\timeCount|c1\(2) & (!\timeCount|c1\(1) & \timeCount|c1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c1\(3),
	datab => \timeCount|c1\(2),
	datac => \timeCount|c1\(1),
	datad => \timeCount|c1\(0),
	combout => \dss1|WideOr3~0_combout\);

-- Location: LCCOMB_X26_Y27_N8
\dss1|out[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss1|out\(3) = (\button2~input_o\ & ((\dss1|WideOr3~0_combout\))) # (!\button2~input_o\ & (\dss1|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button2~input_o\,
	datac => \dss1|out\(3),
	datad => \dss1|WideOr3~0_combout\,
	combout => \dss1|out\(3));

-- Location: LCCOMB_X27_Y27_N10
\dss1|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss1|WideOr2~0_combout\ = (\timeCount|c1\(1) & (\timeCount|c1\(0) & ((!\timeCount|c1\(3))))) # (!\timeCount|c1\(1) & ((\timeCount|c1\(2) & ((!\timeCount|c1\(3)))) # (!\timeCount|c1\(2) & (\timeCount|c1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c1\(0),
	datab => \timeCount|c1\(2),
	datac => \timeCount|c1\(1),
	datad => \timeCount|c1\(3),
	combout => \dss1|WideOr2~0_combout\);

-- Location: LCCOMB_X27_Y27_N2
\dss1|out[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss1|out\(4) = (\button2~input_o\ & ((\dss1|WideOr2~0_combout\))) # (!\button2~input_o\ & (\dss1|out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button2~input_o\,
	datac => \dss1|out\(4),
	datad => \dss1|WideOr2~0_combout\,
	combout => \dss1|out\(4));

-- Location: LCCOMB_X27_Y27_N8
\dss1|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss1|WideOr1~0_combout\ = (!\timeCount|c1\(3) & ((\timeCount|c1\(2) & (\timeCount|c1\(1) & \timeCount|c1\(0))) # (!\timeCount|c1\(2) & ((\timeCount|c1\(1)) # (\timeCount|c1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c1\(3),
	datab => \timeCount|c1\(2),
	datac => \timeCount|c1\(1),
	datad => \timeCount|c1\(0),
	combout => \dss1|WideOr1~0_combout\);

-- Location: LCCOMB_X27_Y27_N24
\dss1|out[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss1|out\(5) = (\button2~input_o\ & (\dss1|WideOr1~0_combout\)) # (!\button2~input_o\ & ((\dss1|out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button2~input_o\,
	datac => \dss1|WideOr1~0_combout\,
	datad => \dss1|out\(5),
	combout => \dss1|out\(5));

-- Location: LCCOMB_X27_Y27_N14
\dss1|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss1|WideOr0~0_combout\ = (\timeCount|c1\(3)) # ((\timeCount|c1\(2) & ((!\timeCount|c1\(0)) # (!\timeCount|c1\(1)))) # (!\timeCount|c1\(2) & (\timeCount|c1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c1\(3),
	datab => \timeCount|c1\(2),
	datac => \timeCount|c1\(1),
	datad => \timeCount|c1\(0),
	combout => \dss1|WideOr0~0_combout\);

-- Location: LCCOMB_X27_Y27_N18
\dss1|out[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss1|out\(6) = (\button2~input_o\ & (!\dss1|WideOr0~0_combout\)) # (!\button2~input_o\ & ((\dss1|out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button2~input_o\,
	datac => \dss1|WideOr0~0_combout\,
	datad => \dss1|out\(6),
	combout => \dss1|out\(6));

-- Location: LCCOMB_X28_Y27_N16
\timeCount|c2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c2~3_combout\ = (!\timeCount|c2[0]~2_combout\ & (!\timeCount|c2\(0) & !\timeCount|always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2[0]~2_combout\,
	datac => \timeCount|c2\(0),
	datad => \timeCount|always0~0_combout\,
	combout => \timeCount|c2~3_combout\);

-- Location: LCCOMB_X28_Y27_N18
\timeCount|c2[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c2[0]~4_combout\ = (\timeCount|always0~0_combout\) # ((\timeCount|c2[0]~1_combout\ & \timeCount|c2[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeCount|c2[0]~1_combout\,
	datac => \timeCount|always0~0_combout\,
	datad => \timeCount|c2[0]~0_combout\,
	combout => \timeCount|c2[0]~4_combout\);

-- Location: FF_X28_Y27_N17
\timeCount|c2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	d => \timeCount|c2~3_combout\,
	ena => \timeCount|c2[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|c2\(0));

-- Location: LCCOMB_X28_Y27_N6
\timeCount|c2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c2~5_combout\ = (!\timeCount|c2[0]~2_combout\ & (!\timeCount|always0~0_combout\ & (\timeCount|c2\(0) $ (\timeCount|c2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2[0]~2_combout\,
	datab => \timeCount|c2\(0),
	datac => \timeCount|c2\(1),
	datad => \timeCount|always0~0_combout\,
	combout => \timeCount|c2~5_combout\);

-- Location: FF_X28_Y27_N7
\timeCount|c2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	d => \timeCount|c2~5_combout\,
	ena => \timeCount|c2[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|c2\(1));

-- Location: LCCOMB_X28_Y27_N26
\timeCount|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|Add1~0_combout\ = \timeCount|c2\(2) $ (((\timeCount|c2\(1) & \timeCount|c2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2\(1),
	datab => \timeCount|c2\(0),
	datad => \timeCount|c2\(2),
	combout => \timeCount|Add1~0_combout\);

-- Location: LCCOMB_X28_Y27_N28
\timeCount|c2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c2~6_combout\ = (!\timeCount|c2[0]~2_combout\ & (\timeCount|Add1~0_combout\ & !\timeCount|always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2[0]~2_combout\,
	datac => \timeCount|Add1~0_combout\,
	datad => \timeCount|always0~0_combout\,
	combout => \timeCount|c2~6_combout\);

-- Location: FF_X28_Y27_N29
\timeCount|c2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	d => \timeCount|c2~6_combout\,
	ena => \timeCount|c2[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|c2\(2));

-- Location: LCCOMB_X28_Y27_N12
\timeCount|c2[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c2[0]~2_combout\ = (!\timeCount|c2\(1) & (\timeCount|c2\(0) & (\timeCount|c2\(3) & !\timeCount|c2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2\(1),
	datab => \timeCount|c2\(0),
	datac => \timeCount|c2\(3),
	datad => \timeCount|c2\(2),
	combout => \timeCount|c2[0]~2_combout\);

-- Location: LCCOMB_X28_Y27_N20
\timeCount|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|Add1~1_combout\ = \timeCount|c2\(3) $ (((\timeCount|c2\(1) & (\timeCount|c2\(0) & \timeCount|c2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2\(1),
	datab => \timeCount|c2\(0),
	datac => \timeCount|c2\(3),
	datad => \timeCount|c2\(2),
	combout => \timeCount|Add1~1_combout\);

-- Location: LCCOMB_X28_Y27_N14
\timeCount|c2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c2~7_combout\ = (!\timeCount|c2[0]~2_combout\ & (!\timeCount|always0~0_combout\ & \timeCount|Add1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2[0]~2_combout\,
	datab => \timeCount|always0~0_combout\,
	datac => \timeCount|Add1~1_combout\,
	combout => \timeCount|c2~7_combout\);

-- Location: FF_X28_Y27_N15
\timeCount|c2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	d => \timeCount|c2~7_combout\,
	ena => \timeCount|c2[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|c2\(3));

-- Location: LCCOMB_X29_Y27_N24
\dss2|out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss2|out~0_combout\ = (!\timeCount|c2\(3) & (!\timeCount|c2\(1) & (\timeCount|c2\(0) $ (\timeCount|c2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2\(3),
	datab => \timeCount|c2\(1),
	datac => \timeCount|c2\(0),
	datad => \timeCount|c2\(2),
	combout => \dss2|out~0_combout\);

-- Location: LCCOMB_X29_Y27_N8
\dss2|out[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss2|out\(0) = (\button2~input_o\ & ((\dss2|out~0_combout\))) # (!\button2~input_o\ & (\dss2|out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button2~input_o\,
	datac => \dss2|out\(0),
	datad => \dss2|out~0_combout\,
	combout => \dss2|out\(0));

-- Location: LCCOMB_X29_Y27_N18
\dss2|out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss2|out~1_combout\ = (!\timeCount|c2\(3) & (\timeCount|c2\(2) & (\timeCount|c2\(1) $ (\timeCount|c2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2\(3),
	datab => \timeCount|c2\(1),
	datac => \timeCount|c2\(0),
	datad => \timeCount|c2\(2),
	combout => \dss2|out~1_combout\);

-- Location: LCCOMB_X29_Y27_N30
\dss2|out[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss2|out\(1) = (\button2~input_o\ & ((\dss2|out~1_combout\))) # (!\button2~input_o\ & (\dss2|out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button2~input_o\,
	datac => \dss2|out\(1),
	datad => \dss2|out~1_combout\,
	combout => \dss2|out\(1));

-- Location: LCCOMB_X29_Y27_N28
\dss2|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss2|WideOr4~0_combout\ = (\timeCount|c2\(2) & (\timeCount|c2\(3))) # (!\timeCount|c2\(2) & (\timeCount|c2\(1) & ((\timeCount|c2\(3)) # (!\timeCount|c2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2\(3),
	datab => \timeCount|c2\(1),
	datac => \timeCount|c2\(0),
	datad => \timeCount|c2\(2),
	combout => \dss2|WideOr4~0_combout\);

-- Location: LCCOMB_X29_Y27_N4
\dss2|out[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss2|out\(2) = (\button2~input_o\ & ((\dss2|WideOr4~0_combout\))) # (!\button2~input_o\ & (\dss2|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button2~input_o\,
	datac => \dss2|out\(2),
	datad => \dss2|WideOr4~0_combout\,
	combout => \dss2|out\(2));

-- Location: LCCOMB_X29_Y27_N6
\dss2|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss2|WideOr3~0_combout\ = (!\timeCount|c2\(3) & ((\timeCount|c2\(1) & (\timeCount|c2\(0) & \timeCount|c2\(2))) # (!\timeCount|c2\(1) & (\timeCount|c2\(0) $ (\timeCount|c2\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2\(3),
	datab => \timeCount|c2\(1),
	datac => \timeCount|c2\(0),
	datad => \timeCount|c2\(2),
	combout => \dss2|WideOr3~0_combout\);

-- Location: LCCOMB_X29_Y27_N26
\dss2|out[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss2|out\(3) = (\button2~input_o\ & ((\dss2|WideOr3~0_combout\))) # (!\button2~input_o\ & (\dss2|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button2~input_o\,
	datac => \dss2|out\(3),
	datad => \dss2|WideOr3~0_combout\,
	combout => \dss2|out\(3));

-- Location: LCCOMB_X28_Y27_N4
\dss2|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss2|WideOr2~0_combout\ = (\timeCount|c2\(1) & (\timeCount|c2\(0) & (!\timeCount|c2\(3)))) # (!\timeCount|c2\(1) & ((\timeCount|c2\(2) & ((!\timeCount|c2\(3)))) # (!\timeCount|c2\(2) & (\timeCount|c2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2\(1),
	datab => \timeCount|c2\(0),
	datac => \timeCount|c2\(3),
	datad => \timeCount|c2\(2),
	combout => \dss2|WideOr2~0_combout\);

-- Location: LCCOMB_X28_Y27_N2
\dss2|out[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss2|out\(4) = (\button2~input_o\ & (\dss2|WideOr2~0_combout\)) # (!\button2~input_o\ & ((\dss2|out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button2~input_o\,
	datac => \dss2|WideOr2~0_combout\,
	datad => \dss2|out\(4),
	combout => \dss2|out\(4));

-- Location: LCCOMB_X28_Y27_N30
\dss2|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss2|WideOr1~0_combout\ = (!\timeCount|c2\(3) & ((\timeCount|c2\(1) & ((\timeCount|c2\(0)) # (!\timeCount|c2\(2)))) # (!\timeCount|c2\(1) & (\timeCount|c2\(0) & !\timeCount|c2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2\(1),
	datab => \timeCount|c2\(0),
	datac => \timeCount|c2\(3),
	datad => \timeCount|c2\(2),
	combout => \dss2|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y27_N24
\dss2|out[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss2|out\(5) = (\button2~input_o\ & (\dss2|WideOr1~0_combout\)) # (!\button2~input_o\ & ((\dss2|out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button2~input_o\,
	datac => \dss2|WideOr1~0_combout\,
	datad => \dss2|out\(5),
	combout => \dss2|out\(5));

-- Location: LCCOMB_X28_Y27_N8
\dss2|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss2|WideOr0~0_combout\ = (\timeCount|c2\(3)) # ((\timeCount|c2\(1) & ((!\timeCount|c2\(2)) # (!\timeCount|c2\(0)))) # (!\timeCount|c2\(1) & ((\timeCount|c2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c2\(1),
	datab => \timeCount|c2\(0),
	datac => \timeCount|c2\(3),
	datad => \timeCount|c2\(2),
	combout => \dss2|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y27_N10
\dss2|out[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss2|out\(6) = (\button2~input_o\ & (!\dss2|WideOr0~0_combout\)) # (!\button2~input_o\ & ((\dss2|out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button2~input_o\,
	datac => \dss2|WideOr0~0_combout\,
	datad => \dss2|out\(6),
	combout => \dss2|out\(6));

-- Location: LCCOMB_X26_Y28_N8
\timeCount|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|Add0~0_combout\ = \timeCount|c3\(2) $ (((\timeCount|c3\(1) & \timeCount|c3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c3\(1),
	datac => \timeCount|c3\(0),
	datad => \timeCount|c3\(2),
	combout => \timeCount|Add0~0_combout\);

-- Location: LCCOMB_X26_Y28_N6
\timeCount|c3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c3~4_combout\ = (!\timeCount|always0~0_combout\ & (\timeCount|Add0~0_combout\ & \timeCount|c3[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|always0~0_combout\,
	datac => \timeCount|Add0~0_combout\,
	datad => \timeCount|c3[1]~0_combout\,
	combout => \timeCount|c3~4_combout\);

-- Location: LCCOMB_X27_Y28_N28
\timeCount|c3[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c3[1]~2_combout\ = (\timeCount|always0~0_combout\) # ((\timeCount|c2[0]~1_combout\ & (\timeCount|c2[0]~0_combout\ & \timeCount|c2[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|always0~0_combout\,
	datab => \timeCount|c2[0]~1_combout\,
	datac => \timeCount|c2[0]~0_combout\,
	datad => \timeCount|c2[0]~2_combout\,
	combout => \timeCount|c3[1]~2_combout\);

-- Location: FF_X27_Y28_N17
\timeCount|c3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	asdata => \timeCount|c3~4_combout\,
	sload => VCC,
	ena => \timeCount|c3[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|c3\(2));

-- Location: LCCOMB_X26_Y28_N10
\timeCount|c3[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c3[1]~0_combout\ = (\timeCount|c3\(1)) # ((\timeCount|c3\(2)) # ((!\timeCount|c3\(3)) # (!\timeCount|c3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c3\(1),
	datab => \timeCount|c3\(2),
	datac => \timeCount|c3\(0),
	datad => \timeCount|c3\(3),
	combout => \timeCount|c3[1]~0_combout\);

-- Location: LCCOMB_X27_Y28_N0
\timeCount|c3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c3~1_combout\ = (!\timeCount|always0~0_combout\ & (!\timeCount|c3\(0) & \timeCount|c3[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|always0~0_combout\,
	datac => \timeCount|c3\(0),
	datad => \timeCount|c3[1]~0_combout\,
	combout => \timeCount|c3~1_combout\);

-- Location: FF_X27_Y28_N1
\timeCount|c3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	d => \timeCount|c3~1_combout\,
	ena => \timeCount|c3[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|c3\(0));

-- Location: LCCOMB_X27_Y28_N30
\timeCount|c3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c3~3_combout\ = (!\timeCount|always0~0_combout\ & (\timeCount|c3[1]~0_combout\ & (\timeCount|c3\(0) $ (\timeCount|c3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|always0~0_combout\,
	datab => \timeCount|c3\(0),
	datac => \timeCount|c3\(1),
	datad => \timeCount|c3[1]~0_combout\,
	combout => \timeCount|c3~3_combout\);

-- Location: FF_X27_Y28_N31
\timeCount|c3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	d => \timeCount|c3~3_combout\,
	ena => \timeCount|c3[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|c3\(1));

-- Location: LCCOMB_X26_Y28_N24
\timeCount|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|Add0~1_combout\ = \timeCount|c3\(3) $ (((\timeCount|c3\(1) & (\timeCount|c3\(2) & \timeCount|c3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c3\(1),
	datab => \timeCount|c3\(2),
	datac => \timeCount|c3\(0),
	datad => \timeCount|c3\(3),
	combout => \timeCount|Add0~1_combout\);

-- Location: LCCOMB_X27_Y28_N26
\timeCount|c3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \timeCount|c3~5_combout\ = (\timeCount|Add0~1_combout\ & (!\timeCount|always0~0_combout\ & \timeCount|c3[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeCount|Add0~1_combout\,
	datac => \timeCount|always0~0_combout\,
	datad => \timeCount|c3[1]~0_combout\,
	combout => \timeCount|c3~5_combout\);

-- Location: FF_X27_Y28_N27
\timeCount|c3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clockConv|clock_out~clkctrl_outclk\,
	d => \timeCount|c3~5_combout\,
	ena => \timeCount|c3[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timeCount|c3\(3));

-- Location: LCCOMB_X27_Y28_N24
\dss3|out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss3|out~0_combout\ = (!\timeCount|c3\(3) & (!\timeCount|c3\(1) & (\timeCount|c3\(2) $ (\timeCount|c3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c3\(3),
	datab => \timeCount|c3\(2),
	datac => \timeCount|c3\(1),
	datad => \timeCount|c3\(0),
	combout => \dss3|out~0_combout\);

-- Location: LCCOMB_X27_Y28_N10
\dss3|out[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss3|out\(0) = (\button2~input_o\ & (\dss3|out~0_combout\)) # (!\button2~input_o\ & ((\dss3|out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dss3|out~0_combout\,
	datac => \button2~input_o\,
	datad => \dss3|out\(0),
	combout => \dss3|out\(0));

-- Location: LCCOMB_X27_Y28_N2
\dss3|out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss3|out~1_combout\ = (\timeCount|c3\(2) & (!\timeCount|c3\(3) & (\timeCount|c3\(1) $ (\timeCount|c3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c3\(1),
	datab => \timeCount|c3\(2),
	datac => \timeCount|c3\(3),
	datad => \timeCount|c3\(0),
	combout => \dss3|out~1_combout\);

-- Location: LCCOMB_X27_Y28_N16
\dss3|out[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss3|out\(1) = (\button2~input_o\ & ((\dss3|out~1_combout\))) # (!\button2~input_o\ & (\dss3|out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dss3|out\(1),
	datab => \dss3|out~1_combout\,
	datad => \button2~input_o\,
	combout => \dss3|out\(1));

-- Location: LCCOMB_X26_Y28_N12
\dss3|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss3|WideOr4~0_combout\ = (\timeCount|c3\(2) & (((\timeCount|c3\(3))))) # (!\timeCount|c3\(2) & (\timeCount|c3\(1) & ((\timeCount|c3\(3)) # (!\timeCount|c3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c3\(1),
	datab => \timeCount|c3\(3),
	datac => \timeCount|c3\(0),
	datad => \timeCount|c3\(2),
	combout => \dss3|WideOr4~0_combout\);

-- Location: LCCOMB_X26_Y28_N18
\dss3|out[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss3|out\(2) = (\button2~input_o\ & ((\dss3|WideOr4~0_combout\))) # (!\button2~input_o\ & (\dss3|out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dss3|out\(2),
	datac => \button2~input_o\,
	datad => \dss3|WideOr4~0_combout\,
	combout => \dss3|out\(2));

-- Location: LCCOMB_X27_Y28_N8
\dss3|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss3|WideOr3~0_combout\ = (!\timeCount|c3\(3) & ((\timeCount|c3\(1) & (\timeCount|c3\(0) & \timeCount|c3\(2))) # (!\timeCount|c3\(1) & (\timeCount|c3\(0) $ (\timeCount|c3\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c3\(1),
	datab => \timeCount|c3\(0),
	datac => \timeCount|c3\(3),
	datad => \timeCount|c3\(2),
	combout => \dss3|WideOr3~0_combout\);

-- Location: LCCOMB_X27_Y28_N20
\dss3|out[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss3|out\(3) = (\button2~input_o\ & ((\dss3|WideOr3~0_combout\))) # (!\button2~input_o\ & (\dss3|out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dss3|out\(3),
	datac => \dss3|WideOr3~0_combout\,
	datad => \button2~input_o\,
	combout => \dss3|out\(3));

-- Location: LCCOMB_X27_Y28_N22
\dss3|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss3|WideOr2~0_combout\ = (\timeCount|c3\(1) & (\timeCount|c3\(0) & (!\timeCount|c3\(3)))) # (!\timeCount|c3\(1) & ((\timeCount|c3\(2) & ((!\timeCount|c3\(3)))) # (!\timeCount|c3\(2) & (\timeCount|c3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c3\(1),
	datab => \timeCount|c3\(0),
	datac => \timeCount|c3\(3),
	datad => \timeCount|c3\(2),
	combout => \dss3|WideOr2~0_combout\);

-- Location: LCCOMB_X27_Y28_N18
\dss3|out[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss3|out\(4) = (\button2~input_o\ & ((\dss3|WideOr2~0_combout\))) # (!\button2~input_o\ & (\dss3|out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dss3|out\(4),
	datac => \dss3|WideOr2~0_combout\,
	datad => \button2~input_o\,
	combout => \dss3|out\(4));

-- Location: LCCOMB_X27_Y28_N4
\dss3|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss3|WideOr1~0_combout\ = (!\timeCount|c3\(3) & ((\timeCount|c3\(1) & ((\timeCount|c3\(0)) # (!\timeCount|c3\(2)))) # (!\timeCount|c3\(1) & (\timeCount|c3\(0) & !\timeCount|c3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c3\(1),
	datab => \timeCount|c3\(0),
	datac => \timeCount|c3\(3),
	datad => \timeCount|c3\(2),
	combout => \dss3|WideOr1~0_combout\);

-- Location: LCCOMB_X27_Y28_N12
\dss3|out[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss3|out\(5) = (\button2~input_o\ & ((\dss3|WideOr1~0_combout\))) # (!\button2~input_o\ & (\dss3|out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dss3|out\(5),
	datac => \dss3|WideOr1~0_combout\,
	datad => \button2~input_o\,
	combout => \dss3|out\(5));

-- Location: LCCOMB_X27_Y28_N14
\dss3|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss3|WideOr0~0_combout\ = (\timeCount|c3\(3)) # ((\timeCount|c3\(1) & ((!\timeCount|c3\(0)) # (!\timeCount|c3\(2)))) # (!\timeCount|c3\(1) & (\timeCount|c3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeCount|c3\(1),
	datab => \timeCount|c3\(2),
	datac => \timeCount|c3\(3),
	datad => \timeCount|c3\(0),
	combout => \dss3|WideOr0~0_combout\);

-- Location: LCCOMB_X27_Y28_N6
\dss3|out[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dss3|out\(6) = (\button2~input_o\ & ((!\dss3|WideOr0~0_combout\))) # (!\button2~input_o\ & (\dss3|out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dss3|out\(6),
	datac => \dss3|WideOr0~0_combout\,
	datad => \button2~input_o\,
	combout => \dss3|out\(6));

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex2(0) <= \hex2[0]~output_o\;

ww_hex2(1) <= \hex2[1]~output_o\;

ww_hex2(2) <= \hex2[2]~output_o\;

ww_hex2(3) <= \hex2[3]~output_o\;

ww_hex2(4) <= \hex2[4]~output_o\;

ww_hex2(5) <= \hex2[5]~output_o\;

ww_hex2(6) <= \hex2[6]~output_o\;

ww_hex3(0) <= \hex3[0]~output_o\;

ww_hex3(1) <= \hex3[1]~output_o\;

ww_hex3(2) <= \hex3[2]~output_o\;

ww_hex3(3) <= \hex3[3]~output_o\;

ww_hex3(4) <= \hex3[4]~output_o\;

ww_hex3(5) <= \hex3[5]~output_o\;

ww_hex3(6) <= \hex3[6]~output_o\;

ww_decimal_point <= \decimal_point~output_o\;
END structure;


