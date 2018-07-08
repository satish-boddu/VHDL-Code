
-- We Programmed our extender such that it continues to extend as we hold down the push button 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Moore_SM IS Port
(
 clk_input, rst_n, exten, button					: IN std_logic;
 leds 	: IN std_logic_vector(3 downto 0);
 shift_en, shift_dir, exten_out, grap_en									: OUT std_logic
 );
END ENTITY;
 

 Architecture SM of Moore_SM is
 


 TYPE STATE_NAMES IS (start,extending,extend_hold, extended, retracting, retracted_hold, done);   -- list all the STATE_NAMES values

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES


  BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, rst_n, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN
		current_state <= start;
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_State;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (exten, button, leds, current_state) 

BEGIN
     CASE current_state IS
         WHEN start =>		
				IF(exten ='1' AND button='0') THEN
					next_state <= extending;
				ELSE
					next_state <= start;
				END IF;

         WHEN extending =>	
				IF(button='1') THEN
					next_state <= extend_hold;
					END IF;
				

         WHEN extend_hold =>		
				IF(leds="1111") THEN
					next_state <= extended;
				ELSIF(button='0') THEN
					next_state <= extending;
				ELSE
					next_state <= extend_hold;
				END IF;
				
         WHEN extended =>		
				IF(button='0') THEN
					next_state <= retracting;
				ELSE
					next_state <= extended;
				END IF;

         WHEN retracting =>	
				IF(button='1')THEN
					next_state <= retracted_hold;
					END IF;

         WHEN retracted_hold =>	
				IF(leds="0000") THEN
					next_state <= done;
				ELSIF(button='0') THEN
					next_state <= retracting;
					ELSE
					next_state <= retracted_hold;
					END IF;
				
         WHEN done =>		
				IF(button='0' AND exten ='1') THEN
					next_state <= extending;
				ELSE
					next_state <= done;
				END IF;
 		END CASE;
 END PROCESS;

-- DECODER SECTION PROCESS
Decoder_Section: PROCESS (current_state) 

BEGIN
     CASE current_state IS
         WHEN start =>		
			shift_en <= '0';
			shift_dir <= '0';
			exten_out <= '0';
			grap_en <= '0';
	
         WHEN extending =>		
			shift_en <= '1';
			shift_dir <= '1';
			exten_out <= '1';
			grap_en <= '0';
			
			WHEN retracting =>		
			shift_en <= '1';
			shift_dir <= '0';
			exten_out <= '1';
			grap_en <= '0';
			        
			
			WHEN extended =>		
			shift_en <= '0';
			shift_dir <= '0';
			exten_out <= '1';
			grap_en <= '1';

			
			WHEN done =>		
			shift_en <= '0';
			shift_dir <= '0';
			exten_out <= '0';
			grap_en <= '0';
			
			WHEN others =>		
			shift_en <= '0';
			shift_dir <= '0';
			exten_out <= '1';
			grap_en <= '0';
	  END CASE;
 END PROCESS;

 END ARCHITECTURE SM;
