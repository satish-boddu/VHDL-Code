-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "03/23/2018 10:02:52"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab4_top;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst_n	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MEALY0|current_stateY.ERRORY~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST5|Selector13~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bin_counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEALY0|current_stateX.ERRORX~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \bin_counter[0]~69_combout\ : std_logic;
SIGNAL \bin_counter[1]~23_combout\ : std_logic;
SIGNAL \bin_counter[1]~24\ : std_logic;
SIGNAL \bin_counter[2]~25_combout\ : std_logic;
SIGNAL \bin_counter[2]~26\ : std_logic;
SIGNAL \bin_counter[3]~27_combout\ : std_logic;
SIGNAL \bin_counter[3]~28\ : std_logic;
SIGNAL \bin_counter[4]~29_combout\ : std_logic;
SIGNAL \bin_counter[4]~30\ : std_logic;
SIGNAL \bin_counter[5]~31_combout\ : std_logic;
SIGNAL \bin_counter[5]~32\ : std_logic;
SIGNAL \bin_counter[6]~33_combout\ : std_logic;
SIGNAL \bin_counter[6]~34\ : std_logic;
SIGNAL \bin_counter[7]~35_combout\ : std_logic;
SIGNAL \bin_counter[7]~36\ : std_logic;
SIGNAL \bin_counter[8]~37_combout\ : std_logic;
SIGNAL \bin_counter[8]~38\ : std_logic;
SIGNAL \bin_counter[9]~39_combout\ : std_logic;
SIGNAL \bin_counter[9]~40\ : std_logic;
SIGNAL \bin_counter[10]~41_combout\ : std_logic;
SIGNAL \bin_counter[10]~42\ : std_logic;
SIGNAL \bin_counter[11]~43_combout\ : std_logic;
SIGNAL \bin_counter[11]~44\ : std_logic;
SIGNAL \bin_counter[12]~45_combout\ : std_logic;
SIGNAL \bin_counter[12]~46\ : std_logic;
SIGNAL \bin_counter[13]~47_combout\ : std_logic;
SIGNAL \bin_counter[13]~48\ : std_logic;
SIGNAL \bin_counter[14]~49_combout\ : std_logic;
SIGNAL \bin_counter[14]~50\ : std_logic;
SIGNAL \bin_counter[15]~51_combout\ : std_logic;
SIGNAL \bin_counter[15]~52\ : std_logic;
SIGNAL \bin_counter[16]~53_combout\ : std_logic;
SIGNAL \bin_counter[16]~54\ : std_logic;
SIGNAL \bin_counter[17]~55_combout\ : std_logic;
SIGNAL \bin_counter[17]~56\ : std_logic;
SIGNAL \bin_counter[18]~57_combout\ : std_logic;
SIGNAL \bin_counter[18]~58\ : std_logic;
SIGNAL \bin_counter[19]~59_combout\ : std_logic;
SIGNAL \bin_counter[19]~60\ : std_logic;
SIGNAL \bin_counter[20]~61_combout\ : std_logic;
SIGNAL \bin_counter[20]~62\ : std_logic;
SIGNAL \bin_counter[21]~63_combout\ : std_logic;
SIGNAL \bin_counter[21]~64\ : std_logic;
SIGNAL \bin_counter[22]~65_combout\ : std_logic;
SIGNAL \bin_counter[22]~66\ : std_logic;
SIGNAL \bin_counter[23]~67_combout\ : std_logic;
SIGNAL \bin_counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \INST1|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \INST1|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \INST1|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \INST2|eq~0_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \INST1|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \INST1|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \INST1|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \INST2|less~0_combout\ : std_logic;
SIGNAL \MEALY0|Selector8~0_combout\ : std_logic;
SIGNAL \INST2|eq~combout\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \MEALY0|Selector15~0_combout\ : std_logic;
SIGNAL \MEALY0|current_stateX.X0~q\ : std_logic;
SIGNAL \MEALY0|Selector10~0_combout\ : std_logic;
SIGNAL \MEALY0|current_stateX.ERRORX~q\ : std_logic;
SIGNAL \MEALY0|current_stateX.ERRORX~clkctrl_outclk\ : std_logic;
SIGNAL \MEALY0|EXTDX~combout\ : std_logic;
SIGNAL \INST5|Selector10~0_combout\ : std_logic;
SIGNAL \INST6|sreg~3_combout\ : std_logic;
SIGNAL \INST5|shift_en~combout\ : std_logic;
SIGNAL \INST5|Equal0~0_combout\ : std_logic;
SIGNAL \INST5|Selector8~0_combout\ : std_logic;
SIGNAL \INST5|next_state.extend_hold_189~combout\ : std_logic;
SIGNAL \INST5|current_state.extend_hold~feeder_combout\ : std_logic;
SIGNAL \INST5|current_state.extend_hold~q\ : std_logic;
SIGNAL \INST5|Selector10~1_combout\ : std_logic;
SIGNAL \INST5|next_state.extending_199~combout\ : std_logic;
SIGNAL \INST5|current_state.extending~feeder_combout\ : std_logic;
SIGNAL \INST5|current_state.extending~q\ : std_logic;
SIGNAL \INST6|sreg~0_combout\ : std_logic;
SIGNAL \INST6|sreg[0]~feeder_combout\ : std_logic;
SIGNAL \INST6|sreg~1_combout\ : std_logic;
SIGNAL \INST6|sreg~2_combout\ : std_logic;
SIGNAL \INST5|Equal1~0_combout\ : std_logic;
SIGNAL \INST5|Selector4~0_combout\ : std_logic;
SIGNAL \INST5|next_state.retracted_hold_159~combout\ : std_logic;
SIGNAL \INST5|current_state.retracted_hold~feeder_combout\ : std_logic;
SIGNAL \INST5|current_state.retracted_hold~q\ : std_logic;
SIGNAL \INST5|Selector0~0_combout\ : std_logic;
SIGNAL \INST5|next_state.extended_179~combout\ : std_logic;
SIGNAL \INST5|current_state.extended~q\ : std_logic;
SIGNAL \INST5|Selector2~0_combout\ : std_logic;
SIGNAL \INST5|next_state.retracting_169~combout\ : std_logic;
SIGNAL \INST5|current_state.retracting~feeder_combout\ : std_logic;
SIGNAL \INST5|current_state.retracting~q\ : std_logic;
SIGNAL \INST5|Selector13~0_combout\ : std_logic;
SIGNAL \INST5|Selector13~0clkctrl_outclk\ : std_logic;
SIGNAL \INST5|Selector12~0_combout\ : std_logic;
SIGNAL \INST5|next_state.start_209~combout\ : std_logic;
SIGNAL \INST5|current_state.start~0_combout\ : std_logic;
SIGNAL \INST5|current_state.start~q\ : std_logic;
SIGNAL \MEALY0|Selector5~2_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \INST3|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \INST3|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \INST4|less~2_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \INST3|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \INST3|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \INST3|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \INST4|less~1_combout\ : std_logic;
SIGNAL \INST4|grtr~0_combout\ : std_logic;
SIGNAL \MEALY0|Ycount~1_combout\ : std_logic;
SIGNAL \MEALY0|Ycount~combout\ : std_logic;
SIGNAL \INST3|process_0~0_combout\ : std_logic;
SIGNAL \INST3|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \INST4|less~0_combout\ : std_logic;
SIGNAL \MEALY0|Transition_Section2~0_combout\ : std_logic;
SIGNAL \MEALY0|Selector5~0_combout\ : std_logic;
SIGNAL \INST4|less~3_combout\ : std_logic;
SIGNAL \MEALY0|Selector4~0_combout\ : std_logic;
SIGNAL \INST4|eq~combout\ : std_logic;
SIGNAL \MEALY0|Selector4~1_combout\ : std_logic;
SIGNAL \MEALY0|Selector4~2_combout\ : std_logic;
SIGNAL \MEALY0|Selector4~3_combout\ : std_logic;
SIGNAL \MEALY0|current_stateY.YSTOP~q\ : std_logic;
SIGNAL \MEALY0|Selector5~1_combout\ : std_logic;
SIGNAL \MEALY0|Selector5~3_combout\ : std_logic;
SIGNAL \MEALY0|current_stateY.YMOVE~q\ : std_logic;
SIGNAL \MEALY0|clk_enY~combout\ : std_logic;
SIGNAL \INST3|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \INST4|eq~0_combout\ : std_logic;
SIGNAL \MEALY0|current_stateY.Y0~0_combout\ : std_logic;
SIGNAL \MEALY0|current_stateY.Y0~q\ : std_logic;
SIGNAL \MEALY0|Selector2~1_combout\ : std_logic;
SIGNAL \MEALY0|Selector2~2_combout\ : std_logic;
SIGNAL \MEALY0|current_stateY.ERRORY~q\ : std_logic;
SIGNAL \MEALY0|current_stateY.ERRORY~clkctrl_outclk\ : std_logic;
SIGNAL \MEALY0|Selector1~0_combout\ : std_logic;
SIGNAL \MEALY0|EXTDY~combout\ : std_logic;
SIGNAL \INST5|Selector6~0_combout\ : std_logic;
SIGNAL \INST5|Selector6~1_combout\ : std_logic;
SIGNAL \INST5|next_state.done_149~combout\ : std_logic;
SIGNAL \INST5|current_state.done~q\ : std_logic;
SIGNAL \MEALY0|Selector2~0_combout\ : std_logic;
SIGNAL \MEALY0|Selector12~3_combout\ : std_logic;
SIGNAL \INST2|less~2_combout\ : std_logic;
SIGNAL \INST2|less~1_combout\ : std_logic;
SIGNAL \MEALY0|Selector12~0_combout\ : std_logic;
SIGNAL \MEALY0|Selector12~1_combout\ : std_logic;
SIGNAL \MEALY0|Selector12~2_combout\ : std_logic;
SIGNAL \MEALY0|Selector12~4_combout\ : std_logic;
SIGNAL \MEALY0|current_stateX.XSTOP~q\ : std_logic;
SIGNAL \MEALY0|Selector14~0_combout\ : std_logic;
SIGNAL \MEALY0|Selector14~1_combout\ : std_logic;
SIGNAL \MEALY0|current_stateX.XMOVE~q\ : std_logic;
SIGNAL \MEALY0|Transition_Section~0_combout\ : std_logic;
SIGNAL \MEALY0|clk_enX~combout\ : std_logic;
SIGNAL \INST2|grtr~0_combout\ : std_logic;
SIGNAL \MEALY0|Xcount~1_combout\ : std_logic;
SIGNAL \MEALY0|Xcount~combout\ : std_logic;
SIGNAL \INST1|process_0~0_combout\ : std_logic;
SIGNAL \INST1|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \XOUT[2]~2_combout\ : std_logic;
SIGNAL \XOUT[1]~1_combout\ : std_logic;
SIGNAL \XOUT[0]~0_combout\ : std_logic;
SIGNAL \XOUT[3]~3_combout\ : std_logic;
SIGNAL \INST20|Mux5~0_combout\ : std_logic;
SIGNAL \MEALY0|ledY~combout\ : std_logic;
SIGNAL \MEALY0|ledX~combout\ : std_logic;
SIGNAL \INST35|next_state.error_off~0_combout\ : std_logic;
SIGNAL \INST35|current_state.error_off~q\ : std_logic;
SIGNAL \YOUT[0]~0_combout\ : std_logic;
SIGNAL \YOUT[1]~1_combout\ : std_logic;
SIGNAL \YOUT[2]~2_combout\ : std_logic;
SIGNAL \YOUT[3]~3_combout\ : std_logic;
SIGNAL \INST30|Mux5~0_combout\ : std_logic;
SIGNAL \INST40|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \INST30|Mux1~0_combout\ : std_logic;
SIGNAL \INST20|Mux1~0_combout\ : std_logic;
SIGNAL \INST40|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \INST20|Mux0~0_combout\ : std_logic;
SIGNAL \INST30|Mux0~0_combout\ : std_logic;
SIGNAL \INST40|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \MEALY0|ERRORled~combout\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \INST7|Decoder_Section~0_combout\ : std_logic;
SIGNAL \INST7|current_state.light_on~q\ : std_logic;
SIGNAL \INST7|led~combout\ : std_logic;
SIGNAL \INST20|Mux6~0_combout\ : std_logic;
SIGNAL \INST30|Mux6~0_combout\ : std_logic;
SIGNAL \INST40|DOUT[0]~0_combout\ : std_logic;
SIGNAL \INST20|Mux4~0_combout\ : std_logic;
SIGNAL \INST30|Mux4~0_combout\ : std_logic;
SIGNAL \INST40|DOUT[2]~2_combout\ : std_logic;
SIGNAL \INST20|Mux3~0_combout\ : std_logic;
SIGNAL \INST30|Mux3~0_combout\ : std_logic;
SIGNAL \INST40|DOUT[3]~3_combout\ : std_logic;
SIGNAL \INST20|Mux2~0_combout\ : std_logic;
SIGNAL \INST30|Mux2~0_combout\ : std_logic;
SIGNAL \INST40|DOUT[4]~4_combout\ : std_logic;
SIGNAL \INST1|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST3|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST6|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL bin_counter : std_logic_vector(25 DOWNTO 0);
SIGNAL ALT_INV_bin_counter : std_logic_vector(10 DOWNTO 10);
SIGNAL \INST40|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \INST40|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \INST40|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \INST40|ALT_INV_DOUT[0]~0_combout\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\MEALY0|current_stateY.ERRORY~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MEALY0|current_stateY.ERRORY~q\);

\INST5|Selector13~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INST5|Selector13~0_combout\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\bin_counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & bin_counter(23));

\MEALY0|current_stateX.ERRORX~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MEALY0|current_stateX.ERRORX~q\);
ALT_INV_bin_counter(10) <= NOT bin_counter(10);
\INST40|ALT_INV_DOUT[4]~4_combout\ <= NOT \INST40|DOUT[4]~4_combout\;
\INST40|ALT_INV_DOUT[3]~3_combout\ <= NOT \INST40|DOUT[3]~3_combout\;
\INST40|ALT_INV_DOUT[2]~2_combout\ <= NOT \INST40|DOUT[2]~2_combout\;
\INST40|ALT_INV_DOUT[0]~0_combout\ <= NOT \INST40|DOUT[0]~0_combout\;

-- Location: LCCOMB_X11_Y24_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST40|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST40|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST40|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEALY0|ERRORled~combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST7|led~combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST6|sreg\(0),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST6|sreg\(1),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST6|sreg\(2),
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST6|sreg\(3),
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST40|ALT_INV_DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST40|ALT_INV_DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST40|ALT_INV_DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST40|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bin_counter(10),
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_bin_counter(10),
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X7_Y7_N4
\bin_counter[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[0]~69_combout\ = !bin_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bin_counter(0),
	combout => \bin_counter[0]~69_combout\);

-- Location: FF_X7_Y7_N5
\bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(0));

-- Location: LCCOMB_X7_Y7_N10
\bin_counter[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[1]~23_combout\ = (bin_counter(1) & (bin_counter(0) $ (VCC))) # (!bin_counter(1) & (bin_counter(0) & VCC))
-- \bin_counter[1]~24\ = CARRY((bin_counter(1) & bin_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(1),
	datab => bin_counter(0),
	datad => VCC,
	combout => \bin_counter[1]~23_combout\,
	cout => \bin_counter[1]~24\);

-- Location: FF_X7_Y7_N11
\bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(1));

-- Location: LCCOMB_X7_Y7_N12
\bin_counter[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[2]~25_combout\ = (bin_counter(2) & (!\bin_counter[1]~24\)) # (!bin_counter(2) & ((\bin_counter[1]~24\) # (GND)))
-- \bin_counter[2]~26\ = CARRY((!\bin_counter[1]~24\) # (!bin_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(2),
	datad => VCC,
	cin => \bin_counter[1]~24\,
	combout => \bin_counter[2]~25_combout\,
	cout => \bin_counter[2]~26\);

-- Location: FF_X7_Y7_N13
\bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(2));

-- Location: LCCOMB_X7_Y7_N14
\bin_counter[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[3]~27_combout\ = (bin_counter(3) & (\bin_counter[2]~26\ $ (GND))) # (!bin_counter(3) & (!\bin_counter[2]~26\ & VCC))
-- \bin_counter[3]~28\ = CARRY((bin_counter(3) & !\bin_counter[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(3),
	datad => VCC,
	cin => \bin_counter[2]~26\,
	combout => \bin_counter[3]~27_combout\,
	cout => \bin_counter[3]~28\);

-- Location: FF_X7_Y7_N15
\bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(3));

-- Location: LCCOMB_X7_Y7_N16
\bin_counter[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[4]~29_combout\ = (bin_counter(4) & (!\bin_counter[3]~28\)) # (!bin_counter(4) & ((\bin_counter[3]~28\) # (GND)))
-- \bin_counter[4]~30\ = CARRY((!\bin_counter[3]~28\) # (!bin_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(4),
	datad => VCC,
	cin => \bin_counter[3]~28\,
	combout => \bin_counter[4]~29_combout\,
	cout => \bin_counter[4]~30\);

-- Location: FF_X7_Y7_N17
\bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(4));

-- Location: LCCOMB_X7_Y7_N18
\bin_counter[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[5]~31_combout\ = (bin_counter(5) & (\bin_counter[4]~30\ $ (GND))) # (!bin_counter(5) & (!\bin_counter[4]~30\ & VCC))
-- \bin_counter[5]~32\ = CARRY((bin_counter(5) & !\bin_counter[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(5),
	datad => VCC,
	cin => \bin_counter[4]~30\,
	combout => \bin_counter[5]~31_combout\,
	cout => \bin_counter[5]~32\);

-- Location: FF_X7_Y7_N19
\bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(5));

-- Location: LCCOMB_X7_Y7_N20
\bin_counter[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[6]~33_combout\ = (bin_counter(6) & (!\bin_counter[5]~32\)) # (!bin_counter(6) & ((\bin_counter[5]~32\) # (GND)))
-- \bin_counter[6]~34\ = CARRY((!\bin_counter[5]~32\) # (!bin_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(6),
	datad => VCC,
	cin => \bin_counter[5]~32\,
	combout => \bin_counter[6]~33_combout\,
	cout => \bin_counter[6]~34\);

-- Location: FF_X7_Y7_N21
\bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(6));

-- Location: LCCOMB_X7_Y7_N22
\bin_counter[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[7]~35_combout\ = (bin_counter(7) & (\bin_counter[6]~34\ $ (GND))) # (!bin_counter(7) & (!\bin_counter[6]~34\ & VCC))
-- \bin_counter[7]~36\ = CARRY((bin_counter(7) & !\bin_counter[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(7),
	datad => VCC,
	cin => \bin_counter[6]~34\,
	combout => \bin_counter[7]~35_combout\,
	cout => \bin_counter[7]~36\);

-- Location: FF_X7_Y7_N23
\bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(7));

-- Location: LCCOMB_X7_Y7_N24
\bin_counter[8]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[8]~37_combout\ = (bin_counter(8) & (!\bin_counter[7]~36\)) # (!bin_counter(8) & ((\bin_counter[7]~36\) # (GND)))
-- \bin_counter[8]~38\ = CARRY((!\bin_counter[7]~36\) # (!bin_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(8),
	datad => VCC,
	cin => \bin_counter[7]~36\,
	combout => \bin_counter[8]~37_combout\,
	cout => \bin_counter[8]~38\);

-- Location: FF_X7_Y7_N25
\bin_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(8));

-- Location: LCCOMB_X7_Y7_N26
\bin_counter[9]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[9]~39_combout\ = (bin_counter(9) & (\bin_counter[8]~38\ $ (GND))) # (!bin_counter(9) & (!\bin_counter[8]~38\ & VCC))
-- \bin_counter[9]~40\ = CARRY((bin_counter(9) & !\bin_counter[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(9),
	datad => VCC,
	cin => \bin_counter[8]~38\,
	combout => \bin_counter[9]~39_combout\,
	cout => \bin_counter[9]~40\);

-- Location: FF_X7_Y7_N27
\bin_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[9]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(9));

-- Location: LCCOMB_X7_Y7_N28
\bin_counter[10]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[10]~41_combout\ = (bin_counter(10) & (!\bin_counter[9]~40\)) # (!bin_counter(10) & ((\bin_counter[9]~40\) # (GND)))
-- \bin_counter[10]~42\ = CARRY((!\bin_counter[9]~40\) # (!bin_counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(10),
	datad => VCC,
	cin => \bin_counter[9]~40\,
	combout => \bin_counter[10]~41_combout\,
	cout => \bin_counter[10]~42\);

-- Location: FF_X7_Y7_N29
\bin_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(10));

-- Location: LCCOMB_X7_Y7_N30
\bin_counter[11]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[11]~43_combout\ = (bin_counter(11) & (\bin_counter[10]~42\ $ (GND))) # (!bin_counter(11) & (!\bin_counter[10]~42\ & VCC))
-- \bin_counter[11]~44\ = CARRY((bin_counter(11) & !\bin_counter[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(11),
	datad => VCC,
	cin => \bin_counter[10]~42\,
	combout => \bin_counter[11]~43_combout\,
	cout => \bin_counter[11]~44\);

-- Location: FF_X7_Y7_N31
\bin_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[11]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(11));

-- Location: LCCOMB_X7_Y6_N0
\bin_counter[12]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[12]~45_combout\ = (bin_counter(12) & (!\bin_counter[11]~44\)) # (!bin_counter(12) & ((\bin_counter[11]~44\) # (GND)))
-- \bin_counter[12]~46\ = CARRY((!\bin_counter[11]~44\) # (!bin_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(12),
	datad => VCC,
	cin => \bin_counter[11]~44\,
	combout => \bin_counter[12]~45_combout\,
	cout => \bin_counter[12]~46\);

-- Location: FF_X7_Y6_N1
\bin_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[12]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(12));

-- Location: LCCOMB_X7_Y6_N2
\bin_counter[13]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[13]~47_combout\ = (bin_counter(13) & (\bin_counter[12]~46\ $ (GND))) # (!bin_counter(13) & (!\bin_counter[12]~46\ & VCC))
-- \bin_counter[13]~48\ = CARRY((bin_counter(13) & !\bin_counter[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(13),
	datad => VCC,
	cin => \bin_counter[12]~46\,
	combout => \bin_counter[13]~47_combout\,
	cout => \bin_counter[13]~48\);

-- Location: FF_X7_Y6_N3
\bin_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[13]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(13));

-- Location: LCCOMB_X7_Y6_N4
\bin_counter[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[14]~49_combout\ = (bin_counter(14) & (!\bin_counter[13]~48\)) # (!bin_counter(14) & ((\bin_counter[13]~48\) # (GND)))
-- \bin_counter[14]~50\ = CARRY((!\bin_counter[13]~48\) # (!bin_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(14),
	datad => VCC,
	cin => \bin_counter[13]~48\,
	combout => \bin_counter[14]~49_combout\,
	cout => \bin_counter[14]~50\);

-- Location: FF_X7_Y6_N5
\bin_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(14));

-- Location: LCCOMB_X7_Y6_N6
\bin_counter[15]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[15]~51_combout\ = (bin_counter(15) & (\bin_counter[14]~50\ $ (GND))) # (!bin_counter(15) & (!\bin_counter[14]~50\ & VCC))
-- \bin_counter[15]~52\ = CARRY((bin_counter(15) & !\bin_counter[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(15),
	datad => VCC,
	cin => \bin_counter[14]~50\,
	combout => \bin_counter[15]~51_combout\,
	cout => \bin_counter[15]~52\);

-- Location: FF_X7_Y6_N7
\bin_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(15));

-- Location: LCCOMB_X7_Y6_N8
\bin_counter[16]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[16]~53_combout\ = (bin_counter(16) & (!\bin_counter[15]~52\)) # (!bin_counter(16) & ((\bin_counter[15]~52\) # (GND)))
-- \bin_counter[16]~54\ = CARRY((!\bin_counter[15]~52\) # (!bin_counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(16),
	datad => VCC,
	cin => \bin_counter[15]~52\,
	combout => \bin_counter[16]~53_combout\,
	cout => \bin_counter[16]~54\);

-- Location: FF_X7_Y6_N9
\bin_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[16]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(16));

-- Location: LCCOMB_X7_Y6_N10
\bin_counter[17]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[17]~55_combout\ = (bin_counter(17) & (\bin_counter[16]~54\ $ (GND))) # (!bin_counter(17) & (!\bin_counter[16]~54\ & VCC))
-- \bin_counter[17]~56\ = CARRY((bin_counter(17) & !\bin_counter[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(17),
	datad => VCC,
	cin => \bin_counter[16]~54\,
	combout => \bin_counter[17]~55_combout\,
	cout => \bin_counter[17]~56\);

-- Location: FF_X7_Y6_N11
\bin_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[17]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(17));

-- Location: LCCOMB_X7_Y6_N12
\bin_counter[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[18]~57_combout\ = (bin_counter(18) & (!\bin_counter[17]~56\)) # (!bin_counter(18) & ((\bin_counter[17]~56\) # (GND)))
-- \bin_counter[18]~58\ = CARRY((!\bin_counter[17]~56\) # (!bin_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(18),
	datad => VCC,
	cin => \bin_counter[17]~56\,
	combout => \bin_counter[18]~57_combout\,
	cout => \bin_counter[18]~58\);

-- Location: FF_X7_Y6_N13
\bin_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[18]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(18));

-- Location: LCCOMB_X7_Y6_N14
\bin_counter[19]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[19]~59_combout\ = (bin_counter(19) & (\bin_counter[18]~58\ $ (GND))) # (!bin_counter(19) & (!\bin_counter[18]~58\ & VCC))
-- \bin_counter[19]~60\ = CARRY((bin_counter(19) & !\bin_counter[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(19),
	datad => VCC,
	cin => \bin_counter[18]~58\,
	combout => \bin_counter[19]~59_combout\,
	cout => \bin_counter[19]~60\);

-- Location: FF_X7_Y6_N15
\bin_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[19]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(19));

-- Location: LCCOMB_X7_Y6_N16
\bin_counter[20]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[20]~61_combout\ = (bin_counter(20) & (!\bin_counter[19]~60\)) # (!bin_counter(20) & ((\bin_counter[19]~60\) # (GND)))
-- \bin_counter[20]~62\ = CARRY((!\bin_counter[19]~60\) # (!bin_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(20),
	datad => VCC,
	cin => \bin_counter[19]~60\,
	combout => \bin_counter[20]~61_combout\,
	cout => \bin_counter[20]~62\);

-- Location: FF_X7_Y6_N17
\bin_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[20]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(20));

-- Location: LCCOMB_X7_Y6_N18
\bin_counter[21]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[21]~63_combout\ = (bin_counter(21) & (\bin_counter[20]~62\ $ (GND))) # (!bin_counter(21) & (!\bin_counter[20]~62\ & VCC))
-- \bin_counter[21]~64\ = CARRY((bin_counter(21) & !\bin_counter[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(21),
	datad => VCC,
	cin => \bin_counter[20]~62\,
	combout => \bin_counter[21]~63_combout\,
	cout => \bin_counter[21]~64\);

-- Location: FF_X7_Y6_N19
\bin_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[21]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(21));

-- Location: LCCOMB_X7_Y6_N20
\bin_counter[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[22]~65_combout\ = (bin_counter(22) & (!\bin_counter[21]~64\)) # (!bin_counter(22) & ((\bin_counter[21]~64\) # (GND)))
-- \bin_counter[22]~66\ = CARRY((!\bin_counter[21]~64\) # (!bin_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(22),
	datad => VCC,
	cin => \bin_counter[21]~64\,
	combout => \bin_counter[22]~65_combout\,
	cout => \bin_counter[22]~66\);

-- Location: FF_X7_Y6_N21
\bin_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[22]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(22));

-- Location: LCCOMB_X7_Y6_N22
\bin_counter[23]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[23]~67_combout\ = \bin_counter[22]~66\ $ (!bin_counter(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bin_counter(23),
	cin => \bin_counter[22]~66\,
	combout => \bin_counter[23]~67_combout\);

-- Location: FF_X7_Y6_N23
\bin_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[23]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(23));

-- Location: CLKCTRL_G0
\bin_counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bin_counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bin_counter[23]~clkctrl_outclk\);

-- Location: IOIBUF_X9_Y0_N29
\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X6_Y6_N16
\INST1|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|ud_bin_counter[0]~3_combout\ = \MEALY0|clk_enX~combout\ $ (\INST1|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEALY0|clk_enX~combout\,
	datac => \INST1|ud_bin_counter\(0),
	combout => \INST1|ud_bin_counter[0]~3_combout\);

-- Location: IOIBUF_X0_Y2_N15
\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X6_Y6_N17
\INST1|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST1|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|ud_bin_counter\(0));

-- Location: LCCOMB_X6_Y6_N6
\INST1|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|ud_bin_counter[1]~5_cout\ = CARRY(\INST1|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|ud_bin_counter\(0),
	datad => VCC,
	cout => \INST1|ud_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X6_Y6_N8
\INST1|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|ud_bin_counter[1]~6_combout\ = (\INST1|process_0~0_combout\ & ((\INST1|ud_bin_counter\(1) & (!\INST1|ud_bin_counter[1]~5_cout\)) # (!\INST1|ud_bin_counter\(1) & ((\INST1|ud_bin_counter[1]~5_cout\) # (GND))))) # (!\INST1|process_0~0_combout\ & 
-- ((\INST1|ud_bin_counter\(1) & (\INST1|ud_bin_counter[1]~5_cout\ & VCC)) # (!\INST1|ud_bin_counter\(1) & (!\INST1|ud_bin_counter[1]~5_cout\))))
-- \INST1|ud_bin_counter[1]~7\ = CARRY((\INST1|process_0~0_combout\ & ((!\INST1|ud_bin_counter[1]~5_cout\) # (!\INST1|ud_bin_counter\(1)))) # (!\INST1|process_0~0_combout\ & (!\INST1|ud_bin_counter\(1) & !\INST1|ud_bin_counter[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|process_0~0_combout\,
	datab => \INST1|ud_bin_counter\(1),
	datad => VCC,
	cin => \INST1|ud_bin_counter[1]~5_cout\,
	combout => \INST1|ud_bin_counter[1]~6_combout\,
	cout => \INST1|ud_bin_counter[1]~7\);

-- Location: FF_X6_Y6_N9
\INST1|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST1|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \MEALY0|clk_enX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|ud_bin_counter\(1));

-- Location: LCCOMB_X6_Y6_N28
\INST2|eq~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|eq~0_combout\ = (\sw[5]~input_o\ & ((\sw[4]~input_o\ $ (\INST1|ud_bin_counter\(0))) # (!\INST1|ud_bin_counter\(1)))) # (!\sw[5]~input_o\ & ((\INST1|ud_bin_counter\(1)) # (\sw[4]~input_o\ $ (\INST1|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[4]~input_o\,
	datac => \INST1|ud_bin_counter\(1),
	datad => \INST1|ud_bin_counter\(0),
	combout => \INST2|eq~0_combout\);

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: LCCOMB_X6_Y6_N10
\INST1|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|ud_bin_counter[2]~8_combout\ = ((\INST1|process_0~0_combout\ $ (\INST1|ud_bin_counter\(2) $ (\INST1|ud_bin_counter[1]~7\)))) # (GND)
-- \INST1|ud_bin_counter[2]~9\ = CARRY((\INST1|process_0~0_combout\ & (\INST1|ud_bin_counter\(2) & !\INST1|ud_bin_counter[1]~7\)) # (!\INST1|process_0~0_combout\ & ((\INST1|ud_bin_counter\(2)) # (!\INST1|ud_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|process_0~0_combout\,
	datab => \INST1|ud_bin_counter\(2),
	datad => VCC,
	cin => \INST1|ud_bin_counter[1]~7\,
	combout => \INST1|ud_bin_counter[2]~8_combout\,
	cout => \INST1|ud_bin_counter[2]~9\);

-- Location: LCCOMB_X6_Y6_N12
\INST1|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|ud_bin_counter[3]~10_combout\ = \INST1|process_0~0_combout\ $ (\INST1|ud_bin_counter\(3) $ (!\INST1|ud_bin_counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|process_0~0_combout\,
	datab => \INST1|ud_bin_counter\(3),
	cin => \INST1|ud_bin_counter[2]~9\,
	combout => \INST1|ud_bin_counter[3]~10_combout\);

-- Location: FF_X6_Y6_N13
\INST1|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST1|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \MEALY0|clk_enX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|ud_bin_counter\(3));

-- Location: LCCOMB_X6_Y6_N26
\INST2|less~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|less~0_combout\ = (\INST1|ud_bin_counter\(2) & (\sw[6]~input_o\ & (\sw[7]~input_o\ $ (!\INST1|ud_bin_counter\(3))))) # (!\INST1|ud_bin_counter\(2) & (!\sw[6]~input_o\ & (\sw[7]~input_o\ $ (!\INST1|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|ud_bin_counter\(2),
	datab => \sw[7]~input_o\,
	datac => \sw[6]~input_o\,
	datad => \INST1|ud_bin_counter\(3),
	combout => \INST2|less~0_combout\);

-- Location: LCCOMB_X10_Y6_N12
\MEALY0|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector8~0_combout\ = (!\INST2|eq~0_combout\ & (\INST2|less~0_combout\ & \MEALY0|current_stateX.XSTOP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|eq~0_combout\,
	datab => \INST2|less~0_combout\,
	datac => \MEALY0|current_stateX.XSTOP~q\,
	combout => \MEALY0|Selector8~0_combout\);

-- Location: LCCOMB_X10_Y6_N30
\INST2|eq\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|eq~combout\ = (\INST2|eq~0_combout\) # (!\INST2|less~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2|less~0_combout\,
	datad => \INST2|eq~0_combout\,
	combout => \INST2|eq~combout\);

-- Location: IOIBUF_X6_Y0_N15
\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

-- Location: LCCOMB_X10_Y6_N10
\MEALY0|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector15~0_combout\ = ((\MEALY0|current_stateX.X0~q\) # ((!\MEALY0|Selector2~0_combout\ & !\pb[3]~input_o\))) # (!\INST2|eq~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|eq~combout\,
	datab => \MEALY0|Selector2~0_combout\,
	datac => \MEALY0|current_stateX.X0~q\,
	datad => \pb[3]~input_o\,
	combout => \MEALY0|Selector15~0_combout\);

-- Location: FF_X10_Y6_N11
\MEALY0|current_stateX.X0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \MEALY0|Selector15~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEALY0|current_stateX.X0~q\);

-- Location: LCCOMB_X10_Y6_N6
\MEALY0|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector10~0_combout\ = (!\MEALY0|current_stateX.XSTOP~q\ & (!\INST5|current_state.done~q\ & (\INST5|current_state.start~q\ & \MEALY0|current_stateX.X0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|current_stateX.XSTOP~q\,
	datab => \INST5|current_state.done~q\,
	datac => \INST5|current_state.start~q\,
	datad => \MEALY0|current_stateX.X0~q\,
	combout => \MEALY0|Selector10~0_combout\);

-- Location: FF_X10_Y6_N7
\MEALY0|current_stateX.ERRORX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \MEALY0|Selector10~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEALY0|current_stateX.ERRORX~q\);

-- Location: CLKCTRL_G3
\MEALY0|current_stateX.ERRORX~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MEALY0|current_stateX.ERRORX~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MEALY0|current_stateX.ERRORX~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y6_N24
\MEALY0|EXTDX\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|EXTDX~combout\ = (GLOBAL(\MEALY0|current_stateX.ERRORX~clkctrl_outclk\) & (\MEALY0|EXTDX~combout\)) # (!GLOBAL(\MEALY0|current_stateX.ERRORX~clkctrl_outclk\) & ((\MEALY0|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEALY0|EXTDX~combout\,
	datac => \MEALY0|Selector8~0_combout\,
	datad => \MEALY0|current_stateX.ERRORX~clkctrl_outclk\,
	combout => \MEALY0|EXTDX~combout\);

-- Location: LCCOMB_X9_Y5_N6
\INST5|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector10~0_combout\ = (\MEALY0|EXTDY~combout\ & (!\pb[1]~input_o\ & (!\MEALY0|Selector2~0_combout\ & \MEALY0|EXTDX~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|EXTDY~combout\,
	datab => \pb[1]~input_o\,
	datac => \MEALY0|Selector2~0_combout\,
	datad => \MEALY0|EXTDX~combout\,
	combout => \INST5|Selector10~0_combout\);

-- Location: LCCOMB_X9_Y6_N8
\INST6|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|sreg~3_combout\ = (\INST5|current_state.extending~q\) # (\INST6|sreg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST5|current_state.extending~q\,
	datad => \INST6|sreg\(2),
	combout => \INST6|sreg~3_combout\);

-- Location: LCCOMB_X9_Y5_N22
\INST5|shift_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|shift_en~combout\ = (\INST5|current_state.retracting~q\) # (\INST5|current_state.extending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST5|current_state.retracting~q\,
	datad => \INST5|current_state.extending~q\,
	combout => \INST5|shift_en~combout\);

-- Location: FF_X9_Y6_N3
\INST6|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	asdata => \INST6|sreg~3_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \INST5|shift_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|sreg\(3));

-- Location: LCCOMB_X9_Y6_N10
\INST5|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Equal0~0_combout\ = (\INST6|sreg\(1) & (\INST6|sreg\(3) & (\INST6|sreg\(2) & \INST6|sreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|sreg\(1),
	datab => \INST6|sreg\(3),
	datac => \INST6|sreg\(2),
	datad => \INST6|sreg\(0),
	combout => \INST5|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y5_N30
\INST5|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector8~0_combout\ = (\INST5|current_state.extending~q\) # ((\pb[1]~input_o\ & (!\INST5|Equal0~0_combout\ & \INST5|current_state.extend_hold~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \INST5|Equal0~0_combout\,
	datac => \INST5|current_state.extend_hold~q\,
	datad => \INST5|current_state.extending~q\,
	combout => \INST5|Selector8~0_combout\);

-- Location: LCCOMB_X9_Y5_N24
\INST5|next_state.extend_hold_189\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|next_state.extend_hold_189~combout\ = (GLOBAL(\INST5|Selector13~0clkctrl_outclk\) & (\INST5|next_state.extend_hold_189~combout\)) # (!GLOBAL(\INST5|Selector13~0clkctrl_outclk\) & ((\INST5|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST5|next_state.extend_hold_189~combout\,
	datac => \INST5|Selector8~0_combout\,
	datad => \INST5|Selector13~0clkctrl_outclk\,
	combout => \INST5|next_state.extend_hold_189~combout\);

-- Location: LCCOMB_X9_Y5_N20
\INST5|current_state.extend_hold~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|current_state.extend_hold~feeder_combout\ = \INST5|next_state.extend_hold_189~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST5|next_state.extend_hold_189~combout\,
	combout => \INST5|current_state.extend_hold~feeder_combout\);

-- Location: FF_X9_Y5_N21
\INST5|current_state.extend_hold\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST5|current_state.extend_hold~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|current_state.extend_hold~q\);

-- Location: LCCOMB_X9_Y5_N12
\INST5|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector10~1_combout\ = (\INST5|Selector10~0_combout\) # ((!\INST5|Equal0~0_combout\ & (\INST5|current_state.extend_hold~q\ & !\pb[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Selector10~0_combout\,
	datab => \INST5|Equal0~0_combout\,
	datac => \INST5|current_state.extend_hold~q\,
	datad => \pb[1]~input_o\,
	combout => \INST5|Selector10~1_combout\);

-- Location: LCCOMB_X9_Y5_N18
\INST5|next_state.extending_199\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|next_state.extending_199~combout\ = (GLOBAL(\INST5|Selector13~0clkctrl_outclk\) & (\INST5|next_state.extending_199~combout\)) # (!GLOBAL(\INST5|Selector13~0clkctrl_outclk\) & ((\INST5|Selector10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST5|next_state.extending_199~combout\,
	datac => \INST5|Selector10~1_combout\,
	datad => \INST5|Selector13~0clkctrl_outclk\,
	combout => \INST5|next_state.extending_199~combout\);

-- Location: LCCOMB_X9_Y5_N10
\INST5|current_state.extending~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|current_state.extending~feeder_combout\ = \INST5|next_state.extending_199~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST5|next_state.extending_199~combout\,
	combout => \INST5|current_state.extending~feeder_combout\);

-- Location: FF_X9_Y5_N11
\INST5|current_state.extending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST5|current_state.extending~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|current_state.extending~q\);

-- Location: LCCOMB_X9_Y6_N18
\INST6|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|sreg~0_combout\ = (\INST6|sreg\(1) & \INST5|current_state.extending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|sreg\(1),
	datac => \INST5|current_state.extending~q\,
	combout => \INST6|sreg~0_combout\);

-- Location: LCCOMB_X9_Y6_N24
\INST6|sreg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|sreg[0]~feeder_combout\ = \INST6|sreg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST6|sreg~0_combout\,
	combout => \INST6|sreg[0]~feeder_combout\);

-- Location: FF_X9_Y6_N25
\INST6|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST6|sreg[0]~feeder_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST5|shift_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|sreg\(0));

-- Location: LCCOMB_X9_Y6_N22
\INST6|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|sreg~1_combout\ = (\INST5|current_state.extending~q\ & ((\INST6|sreg\(2)))) # (!\INST5|current_state.extending~q\ & (\INST6|sreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST6|sreg\(0),
	datac => \INST5|current_state.extending~q\,
	datad => \INST6|sreg\(2),
	combout => \INST6|sreg~1_combout\);

-- Location: FF_X9_Y6_N27
\INST6|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	asdata => \INST6|sreg~1_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \INST5|shift_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|sreg\(1));

-- Location: LCCOMB_X9_Y6_N2
\INST6|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|sreg~2_combout\ = (\INST5|current_state.extending~q\ & ((\INST6|sreg\(3)))) # (!\INST5|current_state.extending~q\ & (\INST6|sreg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST6|sreg\(1),
	datac => \INST6|sreg\(3),
	datad => \INST5|current_state.extending~q\,
	combout => \INST6|sreg~2_combout\);

-- Location: FF_X9_Y6_N11
\INST6|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	asdata => \INST6|sreg~2_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	ena => \INST5|shift_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|sreg\(2));

-- Location: LCCOMB_X9_Y6_N26
\INST5|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Equal1~0_combout\ = (!\INST6|sreg\(2) & (!\INST6|sreg\(3) & (!\INST6|sreg\(1) & !\INST6|sreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|sreg\(2),
	datab => \INST6|sreg\(3),
	datac => \INST6|sreg\(1),
	datad => \INST6|sreg\(0),
	combout => \INST5|Equal1~0_combout\);

-- Location: LCCOMB_X10_Y5_N26
\INST5|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector4~0_combout\ = (\INST5|current_state.retracting~q\) # ((\INST5|current_state.retracted_hold~q\ & (\pb[1]~input_o\ & !\INST5|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|current_state.retracted_hold~q\,
	datab => \pb[1]~input_o\,
	datac => \INST5|current_state.retracting~q\,
	datad => \INST5|Equal1~0_combout\,
	combout => \INST5|Selector4~0_combout\);

-- Location: LCCOMB_X10_Y5_N16
\INST5|next_state.retracted_hold_159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|next_state.retracted_hold_159~combout\ = (GLOBAL(\INST5|Selector13~0clkctrl_outclk\) & ((\INST5|next_state.retracted_hold_159~combout\))) # (!GLOBAL(\INST5|Selector13~0clkctrl_outclk\) & (\INST5|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST5|Selector4~0_combout\,
	datac => \INST5|next_state.retracted_hold_159~combout\,
	datad => \INST5|Selector13~0clkctrl_outclk\,
	combout => \INST5|next_state.retracted_hold_159~combout\);

-- Location: LCCOMB_X10_Y5_N28
\INST5|current_state.retracted_hold~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|current_state.retracted_hold~feeder_combout\ = \INST5|next_state.retracted_hold_159~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST5|next_state.retracted_hold_159~combout\,
	combout => \INST5|current_state.retracted_hold~feeder_combout\);

-- Location: FF_X10_Y5_N29
\INST5|current_state.retracted_hold\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST5|current_state.retracted_hold~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|current_state.retracted_hold~q\);

-- Location: LCCOMB_X9_Y5_N0
\INST5|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector0~0_combout\ = (\pb[1]~input_o\ & ((\INST5|current_state.extended~q\) # ((\INST5|current_state.extend_hold~q\ & \INST5|Equal0~0_combout\)))) # (!\pb[1]~input_o\ & (((\INST5|current_state.extend_hold~q\ & \INST5|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \INST5|current_state.extended~q\,
	datac => \INST5|current_state.extend_hold~q\,
	datad => \INST5|Equal0~0_combout\,
	combout => \INST5|Selector0~0_combout\);

-- Location: LCCOMB_X9_Y5_N8
\INST5|next_state.extended_179\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|next_state.extended_179~combout\ = (GLOBAL(\INST5|Selector13~0clkctrl_outclk\) & (\INST5|next_state.extended_179~combout\)) # (!GLOBAL(\INST5|Selector13~0clkctrl_outclk\) & ((\INST5|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|next_state.extended_179~combout\,
	datac => \INST5|Selector13~0clkctrl_outclk\,
	datad => \INST5|Selector0~0_combout\,
	combout => \INST5|next_state.extended_179~combout\);

-- Location: FF_X9_Y5_N9
\INST5|current_state.extended\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST5|next_state.extended_179~combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|current_state.extended~q\);

-- Location: LCCOMB_X9_Y5_N2
\INST5|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector2~0_combout\ = (!\pb[1]~input_o\ & ((\INST5|current_state.extended~q\) # ((\INST5|current_state.retracted_hold~q\ & !\INST5|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|current_state.retracted_hold~q\,
	datab => \INST5|Equal1~0_combout\,
	datac => \INST5|current_state.extended~q\,
	datad => \pb[1]~input_o\,
	combout => \INST5|Selector2~0_combout\);

-- Location: LCCOMB_X9_Y5_N16
\INST5|next_state.retracting_169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|next_state.retracting_169~combout\ = (GLOBAL(\INST5|Selector13~0clkctrl_outclk\) & ((\INST5|next_state.retracting_169~combout\))) # (!GLOBAL(\INST5|Selector13~0clkctrl_outclk\) & (\INST5|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Selector2~0_combout\,
	datab => \INST5|next_state.retracting_169~combout\,
	datad => \INST5|Selector13~0clkctrl_outclk\,
	combout => \INST5|next_state.retracting_169~combout\);

-- Location: LCCOMB_X9_Y5_N4
\INST5|current_state.retracting~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|current_state.retracting~feeder_combout\ = \INST5|next_state.retracting_169~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST5|next_state.retracting_169~combout\,
	combout => \INST5|current_state.retracting~feeder_combout\);

-- Location: FF_X9_Y5_N5
\INST5|current_state.retracting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST5|current_state.retracting~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|current_state.retracting~q\);

-- Location: LCCOMB_X9_Y5_N26
\INST5|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector13~0_combout\ = (!\pb[1]~input_o\ & ((\INST5|current_state.retracting~q\) # (\INST5|current_state.extending~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datac => \INST5|current_state.retracting~q\,
	datad => \INST5|current_state.extending~q\,
	combout => \INST5|Selector13~0_combout\);

-- Location: CLKCTRL_G2
\INST5|Selector13~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INST5|Selector13~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INST5|Selector13~0clkctrl_outclk\);

-- Location: LCCOMB_X9_Y6_N0
\INST5|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector12~0_combout\ = (\INST5|current_state.start~q\) # ((\MEALY0|EXTDY~combout\ & (\MEALY0|EXTDX~combout\ & !\pb[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|EXTDY~combout\,
	datab => \INST5|current_state.start~q\,
	datac => \MEALY0|EXTDX~combout\,
	datad => \pb[1]~input_o\,
	combout => \INST5|Selector12~0_combout\);

-- Location: LCCOMB_X9_Y6_N20
\INST5|next_state.start_209\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|next_state.start_209~combout\ = (GLOBAL(\INST5|Selector13~0clkctrl_outclk\) & (\INST5|next_state.start_209~combout\)) # (!GLOBAL(\INST5|Selector13~0clkctrl_outclk\) & ((!\INST5|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Selector13~0clkctrl_outclk\,
	datac => \INST5|next_state.start_209~combout\,
	datad => \INST5|Selector12~0_combout\,
	combout => \INST5|next_state.start_209~combout\);

-- Location: LCCOMB_X9_Y6_N4
\INST5|current_state.start~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|current_state.start~0_combout\ = !\INST5|next_state.start_209~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST5|next_state.start_209~combout\,
	combout => \INST5|current_state.start~0_combout\);

-- Location: FF_X9_Y6_N5
\INST5|current_state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST5|current_state.start~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|current_state.start~q\);

-- Location: LCCOMB_X10_Y7_N2
\MEALY0|Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector5~2_combout\ = (!\MEALY0|current_stateY.Y0~q\ & ((\INST5|current_state.done~q\) # (!\INST5|current_state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST5|current_state.start~q\,
	datac => \MEALY0|current_stateY.Y0~q\,
	datad => \INST5|current_state.done~q\,
	combout => \MEALY0|Selector5~2_combout\);

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X9_Y7_N14
\INST3|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[1]~5_cout\ = CARRY(\INST3|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(0),
	datad => VCC,
	cout => \INST3|ud_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X9_Y7_N16
\INST3|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[1]~6_combout\ = (\INST3|process_0~0_combout\ & ((\INST3|ud_bin_counter\(1) & (!\INST3|ud_bin_counter[1]~5_cout\)) # (!\INST3|ud_bin_counter\(1) & ((\INST3|ud_bin_counter[1]~5_cout\) # (GND))))) # (!\INST3|process_0~0_combout\ & 
-- ((\INST3|ud_bin_counter\(1) & (\INST3|ud_bin_counter[1]~5_cout\ & VCC)) # (!\INST3|ud_bin_counter\(1) & (!\INST3|ud_bin_counter[1]~5_cout\))))
-- \INST3|ud_bin_counter[1]~7\ = CARRY((\INST3|process_0~0_combout\ & ((!\INST3|ud_bin_counter[1]~5_cout\) # (!\INST3|ud_bin_counter\(1)))) # (!\INST3|process_0~0_combout\ & (!\INST3|ud_bin_counter\(1) & !\INST3|ud_bin_counter[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|process_0~0_combout\,
	datab => \INST3|ud_bin_counter\(1),
	datad => VCC,
	cin => \INST3|ud_bin_counter[1]~5_cout\,
	combout => \INST3|ud_bin_counter[1]~6_combout\,
	cout => \INST3|ud_bin_counter[1]~7\);

-- Location: FF_X9_Y7_N17
\INST3|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST3|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \MEALY0|clk_enY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|ud_bin_counter\(1));

-- Location: LCCOMB_X9_Y7_N26
\INST4|less~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|less~2_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\ & !\INST3|ud_bin_counter\(0))) # (!\INST3|ud_bin_counter\(1)))) # (!\sw[1]~input_o\ & (\sw[0]~input_o\ & (!\INST3|ud_bin_counter\(0) & !\INST3|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \INST3|ud_bin_counter\(0),
	datad => \INST3|ud_bin_counter\(1),
	combout => \INST4|less~2_combout\);

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LCCOMB_X9_Y7_N18
\INST3|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[2]~8_combout\ = ((\INST3|process_0~0_combout\ $ (\INST3|ud_bin_counter\(2) $ (\INST3|ud_bin_counter[1]~7\)))) # (GND)
-- \INST3|ud_bin_counter[2]~9\ = CARRY((\INST3|process_0~0_combout\ & (\INST3|ud_bin_counter\(2) & !\INST3|ud_bin_counter[1]~7\)) # (!\INST3|process_0~0_combout\ & ((\INST3|ud_bin_counter\(2)) # (!\INST3|ud_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|process_0~0_combout\,
	datab => \INST3|ud_bin_counter\(2),
	datad => VCC,
	cin => \INST3|ud_bin_counter[1]~7\,
	combout => \INST3|ud_bin_counter[2]~8_combout\,
	cout => \INST3|ud_bin_counter[2]~9\);

-- Location: LCCOMB_X9_Y7_N20
\INST3|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[3]~10_combout\ = \INST3|ud_bin_counter\(3) $ (\INST3|ud_bin_counter[2]~9\ $ (!\INST3|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|ud_bin_counter\(3),
	datad => \INST3|process_0~0_combout\,
	cin => \INST3|ud_bin_counter[2]~9\,
	combout => \INST3|ud_bin_counter[3]~10_combout\);

-- Location: FF_X9_Y7_N21
\INST3|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST3|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \MEALY0|clk_enY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|ud_bin_counter\(3));

-- Location: LCCOMB_X9_Y7_N2
\INST4|less~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|less~1_combout\ = (\sw[3]~input_o\ & (((\sw[2]~input_o\ & !\INST3|ud_bin_counter\(2))) # (!\INST3|ud_bin_counter\(3)))) # (!\sw[3]~input_o\ & (\sw[2]~input_o\ & (!\INST3|ud_bin_counter\(2) & !\INST3|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \INST3|ud_bin_counter\(2),
	datad => \INST3|ud_bin_counter\(3),
	combout => \INST4|less~1_combout\);

-- Location: LCCOMB_X9_Y7_N8
\INST4|grtr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|grtr~0_combout\ = (\INST4|less~1_combout\) # ((\INST4|less~0_combout\ & ((\INST4|less~2_combout\) # (!\INST4|eq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|eq~0_combout\,
	datab => \INST4|less~0_combout\,
	datac => \INST4|less~2_combout\,
	datad => \INST4|less~1_combout\,
	combout => \INST4|grtr~0_combout\);

-- Location: LCCOMB_X9_Y7_N0
\MEALY0|Ycount~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Ycount~1_combout\ = (!\pb[2]~input_o\ & (\MEALY0|current_stateY.YMOVE~q\ & ((\INST4|eq~0_combout\) # (!\INST4|less~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|eq~0_combout\,
	datab => \INST4|less~0_combout\,
	datac => \pb[2]~input_o\,
	datad => \MEALY0|current_stateY.YMOVE~q\,
	combout => \MEALY0|Ycount~1_combout\);

-- Location: LCCOMB_X9_Y7_N12
\MEALY0|Ycount\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Ycount~combout\ = (\MEALY0|Ycount~1_combout\ & ((\INST4|grtr~0_combout\))) # (!\MEALY0|Ycount~1_combout\ & (\MEALY0|Ycount~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|Ycount~combout\,
	datac => \INST4|grtr~0_combout\,
	datad => \MEALY0|Ycount~1_combout\,
	combout => \MEALY0|Ycount~combout\);

-- Location: LCCOMB_X9_Y7_N22
\INST3|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|process_0~0_combout\ = (\MEALY0|clk_enY~combout\ & \MEALY0|Ycount~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEALY0|clk_enY~combout\,
	datad => \MEALY0|Ycount~combout\,
	combout => \INST3|process_0~0_combout\);

-- Location: FF_X9_Y7_N19
\INST3|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST3|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \MEALY0|clk_enY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|ud_bin_counter\(2));

-- Location: LCCOMB_X9_Y7_N28
\INST4|less~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|less~0_combout\ = (\sw[2]~input_o\ & (\INST3|ud_bin_counter\(2) & (\sw[3]~input_o\ $ (!\INST3|ud_bin_counter\(3))))) # (!\sw[2]~input_o\ & (!\INST3|ud_bin_counter\(2) & (\sw[3]~input_o\ $ (!\INST3|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \INST3|ud_bin_counter\(2),
	datac => \sw[3]~input_o\,
	datad => \INST3|ud_bin_counter\(3),
	combout => \INST4|less~0_combout\);

-- Location: LCCOMB_X10_Y7_N24
\MEALY0|Transition_Section2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Transition_Section2~0_combout\ = (!\pb[2]~input_o\ & ((\INST4|eq~0_combout\) # (!\INST4|less~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb[2]~input_o\,
	datac => \INST4|eq~0_combout\,
	datad => \INST4|less~0_combout\,
	combout => \MEALY0|Transition_Section2~0_combout\);

-- Location: LCCOMB_X10_Y7_N20
\MEALY0|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector5~0_combout\ = (\MEALY0|current_stateY.YMOVE~q\ & ((\INST5|current_state.done~q\) # (!\INST5|current_state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|current_state.start~q\,
	datac => \MEALY0|current_stateY.YMOVE~q\,
	datad => \INST5|current_state.done~q\,
	combout => \MEALY0|Selector5~0_combout\);

-- Location: LCCOMB_X9_Y7_N10
\INST4|less~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|less~3_combout\ = (\INST4|less~1_combout\) # ((\INST4|less~0_combout\ & \INST4|less~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST4|less~0_combout\,
	datac => \INST4|less~2_combout\,
	datad => \INST4|less~1_combout\,
	combout => \INST4|less~3_combout\);

-- Location: LCCOMB_X10_Y7_N26
\MEALY0|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector4~0_combout\ = (\MEALY0|Selector5~0_combout\ & (\INST4|less~0_combout\ & (!\INST4|eq~0_combout\ & !\INST4|less~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|Selector5~0_combout\,
	datab => \INST4|less~0_combout\,
	datac => \INST4|eq~0_combout\,
	datad => \INST4|less~3_combout\,
	combout => \MEALY0|Selector4~0_combout\);

-- Location: LCCOMB_X10_Y7_N22
\INST4|eq\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|eq~combout\ = (\INST4|eq~0_combout\) # (!\INST4|less~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST4|eq~0_combout\,
	datad => \INST4|less~0_combout\,
	combout => \INST4|eq~combout\);

-- Location: LCCOMB_X10_Y7_N4
\MEALY0|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector4~1_combout\ = (\MEALY0|current_stateY.ERRORY~q\ & (((!\MEALY0|current_stateY.Y0~q\ & !\INST4|eq~combout\)) # (!\MEALY0|Selector2~0_combout\))) # (!\MEALY0|current_stateY.ERRORY~q\ & (!\MEALY0|current_stateY.Y0~q\ & (!\INST4|eq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|current_stateY.ERRORY~q\,
	datab => \MEALY0|current_stateY.Y0~q\,
	datac => \INST4|eq~combout\,
	datad => \MEALY0|Selector2~0_combout\,
	combout => \MEALY0|Selector4~1_combout\);

-- Location: LCCOMB_X10_Y7_N6
\MEALY0|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector4~2_combout\ = (\MEALY0|current_stateY.YSTOP~q\) # ((\MEALY0|current_stateY.YMOVE~q\ & ((\INST5|current_state.done~q\) # (!\INST5|current_state.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|current_stateY.YMOVE~q\,
	datab => \MEALY0|current_stateY.YSTOP~q\,
	datac => \INST5|current_state.done~q\,
	datad => \INST5|current_state.start~q\,
	combout => \MEALY0|Selector4~2_combout\);

-- Location: LCCOMB_X10_Y7_N18
\MEALY0|Selector4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector4~3_combout\ = (\MEALY0|Selector4~0_combout\) # ((\MEALY0|Selector4~1_combout\) # ((\pb[2]~input_o\ & \MEALY0|Selector4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|Selector4~0_combout\,
	datab => \MEALY0|Selector4~1_combout\,
	datac => \pb[2]~input_o\,
	datad => \MEALY0|Selector4~2_combout\,
	combout => \MEALY0|Selector4~3_combout\);

-- Location: FF_X10_Y7_N19
\MEALY0|current_stateY.YSTOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \MEALY0|Selector4~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEALY0|current_stateY.YSTOP~q\);

-- Location: LCCOMB_X10_Y7_N12
\MEALY0|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector5~1_combout\ = (!\pb[2]~input_o\ & ((\MEALY0|current_stateY.YSTOP~q\) # ((\MEALY0|Selector5~0_combout\ & \INST4|less~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|Selector5~0_combout\,
	datab => \pb[2]~input_o\,
	datac => \MEALY0|current_stateY.YSTOP~q\,
	datad => \INST4|less~3_combout\,
	combout => \MEALY0|Selector5~1_combout\);

-- Location: LCCOMB_X10_Y7_N16
\MEALY0|Selector5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector5~3_combout\ = (\MEALY0|Selector5~1_combout\) # ((\MEALY0|Transition_Section2~0_combout\ & ((\MEALY0|Selector5~2_combout\) # (\MEALY0|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|Transition_Section2~0_combout\,
	datab => \MEALY0|Selector5~2_combout\,
	datac => \MEALY0|Selector5~1_combout\,
	datad => \MEALY0|Selector5~0_combout\,
	combout => \MEALY0|Selector5~3_combout\);

-- Location: FF_X10_Y7_N17
\MEALY0|current_stateY.YMOVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \MEALY0|Selector5~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEALY0|current_stateY.YMOVE~q\);

-- Location: LCCOMB_X10_Y7_N8
\MEALY0|clk_enY\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|clk_enY~combout\ = (\MEALY0|current_stateY.YMOVE~q\ & ((\MEALY0|Transition_Section2~0_combout\))) # (!\MEALY0|current_stateY.YMOVE~q\ & (\MEALY0|clk_enY~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEALY0|current_stateY.YMOVE~q\,
	datac => \MEALY0|clk_enY~combout\,
	datad => \MEALY0|Transition_Section2~0_combout\,
	combout => \MEALY0|clk_enY~combout\);

-- Location: LCCOMB_X9_Y7_N30
\INST3|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[0]~3_combout\ = \MEALY0|clk_enY~combout\ $ (\INST3|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEALY0|clk_enY~combout\,
	datac => \INST3|ud_bin_counter\(0),
	combout => \INST3|ud_bin_counter[0]~3_combout\);

-- Location: FF_X9_Y7_N31
\INST3|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST3|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|ud_bin_counter\(0));

-- Location: LCCOMB_X9_Y7_N6
\INST4|eq~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|eq~0_combout\ = (\sw[0]~input_o\ & ((\sw[1]~input_o\ $ (\INST3|ud_bin_counter\(1))) # (!\INST3|ud_bin_counter\(0)))) # (!\sw[0]~input_o\ & ((\INST3|ud_bin_counter\(0)) # (\sw[1]~input_o\ $ (\INST3|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \INST3|ud_bin_counter\(0),
	datad => \INST3|ud_bin_counter\(1),
	combout => \INST4|eq~0_combout\);

-- Location: LCCOMB_X10_Y7_N14
\MEALY0|current_stateY.Y0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|current_stateY.Y0~0_combout\ = (((!\INST4|eq~0_combout\ & \INST4|less~0_combout\)) # (!\MEALY0|Selector5~2_combout\)) # (!\pb[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[2]~input_o\,
	datab => \MEALY0|Selector5~2_combout\,
	datac => \INST4|eq~0_combout\,
	datad => \INST4|less~0_combout\,
	combout => \MEALY0|current_stateY.Y0~0_combout\);

-- Location: FF_X10_Y7_N15
\MEALY0|current_stateY.Y0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \MEALY0|current_stateY.Y0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEALY0|current_stateY.Y0~q\);

-- Location: LCCOMB_X10_Y6_N28
\MEALY0|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector2~1_combout\ = (!\INST5|current_state.done~q\ & (\INST5|current_state.start~q\ & ((\MEALY0|current_stateY.YMOVE~q\) # (\MEALY0|current_stateY.ERRORY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|current_stateY.YMOVE~q\,
	datab => \INST5|current_state.done~q\,
	datac => \INST5|current_state.start~q\,
	datad => \MEALY0|current_stateY.ERRORY~q\,
	combout => \MEALY0|Selector2~1_combout\);

-- Location: LCCOMB_X10_Y6_N20
\MEALY0|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector2~2_combout\ = (\MEALY0|Selector2~1_combout\) # ((!\MEALY0|current_stateY.Y0~q\ & (\MEALY0|Selector2~0_combout\ & \INST4|eq~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|current_stateY.Y0~q\,
	datab => \MEALY0|Selector2~0_combout\,
	datac => \INST4|eq~combout\,
	datad => \MEALY0|Selector2~1_combout\,
	combout => \MEALY0|Selector2~2_combout\);

-- Location: FF_X10_Y6_N21
\MEALY0|current_stateY.ERRORY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \MEALY0|Selector2~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEALY0|current_stateY.ERRORY~q\);

-- Location: CLKCTRL_G1
\MEALY0|current_stateY.ERRORY~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MEALY0|current_stateY.ERRORY~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MEALY0|current_stateY.ERRORY~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y7_N28
\MEALY0|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector1~0_combout\ = (!\INST4|eq~0_combout\ & (\INST4|less~0_combout\ & \MEALY0|current_stateY.YSTOP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST4|eq~0_combout\,
	datac => \INST4|less~0_combout\,
	datad => \MEALY0|current_stateY.YSTOP~q\,
	combout => \MEALY0|Selector1~0_combout\);

-- Location: LCCOMB_X10_Y7_N30
\MEALY0|EXTDY\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|EXTDY~combout\ = (GLOBAL(\MEALY0|current_stateY.ERRORY~clkctrl_outclk\) & (\MEALY0|EXTDY~combout\)) # (!GLOBAL(\MEALY0|current_stateY.ERRORY~clkctrl_outclk\) & ((\MEALY0|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEALY0|current_stateY.ERRORY~clkctrl_outclk\,
	datac => \MEALY0|EXTDY~combout\,
	datad => \MEALY0|Selector1~0_combout\,
	combout => \MEALY0|EXTDY~combout\);

-- Location: LCCOMB_X10_Y6_N8
\INST5|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector6~0_combout\ = (\INST5|current_state.done~q\ & (((\pb[1]~input_o\) # (!\MEALY0|EXTDX~combout\)) # (!\MEALY0|EXTDY~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|EXTDY~combout\,
	datab => \INST5|current_state.done~q\,
	datac => \pb[1]~input_o\,
	datad => \MEALY0|EXTDX~combout\,
	combout => \INST5|Selector6~0_combout\);

-- Location: LCCOMB_X10_Y6_N4
\INST5|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector6~1_combout\ = (\INST5|Selector6~0_combout\) # ((\INST5|current_state.retracted_hold~q\ & \INST5|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Selector6~0_combout\,
	datab => \INST5|current_state.retracted_hold~q\,
	datad => \INST5|Equal1~0_combout\,
	combout => \INST5|Selector6~1_combout\);

-- Location: LCCOMB_X10_Y6_N0
\INST5|next_state.done_149\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|next_state.done_149~combout\ = (GLOBAL(\INST5|Selector13~0clkctrl_outclk\) & (\INST5|next_state.done_149~combout\)) # (!GLOBAL(\INST5|Selector13~0clkctrl_outclk\) & ((\INST5|Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST5|next_state.done_149~combout\,
	datac => \INST5|Selector6~1_combout\,
	datad => \INST5|Selector13~0clkctrl_outclk\,
	combout => \INST5|next_state.done_149~combout\);

-- Location: FF_X10_Y6_N1
\INST5|current_state.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST5|next_state.done_149~combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|current_state.done~q\);

-- Location: LCCOMB_X9_Y6_N30
\MEALY0|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector2~0_combout\ = (!\INST5|current_state.done~q\ & \INST5|current_state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST5|current_state.done~q\,
	datad => \INST5|current_state.start~q\,
	combout => \MEALY0|Selector2~0_combout\);

-- Location: LCCOMB_X10_Y6_N16
\MEALY0|Selector12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector12~3_combout\ = (\pb[3]~input_o\ & ((\MEALY0|current_stateX.XSTOP~q\) # ((!\MEALY0|Selector2~0_combout\ & \MEALY0|current_stateX.XMOVE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|current_stateX.XSTOP~q\,
	datab => \MEALY0|Selector2~0_combout\,
	datac => \pb[3]~input_o\,
	datad => \MEALY0|current_stateX.XMOVE~q\,
	combout => \MEALY0|Selector12~3_combout\);

-- Location: LCCOMB_X6_Y6_N18
\INST2|less~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|less~2_combout\ = (\INST1|ud_bin_counter\(1) & (\sw[4]~input_o\ & (!\INST1|ud_bin_counter\(0) & \sw[5]~input_o\))) # (!\INST1|ud_bin_counter\(1) & ((\sw[5]~input_o\) # ((\sw[4]~input_o\ & !\INST1|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|ud_bin_counter\(1),
	datab => \sw[4]~input_o\,
	datac => \INST1|ud_bin_counter\(0),
	datad => \sw[5]~input_o\,
	combout => \INST2|less~2_combout\);

-- Location: LCCOMB_X6_Y6_N22
\INST2|less~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|less~1_combout\ = (\sw[7]~input_o\ & (((\sw[6]~input_o\ & !\INST1|ud_bin_counter\(2))) # (!\INST1|ud_bin_counter\(3)))) # (!\sw[7]~input_o\ & (!\INST1|ud_bin_counter\(3) & (\sw[6]~input_o\ & !\INST1|ud_bin_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \INST1|ud_bin_counter\(3),
	datac => \sw[6]~input_o\,
	datad => \INST1|ud_bin_counter\(2),
	combout => \INST2|less~1_combout\);

-- Location: LCCOMB_X7_Y6_N26
\MEALY0|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector12~0_combout\ = (\INST2|less~0_combout\ & (!\INST2|eq~0_combout\ & (!\INST2|less~2_combout\ & !\INST2|less~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|less~0_combout\,
	datab => \INST2|eq~0_combout\,
	datac => \INST2|less~2_combout\,
	datad => \INST2|less~1_combout\,
	combout => \MEALY0|Selector12~0_combout\);

-- Location: LCCOMB_X10_Y6_N14
\MEALY0|Selector12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector12~1_combout\ = (\MEALY0|Selector12~0_combout\ & ((\INST5|current_state.done~q\) # (!\INST5|current_state.start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEALY0|Selector12~0_combout\,
	datac => \INST5|current_state.start~q\,
	datad => \INST5|current_state.done~q\,
	combout => \MEALY0|Selector12~1_combout\);

-- Location: LCCOMB_X10_Y6_N22
\MEALY0|Selector12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector12~2_combout\ = (\MEALY0|current_stateX.X0~q\ & ((\MEALY0|Selector2~0_combout\) # ((!\MEALY0|current_stateX.ERRORX~q\)))) # (!\MEALY0|current_stateX.X0~q\ & (\INST2|eq~combout\ & ((\MEALY0|Selector2~0_combout\) # 
-- (!\MEALY0|current_stateX.ERRORX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|current_stateX.X0~q\,
	datab => \MEALY0|Selector2~0_combout\,
	datac => \INST2|eq~combout\,
	datad => \MEALY0|current_stateX.ERRORX~q\,
	combout => \MEALY0|Selector12~2_combout\);

-- Location: LCCOMB_X10_Y6_N26
\MEALY0|Selector12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector12~4_combout\ = (\MEALY0|Selector12~3_combout\) # (((\MEALY0|Selector12~1_combout\ & \MEALY0|current_stateX.XMOVE~q\)) # (!\MEALY0|Selector12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|Selector12~3_combout\,
	datab => \MEALY0|Selector12~1_combout\,
	datac => \MEALY0|current_stateX.XMOVE~q\,
	datad => \MEALY0|Selector12~2_combout\,
	combout => \MEALY0|Selector12~4_combout\);

-- Location: FF_X10_Y6_N27
\MEALY0|current_stateX.XSTOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \MEALY0|Selector12~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEALY0|current_stateX.XSTOP~q\);

-- Location: LCCOMB_X9_Y6_N12
\MEALY0|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector14~0_combout\ = (\INST2|eq~combout\ & (((!\MEALY0|Selector12~0_combout\ & \MEALY0|current_stateX.XMOVE~q\)) # (!\MEALY0|current_stateX.X0~q\))) # (!\INST2|eq~combout\ & (((!\MEALY0|Selector12~0_combout\ & 
-- \MEALY0|current_stateX.XMOVE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|eq~combout\,
	datab => \MEALY0|current_stateX.X0~q\,
	datac => \MEALY0|Selector12~0_combout\,
	datad => \MEALY0|current_stateX.XMOVE~q\,
	combout => \MEALY0|Selector14~0_combout\);

-- Location: LCCOMB_X9_Y6_N16
\MEALY0|Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Selector14~1_combout\ = (!\pb[3]~input_o\ & ((\MEALY0|current_stateX.XSTOP~q\) # ((!\MEALY0|Selector2~0_combout\ & \MEALY0|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|current_stateX.XSTOP~q\,
	datab => \MEALY0|Selector2~0_combout\,
	datac => \MEALY0|Selector14~0_combout\,
	datad => \pb[3]~input_o\,
	combout => \MEALY0|Selector14~1_combout\);

-- Location: FF_X9_Y6_N17
\MEALY0|current_stateX.XMOVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \MEALY0|Selector14~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEALY0|current_stateX.XMOVE~q\);

-- Location: LCCOMB_X6_Y6_N2
\MEALY0|Transition_Section~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Transition_Section~0_combout\ = (!\pb[3]~input_o\ & ((\INST2|eq~0_combout\) # (!\INST2|less~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|less~0_combout\,
	datac => \pb[3]~input_o\,
	datad => \INST2|eq~0_combout\,
	combout => \MEALY0|Transition_Section~0_combout\);

-- Location: LCCOMB_X6_Y6_N14
\MEALY0|clk_enX\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|clk_enX~combout\ = (\MEALY0|current_stateX.XMOVE~q\ & ((\MEALY0|Transition_Section~0_combout\))) # (!\MEALY0|current_stateX.XMOVE~q\ & (\MEALY0|clk_enX~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|current_stateX.XMOVE~q\,
	datac => \MEALY0|clk_enX~combout\,
	datad => \MEALY0|Transition_Section~0_combout\,
	combout => \MEALY0|clk_enX~combout\);

-- Location: LCCOMB_X6_Y6_N4
\INST2|grtr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|grtr~0_combout\ = (\INST2|less~1_combout\) # ((\INST2|less~0_combout\ & ((\INST2|less~2_combout\) # (!\INST2|eq~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|eq~0_combout\,
	datab => \INST2|less~1_combout\,
	datac => \INST2|less~2_combout\,
	datad => \INST2|less~0_combout\,
	combout => \INST2|grtr~0_combout\);

-- Location: LCCOMB_X6_Y6_N20
\MEALY0|Xcount~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Xcount~1_combout\ = (\MEALY0|current_stateX.XMOVE~q\ & (!\pb[3]~input_o\ & ((\INST2|eq~0_combout\) # (!\INST2|less~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|current_stateX.XMOVE~q\,
	datab => \pb[3]~input_o\,
	datac => \INST2|less~0_combout\,
	datad => \INST2|eq~0_combout\,
	combout => \MEALY0|Xcount~1_combout\);

-- Location: LCCOMB_X6_Y6_N0
\MEALY0|Xcount\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|Xcount~combout\ = (\MEALY0|Xcount~1_combout\ & (\INST2|grtr~0_combout\)) # (!\MEALY0|Xcount~1_combout\ & ((\MEALY0|Xcount~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST2|grtr~0_combout\,
	datac => \MEALY0|Xcount~combout\,
	datad => \MEALY0|Xcount~1_combout\,
	combout => \MEALY0|Xcount~combout\);

-- Location: LCCOMB_X6_Y6_N30
\INST1|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|process_0~0_combout\ = (\MEALY0|clk_enX~combout\ & \MEALY0|Xcount~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEALY0|clk_enX~combout\,
	datad => \MEALY0|Xcount~combout\,
	combout => \INST1|process_0~0_combout\);

-- Location: FF_X6_Y6_N11
\INST1|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST1|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \MEALY0|clk_enX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|ud_bin_counter\(2));

-- Location: LCCOMB_X7_Y6_N28
\XOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XOUT[2]~2_combout\ = (\pb[3]~input_o\ & ((\sw[6]~input_o\))) # (!\pb[3]~input_o\ & (\INST1|ud_bin_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|ud_bin_counter\(2),
	datac => \pb[3]~input_o\,
	datad => \sw[6]~input_o\,
	combout => \XOUT[2]~2_combout\);

-- Location: LCCOMB_X10_Y6_N18
\XOUT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XOUT[1]~1_combout\ = (\pb[3]~input_o\ & (\sw[5]~input_o\)) # (!\pb[3]~input_o\ & ((\INST1|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[5]~input_o\,
	datac => \INST1|ud_bin_counter\(1),
	datad => \pb[3]~input_o\,
	combout => \XOUT[1]~1_combout\);

-- Location: LCCOMB_X6_Y6_N24
\XOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XOUT[0]~0_combout\ = (\pb[3]~input_o\ & ((\sw[4]~input_o\))) # (!\pb[3]~input_o\ & (\INST1|ud_bin_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb[3]~input_o\,
	datac => \INST1|ud_bin_counter\(0),
	datad => \sw[4]~input_o\,
	combout => \XOUT[0]~0_combout\);

-- Location: LCCOMB_X10_Y8_N12
\XOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \XOUT[3]~3_combout\ = (\pb[3]~input_o\ & ((\sw[7]~input_o\))) # (!\pb[3]~input_o\ & (\INST1|ud_bin_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|ud_bin_counter\(3),
	datac => \pb[3]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \XOUT[3]~3_combout\);

-- Location: LCCOMB_X10_Y8_N0
\INST20|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST20|Mux5~0_combout\ = (\XOUT[1]~1_combout\ & ((\XOUT[0]~0_combout\ & ((\XOUT[3]~3_combout\))) # (!\XOUT[0]~0_combout\ & (\XOUT[2]~2_combout\)))) # (!\XOUT[1]~1_combout\ & (\XOUT[2]~2_combout\ & (\XOUT[0]~0_combout\ $ (\XOUT[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XOUT[2]~2_combout\,
	datab => \XOUT[1]~1_combout\,
	datac => \XOUT[0]~0_combout\,
	datad => \XOUT[3]~3_combout\,
	combout => \INST20|Mux5~0_combout\);

-- Location: LCCOMB_X9_Y6_N6
\MEALY0|ledY\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|ledY~combout\ = (GLOBAL(\MEALY0|current_stateY.ERRORY~clkctrl_outclk\) & (\MEALY0|Selector2~0_combout\)) # (!GLOBAL(\MEALY0|current_stateY.ERRORY~clkctrl_outclk\) & ((\MEALY0|ledY~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEALY0|current_stateY.ERRORY~clkctrl_outclk\,
	datac => \MEALY0|Selector2~0_combout\,
	datad => \MEALY0|ledY~combout\,
	combout => \MEALY0|ledY~combout\);

-- Location: LCCOMB_X9_Y6_N28
\MEALY0|ledX\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|ledX~combout\ = (GLOBAL(\MEALY0|current_stateX.ERRORX~clkctrl_outclk\) & (\MEALY0|Selector2~0_combout\)) # (!GLOBAL(\MEALY0|current_stateX.ERRORX~clkctrl_outclk\) & ((\MEALY0|ledX~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|current_stateX.ERRORX~clkctrl_outclk\,
	datac => \MEALY0|Selector2~0_combout\,
	datad => \MEALY0|ledX~combout\,
	combout => \MEALY0|ledX~combout\);

-- Location: LCCOMB_X9_Y6_N14
\INST35|next_state.error_off~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST35|next_state.error_off~0_combout\ = (!\INST35|current_state.error_off~q\ & ((\MEALY0|ledY~combout\) # (\MEALY0|ledX~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|ledY~combout\,
	datac => \INST35|current_state.error_off~q\,
	datad => \MEALY0|ledX~combout\,
	combout => \INST35|next_state.error_off~0_combout\);

-- Location: FF_X9_Y6_N15
\INST35|current_state.error_off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST35|next_state.error_off~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST35|current_state.error_off~q\);

-- Location: LCCOMB_X9_Y7_N4
\YOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YOUT[0]~0_combout\ = (\pb[2]~input_o\ & ((\sw[0]~input_o\))) # (!\pb[2]~input_o\ & (\INST3|ud_bin_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST3|ud_bin_counter\(0),
	datac => \pb[2]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \YOUT[0]~0_combout\);

-- Location: LCCOMB_X10_Y7_N10
\YOUT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YOUT[1]~1_combout\ = (\pb[2]~input_o\ & (\sw[1]~input_o\)) # (!\pb[2]~input_o\ & ((\INST3|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[2]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \INST3|ud_bin_counter\(1),
	combout => \YOUT[1]~1_combout\);

-- Location: LCCOMB_X9_Y7_N24
\YOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YOUT[2]~2_combout\ = (\pb[2]~input_o\ & ((\sw[2]~input_o\))) # (!\pb[2]~input_o\ & (\INST3|ud_bin_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(2),
	datac => \sw[2]~input_o\,
	datad => \pb[2]~input_o\,
	combout => \YOUT[2]~2_combout\);

-- Location: LCCOMB_X11_Y7_N8
\YOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \YOUT[3]~3_combout\ = (\pb[2]~input_o\ & ((\sw[3]~input_o\))) # (!\pb[2]~input_o\ & (\INST3|ud_bin_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[2]~input_o\,
	datac => \INST3|ud_bin_counter\(3),
	datad => \sw[3]~input_o\,
	combout => \YOUT[3]~3_combout\);

-- Location: LCCOMB_X11_Y10_N2
\INST30|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST30|Mux5~0_combout\ = (\YOUT[1]~1_combout\ & ((\YOUT[0]~0_combout\ & ((\YOUT[3]~3_combout\))) # (!\YOUT[0]~0_combout\ & (\YOUT[2]~2_combout\)))) # (!\YOUT[1]~1_combout\ & (\YOUT[2]~2_combout\ & (\YOUT[0]~0_combout\ $ (\YOUT[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YOUT[0]~0_combout\,
	datab => \YOUT[1]~1_combout\,
	datac => \YOUT[2]~2_combout\,
	datad => \YOUT[3]~3_combout\,
	combout => \INST30|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y10_N8
\INST40|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST40|DOUT_TEMP[1]~0_combout\ = (!\INST35|current_state.error_off~q\ & ((bin_counter(10) & (!\INST20|Mux5~0_combout\)) # (!bin_counter(10) & ((!\INST30|Mux5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST20|Mux5~0_combout\,
	datab => \INST35|current_state.error_off~q\,
	datac => bin_counter(10),
	datad => \INST30|Mux5~0_combout\,
	combout => \INST40|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X11_Y10_N10
\INST30|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST30|Mux1~0_combout\ = (\YOUT[1]~1_combout\ & (!\YOUT[3]~3_combout\ & ((\YOUT[0]~0_combout\) # (!\YOUT[2]~2_combout\)))) # (!\YOUT[1]~1_combout\ & ((\YOUT[2]~2_combout\ & ((\YOUT[3]~3_combout\))) # (!\YOUT[2]~2_combout\ & (\YOUT[0]~0_combout\ & 
-- !\YOUT[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YOUT[0]~0_combout\,
	datab => \YOUT[1]~1_combout\,
	datac => \YOUT[2]~2_combout\,
	datad => \YOUT[3]~3_combout\,
	combout => \INST30|Mux1~0_combout\);

-- Location: LCCOMB_X10_Y8_N26
\INST20|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST20|Mux1~0_combout\ = (\XOUT[2]~2_combout\ & ((\XOUT[1]~1_combout\ & (\XOUT[0]~0_combout\ & !\XOUT[3]~3_combout\)) # (!\XOUT[1]~1_combout\ & ((\XOUT[3]~3_combout\))))) # (!\XOUT[2]~2_combout\ & (!\XOUT[3]~3_combout\ & ((\XOUT[1]~1_combout\) # 
-- (\XOUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XOUT[2]~2_combout\,
	datab => \XOUT[1]~1_combout\,
	datac => \XOUT[0]~0_combout\,
	datad => \XOUT[3]~3_combout\,
	combout => \INST20|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y10_N16
\INST40|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST40|DOUT_TEMP[5]~1_combout\ = (!\INST35|current_state.error_off~q\ & ((bin_counter(10) & ((!\INST20|Mux1~0_combout\))) # (!bin_counter(10) & (!\INST30|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST30|Mux1~0_combout\,
	datab => \INST35|current_state.error_off~q\,
	datac => bin_counter(10),
	datad => \INST20|Mux1~0_combout\,
	combout => \INST40|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X10_Y8_N16
\INST20|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST20|Mux0~0_combout\ = (\XOUT[3]~3_combout\) # ((\XOUT[2]~2_combout\ & ((!\XOUT[0]~0_combout\) # (!\XOUT[1]~1_combout\))) # (!\XOUT[2]~2_combout\ & (\XOUT[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XOUT[2]~2_combout\,
	datab => \XOUT[1]~1_combout\,
	datac => \XOUT[0]~0_combout\,
	datad => \XOUT[3]~3_combout\,
	combout => \INST20|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y10_N6
\INST30|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST30|Mux0~0_combout\ = (\YOUT[3]~3_combout\) # ((\YOUT[1]~1_combout\ & ((!\YOUT[2]~2_combout\) # (!\YOUT[0]~0_combout\))) # (!\YOUT[1]~1_combout\ & ((\YOUT[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YOUT[0]~0_combout\,
	datab => \YOUT[1]~1_combout\,
	datac => \YOUT[2]~2_combout\,
	datad => \YOUT[3]~3_combout\,
	combout => \INST30|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y10_N4
\INST40|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST40|DOUT_TEMP[6]~2_combout\ = (!\INST35|current_state.error_off~q\ & ((bin_counter(10) & (\INST20|Mux0~0_combout\)) # (!bin_counter(10) & ((\INST30|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST20|Mux0~0_combout\,
	datab => \INST35|current_state.error_off~q\,
	datac => bin_counter(10),
	datad => \INST30|Mux0~0_combout\,
	combout => \INST40|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X10_Y6_N2
\MEALY0|ERRORled\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEALY0|ERRORled~combout\ = (\MEALY0|ledX~combout\) # (\MEALY0|ledY~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEALY0|ledX~combout\,
	datad => \MEALY0|ledY~combout\,
	combout => \MEALY0|ERRORled~combout\);

-- Location: IOIBUF_X9_Y0_N1
\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

-- Location: LCCOMB_X9_Y5_N14
\INST7|Decoder_Section~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|Decoder_Section~0_combout\ = (\INST5|current_state.extended~q\ & !\pb[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST5|current_state.extended~q\,
	datad => \pb[0]~input_o\,
	combout => \INST7|Decoder_Section~0_combout\);

-- Location: FF_X9_Y5_N15
\INST7|current_state.light_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST7|Decoder_Section~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|current_state.light_on~q\);

-- Location: LCCOMB_X9_Y5_N28
\INST7|led\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|led~combout\ = (\INST7|current_state.light_on~q\ & ((\INST7|Decoder_Section~0_combout\) # (\INST7|led~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|current_state.light_on~q\,
	datac => \INST7|Decoder_Section~0_combout\,
	datad => \INST7|led~combout\,
	combout => \INST7|led~combout\);

-- Location: LCCOMB_X10_Y8_N22
\INST20|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST20|Mux6~0_combout\ = (\XOUT[2]~2_combout\ & (!\XOUT[1]~1_combout\ & ((\XOUT[3]~3_combout\) # (!\XOUT[0]~0_combout\)))) # (!\XOUT[2]~2_combout\ & (\XOUT[0]~0_combout\ & (\XOUT[1]~1_combout\ $ (!\XOUT[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XOUT[2]~2_combout\,
	datab => \XOUT[1]~1_combout\,
	datac => \XOUT[0]~0_combout\,
	datad => \XOUT[3]~3_combout\,
	combout => \INST20|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y10_N28
\INST30|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST30|Mux6~0_combout\ = (\YOUT[1]~1_combout\ & (\YOUT[0]~0_combout\ & (!\YOUT[2]~2_combout\ & \YOUT[3]~3_combout\))) # (!\YOUT[1]~1_combout\ & (\YOUT[2]~2_combout\ $ (((\YOUT[0]~0_combout\ & !\YOUT[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YOUT[0]~0_combout\,
	datab => \YOUT[1]~1_combout\,
	datac => \YOUT[2]~2_combout\,
	datad => \YOUT[3]~3_combout\,
	combout => \INST30|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y10_N14
\INST40|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST40|DOUT[0]~0_combout\ = (\INST35|current_state.error_off~q\) # ((bin_counter(10) & (\INST20|Mux6~0_combout\)) # (!bin_counter(10) & ((\INST30|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST20|Mux6~0_combout\,
	datab => \INST35|current_state.error_off~q\,
	datac => bin_counter(10),
	datad => \INST30|Mux6~0_combout\,
	combout => \INST40|DOUT[0]~0_combout\);

-- Location: LCCOMB_X10_Y8_N8
\INST20|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST20|Mux4~0_combout\ = (\XOUT[2]~2_combout\ & (\XOUT[3]~3_combout\ & ((\XOUT[1]~1_combout\) # (!\XOUT[0]~0_combout\)))) # (!\XOUT[2]~2_combout\ & (\XOUT[1]~1_combout\ & (!\XOUT[0]~0_combout\ & !\XOUT[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XOUT[2]~2_combout\,
	datab => \XOUT[1]~1_combout\,
	datac => \XOUT[0]~0_combout\,
	datad => \XOUT[3]~3_combout\,
	combout => \INST20|Mux4~0_combout\);

-- Location: LCCOMB_X11_Y10_N24
\INST30|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST30|Mux4~0_combout\ = (\YOUT[2]~2_combout\ & (\YOUT[3]~3_combout\ & ((\YOUT[1]~1_combout\) # (!\YOUT[0]~0_combout\)))) # (!\YOUT[2]~2_combout\ & (!\YOUT[0]~0_combout\ & (\YOUT[1]~1_combout\ & !\YOUT[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YOUT[0]~0_combout\,
	datab => \YOUT[1]~1_combout\,
	datac => \YOUT[2]~2_combout\,
	datad => \YOUT[3]~3_combout\,
	combout => \INST30|Mux4~0_combout\);

-- Location: LCCOMB_X11_Y10_N22
\INST40|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST40|DOUT[2]~2_combout\ = (\INST35|current_state.error_off~q\) # ((bin_counter(10) & (\INST20|Mux4~0_combout\)) # (!bin_counter(10) & ((\INST30|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST20|Mux4~0_combout\,
	datab => \INST35|current_state.error_off~q\,
	datac => bin_counter(10),
	datad => \INST30|Mux4~0_combout\,
	combout => \INST40|DOUT[2]~2_combout\);

-- Location: LCCOMB_X10_Y8_N18
\INST20|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST20|Mux3~0_combout\ = (\XOUT[1]~1_combout\ & ((\XOUT[2]~2_combout\ & (\XOUT[0]~0_combout\)) # (!\XOUT[2]~2_combout\ & (!\XOUT[0]~0_combout\ & \XOUT[3]~3_combout\)))) # (!\XOUT[1]~1_combout\ & (!\XOUT[3]~3_combout\ & (\XOUT[2]~2_combout\ $ 
-- (\XOUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XOUT[2]~2_combout\,
	datab => \XOUT[1]~1_combout\,
	datac => \XOUT[0]~0_combout\,
	datad => \XOUT[3]~3_combout\,
	combout => \INST20|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y10_N20
\INST30|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST30|Mux3~0_combout\ = (\YOUT[1]~1_combout\ & ((\YOUT[0]~0_combout\ & (\YOUT[2]~2_combout\)) # (!\YOUT[0]~0_combout\ & (!\YOUT[2]~2_combout\ & \YOUT[3]~3_combout\)))) # (!\YOUT[1]~1_combout\ & (!\YOUT[3]~3_combout\ & (\YOUT[0]~0_combout\ $ 
-- (\YOUT[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YOUT[0]~0_combout\,
	datab => \YOUT[1]~1_combout\,
	datac => \YOUT[2]~2_combout\,
	datad => \YOUT[3]~3_combout\,
	combout => \INST30|Mux3~0_combout\);

-- Location: LCCOMB_X10_Y8_N20
\INST40|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST40|DOUT[3]~3_combout\ = (\INST35|current_state.error_off~q\) # ((bin_counter(10) & (\INST20|Mux3~0_combout\)) # (!bin_counter(10) & ((\INST30|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST35|current_state.error_off~q\,
	datab => \INST20|Mux3~0_combout\,
	datac => bin_counter(10),
	datad => \INST30|Mux3~0_combout\,
	combout => \INST40|DOUT[3]~3_combout\);

-- Location: LCCOMB_X10_Y8_N6
\INST20|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST20|Mux2~0_combout\ = (\XOUT[1]~1_combout\ & (((\XOUT[0]~0_combout\ & !\XOUT[3]~3_combout\)))) # (!\XOUT[1]~1_combout\ & ((\XOUT[2]~2_combout\ & ((!\XOUT[3]~3_combout\))) # (!\XOUT[2]~2_combout\ & (\XOUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XOUT[2]~2_combout\,
	datab => \XOUT[1]~1_combout\,
	datac => \XOUT[0]~0_combout\,
	datad => \XOUT[3]~3_combout\,
	combout => \INST20|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y10_N18
\INST30|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST30|Mux2~0_combout\ = (\YOUT[1]~1_combout\ & (\YOUT[0]~0_combout\ & ((!\YOUT[3]~3_combout\)))) # (!\YOUT[1]~1_combout\ & ((\YOUT[2]~2_combout\ & ((!\YOUT[3]~3_combout\))) # (!\YOUT[2]~2_combout\ & (\YOUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \YOUT[0]~0_combout\,
	datab => \YOUT[1]~1_combout\,
	datac => \YOUT[2]~2_combout\,
	datad => \YOUT[3]~3_combout\,
	combout => \INST30|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y10_N12
\INST40|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST40|DOUT[4]~4_combout\ = (\INST35|current_state.error_off~q\) # ((bin_counter(10) & (\INST20|Mux2~0_combout\)) # (!bin_counter(10) & ((\INST30|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST20|Mux2~0_combout\,
	datab => \INST35|current_state.error_off~q\,
	datac => bin_counter(10),
	datad => \INST30|Mux2~0_combout\,
	combout => \INST40|DOUT[4]~4_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


