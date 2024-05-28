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

-- DATE "05/23/2024 19:12:43"

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

ENTITY 	BCD7Seg IS
    PORT (
	IA : IN std_logic;
	IB : IN std_logic;
	IC : IN std_logic;
	ID : IN std_logic;
	F : OUT std_logic_vector(6 DOWNTO 0)
	);
END BCD7Seg;

-- Design Ports Information
-- F[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ID	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IC	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IB	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IA	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCD7Seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IA : std_logic;
SIGNAL ww_IB : std_logic;
SIGNAL ww_IC : std_logic;
SIGNAL ww_ID : std_logic;
SIGNAL ww_F : std_logic_vector(6 DOWNTO 0);
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[4]~output_o\ : std_logic;
SIGNAL \F[5]~output_o\ : std_logic;
SIGNAL \F[6]~output_o\ : std_logic;
SIGNAL \IA~input_o\ : std_logic;
SIGNAL \IB~input_o\ : std_logic;
SIGNAL \IC~input_o\ : std_logic;
SIGNAL \ID~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_IA <= IA;
ww_IB <= IB;
ww_IC <= IC;
ww_ID <= ID;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X26_Y29_N16
\F[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\F[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\F[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\F[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\F[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\F[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\F[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOIBUF_X0_Y23_N8
\IA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IA,
	o => \IA~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\IB~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IB,
	o => \IB~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\IC~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IC,
	o => \IC~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\ID~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ID,
	o => \ID~input_o\);

-- Location: LCCOMB_X20_Y25_N0
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\IA~input_o\ & (!\IB~input_o\ & ((!\ID~input_o\) # (!\IC~input_o\)))) # (!\IA~input_o\ & ((\IB~input_o\ & ((!\ID~input_o\) # (!\IC~input_o\))) # (!\IB~input_o\ & (\IC~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA~input_o\,
	datab => \IB~input_o\,
	datac => \IC~input_o\,
	datad => \ID~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X20_Y25_N18
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\IB~input_o\ & ((\IA~input_o\) # ((\IC~input_o\ & \ID~input_o\)))) # (!\IB~input_o\ & ((\IC~input_o\) # ((!\IA~input_o\ & \ID~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA~input_o\,
	datab => \IB~input_o\,
	datac => \IC~input_o\,
	datad => \ID~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X20_Y25_N28
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\ID~input_o\) # ((\IC~input_o\ & (\IA~input_o\)) # (!\IC~input_o\ & ((\IB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA~input_o\,
	datab => \IB~input_o\,
	datac => \IC~input_o\,
	datad => \ID~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X20_Y25_N14
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\IB~input_o\ & ((\IA~input_o\) # (\IC~input_o\ $ (!\ID~input_o\)))) # (!\IB~input_o\ & ((\IC~input_o\ & (\IA~input_o\)) # (!\IC~input_o\ & ((\ID~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA~input_o\,
	datab => \IB~input_o\,
	datac => \IC~input_o\,
	datad => \ID~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X20_Y25_N8
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\IB~input_o\ & (\IA~input_o\)) # (!\IB~input_o\ & (\IC~input_o\ & ((\IA~input_o\) # (!\ID~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA~input_o\,
	datab => \IB~input_o\,
	datac => \IC~input_o\,
	datad => \ID~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X20_Y25_N2
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\IA~input_o\ & ((\IB~input_o\) # ((\IC~input_o\)))) # (!\IA~input_o\ & (\IB~input_o\ & (\IC~input_o\ $ (\ID~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA~input_o\,
	datab => \IB~input_o\,
	datac => \IC~input_o\,
	datad => \ID~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X20_Y25_N4
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\IA~input_o\ & ((\IB~input_o\) # ((\IC~input_o\)))) # (!\IA~input_o\ & ((\IB~input_o\ & ((!\ID~input_o\))) # (!\IB~input_o\ & (!\IC~input_o\ & \ID~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IA~input_o\,
	datab => \IB~input_o\,
	datac => \IC~input_o\,
	datad => \ID~input_o\,
	combout => \Mux0~0_combout\);

ww_F(0) <= \F[0]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(4) <= \F[4]~output_o\;

ww_F(5) <= \F[5]~output_o\;

ww_F(6) <= \F[6]~output_o\;
END structure;


