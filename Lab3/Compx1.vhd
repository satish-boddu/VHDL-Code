library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Compx1 is port (
   
   A	   :  in  std_logic_vector;   
   B	   :  in  std_logic_vector;

   AGTB 	:  out std_logic_vector;
	AEQB 	:  out std_logic_vector;
	ALTB 	:  out std_logic_vector
); 
end Compx1;

architecture Comp1 of Compx1 is

begin

AGTB <= A AND NOT(B);
AEQB <= A XNOR B;             --(NOT(A) AND NOT(B)) OR (A AND B)      
ALTB <= NOT(A) AND B;

end Comp1;