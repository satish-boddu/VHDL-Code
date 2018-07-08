
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
   clkin_50		: in	std_logic;
	rst_n			: in	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds			: out std_logic_vector(7 downto 0);	-- for displaying the switch content
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
	);
END LogicalStep_Lab4_top;

----------------------------------------------------------------------------------------------------

ARCHITECTURE SimpleCircuit OF LogicalStep_Lab4_top IS

----------------------------------------------------------------------------------------------------
											--                 SIGNALS


												CONSTANT	SIM							:  boolean := FALSE; 	-- set to TRUE for simulation runs otherwise keep at 0.
												CONSTANT CLK_DIV_SIZE				: 	INTEGER := 26;    -- size of vectors for the counters

												SIGNAL 	Main_CLK						:  STD_LOGIC; 			-- main clock to drive sequencing of State Machine

												SIGNAL 	bin_counter					:  UNSIGNED(CLK_DIV_SIZE-1 downto 0); -- := to_unsigned(0,CLK_DIV_SIZE); -- reset binary counter to zero
												
												
												signal EXT_OUT		: std_logic;
												signal EXT_EN		: std_logic;
												
												signal shift_enable  : std_logic;
												signal shift_dirout  : std_logic;
												signal ext_light		  : std_logic_vector(3 downto 0);
												signal Grapple_en   : std_logic;
												
												signal seg7_A		: std_logic_vector(6 downto 0);
												signal seg7_B		: std_logic_vector(6 downto 0);
												signal Digit1		: std_logic_vector(6 downto 0);
												signal Digit2		: std_logic_vector(6 downto 0);
												
												signal Extend		: std_logic;
												signal Grapple		: std_logic;
												signal G_led		: std_logic;
												signal button		: std_logic;
												
												signal XTAR			: std_logic_vector(3 downto 0);
												signal Xcurr		: std_logic_vector(3 downto 0) := "0000";
												signal Xdrive		: std_logic;
												signal XOUT			: std_logic_vector(3 downto 0);
												signal Xup1_down0	: std_logic;
												signal Xgrtr		: std_logic;
												signal Xeq			: std_logic;
												signal Xless		: std_logic;
												signal on_countX	: std_logic;
												signal errorLEDx  : std_logic;
												
												signal YTAR			: std_logic_vector(3 downto 0);
												signal Ycurr		: std_logic_vector(3 downto 0) := "0000";
												signal YOUT			: std_logic_vector(3 downto 0);
												signal Ydrive		: std_logic;
												signal Yup1_down0	: std_logic;
												signal Ygrtr		: std_logic;
												signal Yeq			: std_logic;
												signal Yless		: std_logic;
												signal on_countY	: std_logic;
												signal errorLEDy  : std_logic;
												
												signal ERR_SIG		: std_logic;
												
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------


											--			COMPONENTS USED 
											--
											-- COMPONENT 1 (SevenSegment)
												
											component SevenSegment port (
												hex   		:  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
												sevenseg 	:  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
											); 
											end component;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

											-- COMPONENT 2 (7-Bit Digit Mux)

											component segment7_mux port (
														 clk        : in  std_logic := '0';
														 DIN2 		: in  std_logic_vector(6 downto 0);	
														 DIN1 		: in  std_logic_vector(6 downto 0);
														 DOUT			: out	std_logic_vector(6 downto 0);
														 DIG2			: out	std_logic;
														 DIG1			: out	std_logic
													  );
											end component segment7_mux;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

											-- COMPONENT 3 (Bidirectional Up Down Shift Counter)

											component Bin_Counter4bit port (
												Main_CLK					: in	std_logic  := '0';
												rst_n						: in	std_logic  := '0';
												enable					: in	std_logic  := '0';
												up1_down0				: in	std_logic  := '0';
												counter_bits			: out std_logic_vector(3 downto 0)
											);

											End component Bin_Counter4bit;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

											-- COMPONENT 4 (Extender Moore State Machine)

											component Moore_SM port (
												clk_input, rst_n, exten, button					: IN std_logic;
												leds 														: IN std_logic_vector(3 downto 0);
												shift_en, shift_dir, exten_out, grap_en		: OUT std_logic
											 );
											End component Moore_SM;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

											-- COMPONENT 5 (Grappler Moore State Machine)

											component Moore_SM2 Port (
											 clk_input, rst_n, button, enable : IN std_logic;
											 led										 : OUT std_logic
											 );
											END component Moore_SM2;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

											-- COMPONENT 7 (Mealy State Machine)

											component Mealy_SM port (
												clk_input,XMOTION, YMOTION, EX_OUT,XEQ,XGT,XLT,YEQ,YGT,YLT			: IN std_logic;
												rst_n 																					: IN std_logic;
												clk_enX,clk_enY, Xcount,Ycount,ERRORled,EXTD_EN							: OUT std_logic
											 );
											End component Mealy_SM;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

											-- COMPONENT 8 (Bidirectional Left Right Shift Register)

											component Bidir_shift_reg PORT
												(
												CLK					: in	std_logic  := '0';
												RESET_N				: in	std_logic  := '0';
												CLK_EN				: in	std_logic  := '0';
												LEFT0_RIGHT1		: in	std_logic  := '0';
												REG_BITS				: out std_logic_vector(3 downto 0)
												);
											end component Bidir_shift_reg;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

											-- COMPONENT 9 (4-Bit Comparator)

											component Compx4 port (

												a0		  : in std_logic;
												a1		  : in std_logic;
												a2		  : in std_logic;
												a3		  : in std_logic;
												b0		  : in std_logic;
												b1		  : in std_logic;
												b2		  : in std_logic;
												b3		  : in std_logic;
												grtr    : out std_logic;
												eq      : out std_logic;
												less    : out std_logic

											);

											end component Compx4;
											 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

											-- COMPONENT 10 (System Error Digit Flash)

											component ErrorFlash port (
														 clk_input 	: in 	std_logic;
														 rst_n		: in 	std_logic;
														 INPUT1 	   : in  std_logic_vector(6 downto 0);	--when button 3 pressed
														 INPUT2		: in  std_logic_vector(6 downto 0);
														 Selector	: in 	std_logic;
														 OUTPUT		: out std_logic_vector(6 downto 0)
													  );
											end component ErrorFlash;


------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------------------------------------

BEGIN



-- CLOCKING GENERATOR WHICH DIVIDES THE INPUT CLOCK DOWN TO A LOWER FREQUENCY

BinCLK: PROCESS(clkin_50, rst_n) is
   BEGIN
		IF (rising_edge(clkin_50)) THEN -- binary counter increments on rising clock edge
         bin_counter <= bin_counter + 1;
      END IF;
   END PROCESS;

Clock_Source:
				Main_Clk <= 
				clkin_50 when sim = TRUE else				-- for simulations only
				std_logic(bin_counter(23));								-- for real FPGA operation
					

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
																	-- IMPLEMENTATION AND INSTANCES --

	XDRIVE <= pb(3);
	YDRIVE <= pb(2);
	button <= pb(0);
	
	
	-- Mealy State Machine --
	MEALY0: Mealy_SM port map (Main_CLK,XDRIVE,YDRIVE,EXT_OUT,Xeq,Xgrtr,Xless,Yeq,Ygrtr,Yless,rst_n,on_countX,on_countY,Xup1_down0,Yup1_down0,ERR_SIG,EXT_EN);
	
	
	-- UP/DOWN counting and Comparing of X-Coordinate -- For Motion of X
	INST1: Bin_Counter4bit port map (Main_CLK,rst_n,on_countX,Xup1_down0,Xcurr);
	INST2: Compx4 port map (Xcurr(0),Xcurr(1),Xcurr(2),Xcurr(3),sw(4),sw(5),sw(6),sw(7),Xgrtr,Xeq,Xless); --compares target X coordinate with current;
	
	
	-- UP/DOWN counting and Comparing of Y-Coordinate -- For Motion of Y
	INST3: Bin_Counter4bit port map (Main_CLK,rst_n,on_countY,Yup1_down0,Ycurr);
	INST4: Compx4 port map (Ycurr(0),Ycurr(1),Ycurr(2),Ycurr(3),sw(0),sw(1),sw(2),sw(3),Ygrtr,Yeq,Yless); --compares target X coordinate with current;
	
	
	-- Extender Moore State Machine & Motion of Extender with Bit Shifter--
	INST5: Moore_SM port map(Main_CLK,rst_n,EXT_EN,pb(1),ext_light,shift_enable,shift_dirout,EXT_OUT,Grapple_en);
	INST6: Bidir_shift_reg port map(Main_CLK,rst_n,shift_enable,shift_dirout,ext_light);
	
	
	-- Grappler Moore State Machine --
	INST7: Moore_SM2 port map (Main_CLK, rst_n, button, Grapple_en, G_led);

	
	-- Extender Arm Output Lights --
	leds(7) <= ext_light(3);
	leds(6) <= ext_light(2);
	leds(5) <= ext_light(1);
	leds(4) <= ext_light(0);
	
	-- Grappler Output Light --
	leds(3) <= G_led;
	
	
	-- Switch Inputs for Target --
	YTAR <= sw(3 downto 0); 
	XTAR <= sw(7 downto 4);
	


	with XDRIVE select
		XOUT <= Xcurr when '0',
				  XTAR  when '1';
	with YDRIVE select
		YOUT <= Ycurr when '0',
				  YTAR  when '1';
	
	-- 7 Segment Display Decoder -- 
	INST20: SevenSegment port map(XOUT, seg7_A); 
	INST30: SevenSegment port map(YOUT, seg7_B);
	
	
	-- SYSTEM ERROR Digit Display Flash Sate Machine --
	INST35: ErrorFlash port map (Main_CLK, rst_n, "0000000", seg7_A, ERR_SIG, Digit1);
	INST36: ErrorFlash port map (Main_CLK, rst_n, "0000000", seg7_B, ERR_SIG, Digit2);
	leds(0) <= ERR_SIG;

	-- Display the Current Or Target Digits on the 7-Bit Display --
	INST40: segment7_mux port map(clkin_50, Digit1, Digit2, seg7_data, seg7_char1, seg7_char2);

---------------------------------------------------------------------------------------------------

END SimpleCircuit;



-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 






































	
--	INST100: pb_mux port map(XDRIVE,Xcurr,XTAR,XOUT);
--	INST101: pb_mux port map(YDRIVE,Ycurr,YTAR,YOUT);

------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
--											-- COMPONENT 11 (Push Button Mux)
--
--											component pb_mux port (
--														 pb			: in std_logic; --button 3 input
--														 INPUT1 	   : in  std_logic_vector(3 downto 0);	--when button 3 pressed
--														 INPUT2		: in  std_logic_vector(3 downto 0); 
--														 OUTPUT		: out std_logic_vector(3 downto 0)
--													  );
--											end component pb_mux;
