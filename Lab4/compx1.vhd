library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- ****************************************************************************
-- *  Entity                                                                  *
-- ****************************************************************************

entity Compx1 is port (

	input1    : in std_logic;
	input2    : in std_logic;
	greater   : out std_logic;
	equal     : out std_logic;
	lesser    : out std_logic

);

end entity Compx1;

-- *****************************************************************************
-- *  Architecture                                                             *
-- *****************************************************************************

architecture comp of Compx1 is




   
begin
equal <= NOT(input1 XOR input2);
greater <= input1 AND NOT(input2);
lesser <= NOT(input1) AND input2;

end architecture comp;
