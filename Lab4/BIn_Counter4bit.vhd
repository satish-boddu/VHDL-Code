LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Bin_Counter4bit iS PORT
	(
	Main_CLK					: in	std_logic  := '0';
	rst_n						: in	std_logic  := '0';
	enable					: in	std_logic ; 
	up1_down0				: in	std_logic ;
	counter_bits			: out std_logic_vector(3 downto 0)
	);
END Bin_Counter4bit;

ARCHITECTURE one OF Bin_Counter4bit IS
	
	signal ud_bin_counter		: UNSIGNED(3 downto 0);
----------------------------------------------------------------------------------------------------
	
----------------------------------------------------------------------------------------------------
BEGIN

process (Main_CLK,rst_n,enable,up1_down0) is
begin
	if (rst_n = '0') then
			ud_bin_counter <= "0000";
	elsif rising_edge(Main_CLK) then
			if ((up1_down0 = '1') AND (enable = '1'))	then 
				ud_bin_counter <= (ud_bin_counter + 1);
			elsif ((up1_down0 = '0') AND (enable = '1'))	then 
				ud_bin_counter <= (ud_bin_counter - 1);
			end if;
		
	end if;
	counter_bits <= std_logic_vector(ud_bin_counter);

end process;

					
---------------------------------------------------------------------------------------------------

END one;