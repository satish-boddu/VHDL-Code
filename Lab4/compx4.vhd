library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- ****************************************************************************
-- *  Entity                                                                  *
-- ****************************************************************************

entity Compx4 is port (

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

end entity Compx4;

-- *****************************************************************************
-- *  Architecture                                                             *
-- *****************************************************************************

architecture comp4 of Compx4 is


component Compx1 port (

	input1    : in std_logic;
	input2    : in std_logic;
	greater   : out std_logic;
	equal     : out std_logic;
	lesser    : out std_logic

);

end component Compx1;

   
	signal A0GTB0 : std_logic;
	signal A0EQB0 : std_logic;
	signal A0LTB0 : std_logic;
	
	signal A1GTB1 : std_logic;
	signal A1EQB1 : std_logic;
	signal A1LTB1 : std_logic;
	
	signal A2GTB2 : std_logic;
	signal A2EQB2 : std_logic;
	signal A2LTB2 : std_logic;
	
	signal A3GTB3 : std_logic;
	signal A3EQB3 : std_logic;
	signal A3LTB3 : std_logic;
	
	signal AGTB : std_logic;
	signal AEQB : std_logic;
	signal ALTB : std_logic;
	
	signal not_less : std_logic;
	signal not_eq: std_logic;

begin

	INST1: Compx1 port map (a0,b0,A0GTB0,A0EQB0,A0LTB0);
	INST2: Compx1 port map (a1,b1,A1GTB1,A1EQB1,A1LTB1);
	INST3: Compx1 port map (a2,b2,A2GTB2,A2EQB2,A2LTB2);
	INST4: Compx1 port map (a3,b3,A3GTB3,A3EQB3,A3LTB3) ;
	
	not_less <= A3LTB3 OR (A3EQB3 AND A2LTB2) OR (A3EQB3 AND A2EQB2 AND A1LTB1) OR (A3EQB3 AND A2EQB2 AND A1EQB1 AND A0LTB0);
	not_eq   <= A3EQB3 AND A2EQB2 AND A1EQB1 AND A0EQB0;
	
	less <= not_less;
	eq   <= not_eq;
	grtr <= NOT(not_less OR not_eq);




end architecture comp4;
