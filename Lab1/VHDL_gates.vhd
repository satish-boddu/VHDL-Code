LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY work;

ENTITY VHDL_gates IS                       #Defining all input and output variables
	PORT
	(
		AND_IN1, AND_IN2, NAND_IN1, NAND_IN2, OR_IN1, OR_IN2, XOR_IN1, XOR_IN2  :  IN  BIT;
		AND_OUT, NAND_OUT, OR_OUT, XOR_OUT  :  OUT  BIT
	);
END VHDL_gates;

ARCHITECTURE simple_gates OF VHDL_gates IS

BEGIN                                      #Writing the logic for each of the output variables

AND_OUT <= AND_IN1 AND AND_IN2;            #Taking the Inputs and Performing the Logic
NAND_OUT <= NAND_IN1 NAND NAND_IN2;
OR_OUT <= OR_IN1 OR OR_IN2;
XOR_OUT <= XOR_IN1 XOR XOR_IN2;

END simple_gates;
