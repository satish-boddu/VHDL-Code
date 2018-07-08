LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Bidir_shift_reg IS PORT
	(
	CLK					: in	std_logic  := '0';
	RESET_N				: in	std_logic  := '0';
	CLK_EN				: in	std_logic  := '0';
	LEFT0_RIGHT1		: in	std_logic  := '0';
	REG_BITS				: out std_logic_vector(3 downto 0)
	);
END Bidir_shift_reg;

ARCHITECTURE one OF Bidir_shift_reg IS
	
	signal sreg		: std_logic_vector(3 downto 0);
----------------------------------------------------------------------------------------------------
	
----------------------------------------------------------------------------------------------------
BEGIN

process (CLK,RESET_N,CLK_EN,LEFT0_RIGHT1) is
begin 
	if (RESET_N = '0') then
			sreg <= "0000";
	elsif (rising_edge(CLK) AND (CLK_EN = '1')) then
	
			if (LEFT0_RIGHT1 = '1') then --TRUE for RIGHT SHIFT
				sreg (3 downto 0) <= '1' & sreg(3 downto 1); --right shift of bits
				
			elsif (LEFT0_RIGHT1 = '0') then
				sreg (3 downto 0) <= sreg(2 downto 0) & '0'; --left shift of bits
			
			end if;
		
	end if;
	REG_BITS <= sreg;

end process;

					
---------------------------------------------------------------------------------------------------

END one;
