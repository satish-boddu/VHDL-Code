library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Mealy_SM IS Port
(
 clk_input,XMOTION, YMOTION, EX_OUT,XEQ,XGT,XLT,YEQ,YGT,YLT					: IN std_logic;
 rst_n 																							: in	std_logic  := '0';
 clk_enX,clk_enY, Xcount,Ycount,ERRORled,EXTD_EN									: OUT std_logic
 );
END ENTITY;
 

 Architecture SM of Mealy_SM is
 

 
 TYPE STATE_NAMESX IS (X0,XMOVE,XSTOP,ERRORX);   -- list all the STATE_NAMES values

 TYPE STATE_NAMESY IS (Y0,YMOVE,YSTOP,ERRORY);
 
 SIGNAL current_stateX, next_stateX	:  STATE_NAMESX;     	-- signals of type STATE_NAMES
 SIGNAL current_stateY, next_stateY	:  STATE_NAMESY;     	-- signals of type STATE_NAMES
 
 SIGNAL EXTDX : std_logic;
 SIGNAL EXTDY : std_logic;
 SIGNAL ledX  : std_logic := '0';
 SIGNAL ledY : std_logic := '0';
 
 signal EXTD_OUT :std_logic;
 
 
 BEGIN
EXTD_OUT <= EX_OUT;
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, rst_n, next_stateX,next_stateY)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN
		current_stateX <= X0;
		current_stateY <= Y0;
	ELSIF(rising_edge(clk_input)) THEN
		current_stateX <= next_StateX;
		current_stateY <= next_StateY;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (XMOTION, EXTD_OUT, XEQ, XGT,XLT, current_stateX) 

BEGIN

     CASE current_stateX IS
         WHEN X0 =>
				IF(XMOTION = '0' AND XEQ = '0' AND EXTD_OUT = '0')	THEN
					next_stateX <= XMOVE;
				ELSIF (XEQ = '1') THEN
					next_stateX <= XSTOP;
				ELSE
					next_stateX <= X0;
				END IF;

			WHEN XMOVE =>	
				IF(EXTD_OUT = '1') THEN
					next_stateX <= ERRORX;
				ELSIF (XMOTION='0' AND XLT = '1') THEN
					next_stateX <= XMOVE;
				ELSIF(XMOTION='0' AND XGT = '1') THEN
					next_stateX <= XMOVE;
				ELSIF(XMOTION='1' OR XEQ = '1') THEN
					next_stateX <= XSTOP;	
				END IF;
					
         WHEN XSTOP =>
				IF(XMOTION='0') THEN
					next_stateX <= XMOVE;
				ELSE
					next_stateX <= XSTOP;
				END IF;
				
			WHEN ERRORX =>
				IF(EXTD_OUT = '0') THEN
					next_stateX <= XSTOP;
				ELSE
					next_stateX <= ERRORX;
				END IF;
 		END CASE;
 END PROCESS;
 
 -- DECODER SECTION PROCESS

Decoder_Section: PROCESS (XMOTION, EXTD_OUT, XEQ, XGT,XLT, current_stateX) 

BEGIN
     CASE current_stateX IS
			WHEN X0 =>
				EXTDX <= '0';
         WHEN XMOVE =>
				EXTDX <= '0';
				clk_enX <= '1';
				IF(XMOTION='0' AND XGT = '1') THEN
					Xcount <= '0';
				ELSIF(XMOTION='1' OR XEQ = '1') THEN
					clk_enX <= '0';
				ELSIF (XMOTION='0' AND XLT = '1') THEN
					Xcount <= '1';
				END IF;
			
			WHEN XSTOP =>
				IF (XEQ = '1') THEN
					EXTDX <= '1';
				ELSE
					EXTDX <= '0';
				END IF;
				
			WHEN ERRORX =>
				ledX <= '1';
				IF(EXTD_OUT = '0') THEN
					ledX <= '0';
				END IF;
		END CASE;
END PROCESS;


 Transition_Section2: PROCESS (YMOTION, EXTD_OUT,YEQ, YGT,YLT, current_stateY) 

BEGIN
     CASE current_stateY IS
         WHEN Y0 =>
				IF(YMOTION = '0' AND YEQ = '0' AND EXTD_OUT = '0')	THEN
					next_stateY <= YMOVE;
				ELSIF (YEQ = '1') THEN
					next_stateY <= YSTOP;
				ELSIF (EXTD_OUT = '1') THEN
					next_stateY <= ERRORY;
				ELSE
					next_stateY <= Y0;
				END IF;

			WHEN YMOVE =>
				IF (EXTD_OUT = '1') THEN
					next_stateY <= ERRORY;		
				ELSIF(YMOTION='0' AND YLT = '1') THEN
					next_stateY <= YMOVE;
				ELSIF(YMOTION='0' AND YGT = '1') THEN
					next_stateY <= YMOVE;
				ELSIF(YMOTION='1' OR YEQ = '1') THEN
					next_stateY <= YSTOP;
				END IF;
					
         WHEN YSTOP =>
				IF(YMOTION='0') THEN
					next_stateY <= YMOVE;
				ELSE
					next_stateY <= YSTOP;
				END IF;
				
			WHEN ERRORY =>
				IF(EXTD_OUT = '0') THEN
					next_stateY <= YSTOP;
				ELSE
					next_stateY <= ERRORY;
				END IF;
 		END CASE;
END PROCESS;
 
  -- DECODER SECTION PROCESS

Decoder_Section2: PROCESS (YMOTION, EXTD_OUT,YEQ, YGT,YLT, current_stateY) 

BEGIN
     CASE current_stateY IS
			WHEN Y0 =>
				EXTDY <= '0';
         WHEN YMOVE =>
				EXTDY <= '0';
				clk_enY <= '1';
				IF(YMOTION='0' AND YGT = '1') THEN
					Ycount <= '0';
				ELSIF(YMOTION='1' OR YEQ = '1') THEN
					clk_enY <= '0';
				ELSIF (YMOTION='0' AND YLT = '1') THEN
					Ycount <= '1';
				END IF;
			
			WHEN YSTOP =>
				IF (YEQ = '1') THEN
					EXTDY <= '1';
				ELSE
					EXTDY <= '0';
				END IF;
				
			WHEN ERRORY =>
				ledY <= '1';
				IF(EXTD_OUT = '0') THEN
					ledY <= '0';
				END IF;
	END CASE;
END PROCESS;

 
 ERRORled <= ledX OR ledY;
 EXTD_EN <= EXTDX AND EXTDY;
 
 END ARCHITECTURE SM;
