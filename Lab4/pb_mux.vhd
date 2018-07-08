library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


-- ****************************************************************************
-- *  Entity                                                                  *
-- ****************************************************************************

entity pb_mux is
   port (
		    pb			: in std_logic; --button 3 input
			 INPUT1 	   : in  std_logic_vector(3 downto 0);	--when button 3 pressed
			 INPUT2		: in  std_logic_vector(3 downto 0); 
			 OUTPUT		: out std_logic_vector(3 downto 0)
        );
end entity pb_mux;

-- *****************************************************************************
-- *  Architecture                                                             *
-- *****************************************************************************

architecture logic of pb_mux is
	
	
   
begin
	OUTPUT <= INPUT1 when (pb = '0') else INPUT2; -- output input1 when button 3 pressed else INPUT2

end architecture logic;