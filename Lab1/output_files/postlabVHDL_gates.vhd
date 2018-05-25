LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY work;

ENTITY postlabVHDL_gates IS
	PORT
	(
		POLARITY_CNTRL, AND_IN, NAND_IN, OR_IN, XOR_IN  :  IN  BIT;
		AND_OUT, NAND_OUT, OR_OUT, XOR_OUT  :  OUT  BIT
	);
END postlabVHDL_gates;

ARCHITECTURE simple_gates OF postlabVHDL_gates IS

BEGIN

AND_OUT <= AND_IN XOR POLARITY_CNTRL;
NAND_OUT <= NAND_IN XOR POLARITY_CNTRL;
OR_OUT <= OR_IN XOR POLARITY_CNTRL;
XOR_OUT <= XOR_IN XOR POLARITY_CNTRL;

END simple_gates;