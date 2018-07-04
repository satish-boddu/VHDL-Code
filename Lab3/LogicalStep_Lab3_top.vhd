library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity LogicalStep_Lab3_top is port (
   clkin_50		: in	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds			: out std_logic_vector(7 downto 0);	-- for displaying the switch content
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
	
); 
end LogicalStep_Lab3_top;

architecture Energy_Monitor of LogicalStep_Lab3_top is

----------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------
--			COMPONENTS USED 
--
-- COMPONENT 1 (SevenSegment)
   
	component SevenSegment port (
      hex   		:  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
      sevenseg 	:  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
   ); 
   end component;

----------------------------------------------------------------------------------------
	
-- COMPONENT 2 (1-Bit Comparator)
   
	component Compx1 port (
      A	   :  in  std_logic_vector;    						-- The 1 bit data to be compared
      B	   :  in  std_logic_vector;							-- The 1 bit data to be compared

      AGTB 	:  out std_logic_vector;							-- 1-bit output showing if A > B
	   AEQB 	:  out std_logic_vector;							-- 1-bit output showing if A = B
	   ALTB 	:  out std_logic_vector								-- 1-bit output showing if A < B
   ); 
   end component;
	
----------------------------------------------------------------------------------------
	
-- COMPONENT 3 (4-Bit Comparator)
   
	component Compx4 port (
     A3GTB3	   :  in  std_logic_vector;   
     A3EQB3	   :  in  std_logic_vector;
	  A3LTB3	   :  in  std_logic_vector;
	
	  A2GTB2	   :  in  std_logic_vector;   
     A2EQB2	   :  in  std_logic_vector;
	  A2LTB2	   :  in  std_logic_vector;
	
	  A1GTB1	   :  in  std_logic_vector;   
     A1EQB1	   :  in  std_logic_vector;
	  A1LTB1	   :  in  std_logic_vector;
	
	  A0GTB0	   :  in  std_logic_vector;   
     A0EQB0	   :  in  std_logic_vector;
	  A0LTB0	   :  in  std_logic_vector;

     AGTB 		:  out std_logic_vector;                     -- 1-bit output showing if A > B
	  AEQB 		:  out std_logic_vector;                     -- 1-bit output showing if A = B
	  ALTB 		:  out std_logic_vector								-- 1-bit output showing if A < B
   ); 
   end component;
	
----------------------------------------------------------------------------------------

-- COMPONENT 4 (7-Bit Digit Mux)

   component segment7_mux port (
		clk		: in std_logic := '0';
		DIN2		: in std_logic_vector(6 downto 0);          -- outputs to the Seven Segment LED board
		DIN1 		: in std_logic_vector(6 downto 0);
		DOUT		: out std_logic_vector(6 downto 0);
		DIG2		: out std_logic;
		DIG1		: out std_logic
	);
	end component; 
	
----------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------
--       SIGNALS USED	
--
signal A			: std_logic_vector (3 downto 0);
signal B			: std_logic_vector (3 downto 0);
signal seg7_A		: std_logic_vector(6 downto 0);
signal seg7_B		: std_logic_vector(6 downto 0);

signal A0		: std_logic_vector (0 downto 0);
signal B0		: std_logic_vector (0 downto 0);
signal A1		: std_logic_vector (0 downto 0);
signal B1		: std_logic_vector (0 downto 0);
signal A2		: std_logic_vector (0 downto 0);
signal B2		: std_logic_vector (0 downto 0);
signal A3		: std_logic_vector (0 downto 0);
signal B3		: std_logic_vector (0 downto 0);

signal A3GTB3	   : std_logic_vector (0 downto 0);   
signal A3EQB3	   : std_logic_vector (0 downto 0);
signal A3LTB3	   : std_logic_vector (0 downto 0);
	
signal A2GTB2	   : std_logic_vector (0 downto 0);   
signal A2EQB2	   : std_logic_vector (0 downto 0);
signal A2LTB2	   : std_logic_vector (0 downto 0);
	
signal A1GTB1	   : std_logic_vector (0 downto 0);   
signal A1EQB1	   : std_logic_vector (0 downto 0);
signal A1LTB1	   : std_logic_vector (0 downto 0);
	
signal A0GTB0	   : std_logic_vector (0 downto 0);   
signal A0EQB0	   : std_logic_vector (0 downto 0);
signal A0LTB0	   : std_logic_vector (0 downto 0);


signal AGTB		: std_logic_vector (0 downto 0);
signal AEQB		: std_logic_vector (0 downto 0);
signal ALTB		: std_logic_vector (0 downto 0);

signal Fdoor   : std_logic_vector (0 downto 0);
signal window   : std_logic_vector (0 downto 0);
signal Bdoor   : std_logic_vector (0 downto 0);
	
----------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------

begin

	A <= sw(7 downto 4);      -- DESIRED TEMPERATURE => A
	B <= sw(3 downto 0);      -- CURRENT TEMPERATURE => B
	
	Fdoor <= pb(2 downto 2);  -- Front Door
	window <= pb(1 downto 1); -- Windows 
	Bdoor <= pb(0 downto 0);  -- Back Door
	
	A0 <= sw(4 downto 4);
	A1 <= sw(5 downto 5);
	A2 <= sw(6 downto 6);
	A3 <= sw(7 downto 7);
	
	B0 <= sw(0 downto 0);
	B1 <= sw(1 downto 1);
	B2 <= sw(2 downto 2);
	B3 <= sw(3 downto 3);
	
	leds (0 downto 0) <= AGTB AND Fdoor AND Bdoor AND window;
	leds (1 downto 1) <= AEQB;
	leds (2 downto 2) <= ALTB AND Fdoor AND Bdoor AND window;
	leds (3 downto 3) <= (AGTB OR ALTB) AND Fdoor AND Bdoor AND window;
	
	leds (4 downto 4) <= NOT(Bdoor);
	leds (5 downto 5) <= NOT(window);
	leds (6 downto 6) <= NOT(Fdoor);
	
	INST1: SevenSegment port map(A, seg7_A);
	INST2: SevenSegment port map(B, seg7_B);
	
	INST3: segment7_mux port map(clkin_50, seg7_A, seg7_B, seg7_data, seg7_char1, seg7_char2);
	
	INST4: Compx1 port map(A0, B0, A0GTB0, A0EQB0, A0LTB0);
	INST5: Compx1 port map(A1, B1, A1GTB1, A1EQB1, A1LTB1);
	INST6: Compx1 port map(A2, B2, A2GTB2, A2EQB2, A2LTB2);
	INST7: Compx1 port map(A3, B3, A3GTB3, A3EQB3, A3LTB3);
	
	INST8: Compx4 port map(A3GTB3, A3EQB3, A3LTB3, A2GTB2, A2EQB2, A2LTB2, A1GTB1, A1EQB1, A1LTB1, A0GTB0, A0EQB0, A0LTB0, AGTB, AEQB, ALTB);

 
end Energy_Monitor;