library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity Compx4 is port (
   
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

   AGTB 	:  out std_logic_vector;
	AEQB 	:  out std_logic_vector;
	ALTB 	:  out std_logic_vector
); 

end Compx4;

architecture Comp4 of Compx4 is

begin

AGTB <= A3GTB3 OR (A3EQB3 AND (A2GTB2 OR (A2EQB2 AND (A1GTB1 OR (A1EQB1 AND A0GTB0)))));

AEQB <= A3EQB3 AND A2EQB2 AND A1EQB1 AND A0EQB0;

ALTB <= A3LTB3 OR (A3EQB3 AND (A2LTB2 OR (A2EQB2 AND (A1LTB1 OR (A1EQB1 AND A0LTB0)))));

end Comp4;