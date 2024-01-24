-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/23/2024 14:51:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CONTROL_PRODUCCION_SIMULAR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CONTROL_PRODUCCION_SIMULAR_vhd_vec_tst IS
END CONTROL_PRODUCCION_SIMULAR_vhd_vec_tst;
ARCHITECTURE CONTROL_PRODUCCION_SIMULAR_arch OF CONTROL_PRODUCCION_SIMULAR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bcd : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CLK_1MHZ : STD_LOGIC;
SIGNAL clk_100hz : STD_LOGIC;
SIGNAL dia_rep : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL enter : STD_LOGIC;
SIGNAL mostrar : STD_LOGIC;
SIGNAL num : STD_LOGIC;
SIGNAL ok : STD_LOGIC;
SIGNAL pro_real : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL pro_rep : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL tasa_prod : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT CONTROL_PRODUCCION_SIMULAR
	PORT (
	bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	CLK_1MHZ : IN STD_LOGIC;
	clk_100hz : IN STD_LOGIC;
	dia_rep : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	enter : IN STD_LOGIC;
	mostrar : IN STD_LOGIC;
	num : IN STD_LOGIC;
	ok : IN STD_LOGIC;
	pro_real : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	pro_rep : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	reset : IN STD_LOGIC;
	start : IN STD_LOGIC;
	tasa_prod : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CONTROL_PRODUCCION_SIMULAR
	PORT MAP (
-- list connections between master ports and signals
	bcd => bcd,
	CLK_1MHZ => CLK_1MHZ,
	clk_100hz => clk_100hz,
	dia_rep => dia_rep,
	enter => enter,
	mostrar => mostrar,
	num => num,
	ok => ok,
	pro_real => pro_real,
	pro_rep => pro_rep,
	reset => reset,
	start => start,
	tasa_prod => tasa_prod
	);

-- CLK_1MHZ
t_prcs_CLK_1MHZ: PROCESS
BEGIN
LOOP
	CLK_1MHZ <= '0';
	WAIT FOR 5000 ps;
	CLK_1MHZ <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 50000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_1MHZ;

-- clk_100hz
t_prcs_clk_100hz: PROCESS
BEGIN
	FOR i IN 1 TO 1666
	LOOP
		clk_100hz <= '0';
		WAIT FOR 15000 ps;
		clk_100hz <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	clk_100hz <= '0';
	WAIT FOR 15000 ps;
	clk_100hz <= '1';
WAIT;
END PROCESS t_prcs_clk_100hz;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 10596 ps;
	reset <= '1';
	WAIT FOR 9713 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 37969 ps;
	start <= '1';
	WAIT FOR 16777 ps;
	start <= '0';
	WAIT FOR 1268913 ps;
	start <= '1';
	WAIT FOR 80055 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;
-- bcd[3]
t_prcs_bcd_3: PROCESS
BEGIN
	bcd(3) <= '0';
WAIT;
END PROCESS t_prcs_bcd_3;
-- bcd[2]
t_prcs_bcd_2: PROCESS
BEGIN
	bcd(2) <= '0';
	WAIT FOR 52980 ps;
	bcd(2) <= '1';
	WAIT FOR 67991 ps;
	bcd(2) <= '0';
	WAIT FOR 1244096 ps;
	bcd(2) <= '1';
	WAIT FOR 245684 ps;
	bcd(2) <= '0';
WAIT;
END PROCESS t_prcs_bcd_2;
-- bcd[1]
t_prcs_bcd_1: PROCESS
BEGIN
	bcd(1) <= '0';
	WAIT FOR 1365067 ps;
	bcd(1) <= '1';
	WAIT FOR 416835 ps;
	bcd(1) <= '0';
WAIT;
END PROCESS t_prcs_bcd_1;
-- bcd[0]
t_prcs_bcd_0: PROCESS
BEGIN
	bcd(0) <= '0';
	WAIT FOR 52980 ps;
	bcd(0) <= '1';
	WAIT FOR 67991 ps;
	bcd(0) <= '0';
WAIT;
END PROCESS t_prcs_bcd_0;

-- num
t_prcs_num: PROCESS
BEGIN
	num <= '1';
	WAIT FOR 66000 ps;
	num <= '0';
	WAIT FOR 44000 ps;
	num <= '1';
	WAIT FOR 46291 ps;
	num <= '0';
	WAIT FOR 55629 ps;
	num <= '1';
	WAIT FOR 1259426 ps;
	num <= '0';
	WAIT FOR 62111 ps;
	num <= '1';
	WAIT FOR 95238 ps;
	num <= '0';
	WAIT FOR 92476 ps;
	num <= '1';
	WAIT FOR 115941 ps;
	num <= '0';
WAIT;
END PROCESS t_prcs_num;

-- enter
t_prcs_enter: PROCESS
BEGIN
	enter <= '0';
	WAIT FOR 345253 ps;
	enter <= '1';
	WAIT FOR 58278 ps;
	enter <= '0';
	WAIT FOR 1664083 ps;
	enter <= '1';
	WAIT FOR 102139 ps;
	enter <= '0';
WAIT;
END PROCESS t_prcs_enter;

-- mostrar
t_prcs_mostrar: PROCESS
BEGIN
	mostrar <= '0';
WAIT;
END PROCESS t_prcs_mostrar;

-- ok
t_prcs_ok: PROCESS
BEGIN
	ok <= '0';
WAIT;
END PROCESS t_prcs_ok;
END CONTROL_PRODUCCION_SIMULAR_arch;
