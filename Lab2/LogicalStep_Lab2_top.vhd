library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity LogicalStep_Lab2_top is port (
   clkin_50			: in	std_logic;
	pb					: in	std_logic_vector(3 downto 0); -- push buttons
 	sw   				: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds				: out std_logic_vector(7 downto 0); -- for displaying the switch content
   seg7_data 		: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  	: out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  	: out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab2_top;

architecture SimpleCircuit of LogicalStep_Lab2_top is
--
-- Components Used ---
------------------------------------------------------------------- 
  component SevenSegment port (
   hex   		:  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg 	:  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
   ); 
   end component;
	
	component segment7_mux port (
		clk		: in std_logic := '0';
		DIN2		: in std_logic_vector(6 downto 0);          -- outputs to the Seven Segment LED board
		DIN1 		: in std_logic_vector(6 downto 0);
		DOUT		: out std_logic_vector(6 downto 0);
		DIG2		: out std_logic;
		DIG1		: out std_logic
	);
	end component;
	
	
-- Create any signals, or temporary variables to be used
--
--  std_logic_vector is a signal which can be used for logic operations such as OR, AND, NOT, XOR
--
-- Pre Defined Vectors (In Lab)
	signal seg7_A		: std_logic_vector(6 downto 0);
	signal seg7_B		: std_logic_vector(6 downto 0);
	signal hex_A		: std_logic_vector(3 downto 0);
	signal hex_B		: std_logic_vector(3 downto 0);
	signal add_inpA	: std_logic_vector(7 downto 0);
	signal add_inpB	: std_logic_vector(7 downto 0);
	
-- User Defined Vectors (Post Lab)
	signal sum			: std_logic_vector(7 downto 0);
	signal concate		: std_logic_vector(7 downto 0);
	signal arimhex_A	: std_logic_vector(3 downto 0);
	signal arimhex_B	: std_logic_vector(3 downto 0);
	signal arim_output 		:std_logic_vector(7 downto 0);
	signal AND_output 		: std_logic_vector(3 downto 0);
	signal OR_output 			: std_logic_vector(3 downto 0);
	signal XOR_output 		: std_logic_vector(3 downto 0);
	signal conclogic_output : std_logic_vector(7 downto 0);
	signal led_output 		: std_logic_vector(7 downto 0);
	signal sevensegerror    : std_logic_vector(7 downto 0);

	
-- Here the circuit begins

begin

	hex_A <= sw(3 downto 0);
	hex_B <= sw(7 downto 4);
	
	concate <= hex_A & hex_B;
	add_inpA <= "0000" & hex_A;
	add_inpB <= "0000" & hex_B;
	sum <= std_logic_vector(unsigned(add_inpA)+unsigned(add_inpB));
	

-- ****************************************************************
--LOGIC PART
	
	with pb(0) select
	AND_output <= hex_A AND hex_B when '0',
					  "0000" 			when '1';		  

	with pb(1) select
	OR_output <= hex_A OR hex_B when '0',
					  "0000" 			when '1';	
					  
	with pb(2) select
	XOR_output <= hex_A XOR hex_B when '0',
					  "0000" 			when '1';


	conclogic_output <= "0000" & AND_output when pb(0) = '0' else
							  "0000" & OR_output when pb(1) = '0' else
							  "0000" & XOR_output when pb(2) = '0' else
							  "00000000";

						
	with pb(3) select
		led_output <= sum 			  		when '0',
						  conclogic_output 	when '1';
	
	leds (7 downto 0) <= led_output;
	
-- ****************************************************************
--ARITHMETIC PART

	with pb(3) select 
		arim_output	 <= concate 		when '1',
							 sum     		when '0';
	
	
	arimhex_A <= arim_output(7 downto 4);
	arimhex_B <= arim_output(3 downto 0);
	

-- ****************************************************************
						
-- COMPONENT HOOKUP

-- generate the seven segment coding 

	INST1: SevenSegment port map(arimhex_A, seg7_A);
	
	INST2: SevenSegment port map(arimhex_B, seg7_B);
		
	INST3: segment7_mux port map(clkin_50, seg7_A, seg7_B, seg7_data, seg7_char1, seg7_char2);

	
 
end SimpleCircuit;

