-- =======================================
-- file_name:  fsmd_rtimer.vhd 
-- author: Savan Yeshwanth Rao (2784780), Nischal Gudehindler Lingeswara (2825960)  
-- ========================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all ;



entity fsmd_rtimer is
port(
clk, reset: in std_logic;
start,stop,clear: in std_logic;


go,ready: out std_logic;
count_2: out std_logic_vector(7 downto 0); 
count_1: out std_logic_vector(7 downto 0);
count_0: out std_logic_vector(7 downto 0)
);
end fsmd_rtimer;

Architecture RTL of fsmd_rtimer is
TYPE State_type IS (idle,init,waiting,react,result_ch,result_sl,result_time);          -- State defination
	SIGNAL State_reg : State_Type;
	SIGNAL State_next: State_Type; 
	
   SIGNAL start_db   : std_logic;
	SIGNAL clear_db   : std_logic;
	SIGNAL stop_db    : std_logic;
	
	SIGNAL go_b      : std_logic;
	SIGNAL ready_b   : std_logic;
	SIGNAL count_2_b : std_logic_vector(7 downto 0);
	SIGNAL count_1_b : std_logic_vector(7 downto 0);
	SIGNAL count_0_b : std_logic_vector(7 downto 0);
	
   SIGNAL live_count_2_b : std_logic_vector(7 downto 0);
	SIGNAL live_count_1_b : std_logic_vector(7 downto 0);
	SIGNAL live_count_0_b : std_logic_vector(7 downto 0);

	
	SIGNAL react_count   : std_logic_vector(9 downto 0);
	SIGNAL bcd_op        : std_logic_vector(11 downto 0);
	SIGNAL waiting_done  : std_logic;
	SIGNAL counting_done : std_logic;
   SIGNAL one_khz_clk   :  std_logic;
	SIGNAL random_op :  std_logic_vector (12 downto 0);
	SIGNAL count_en  :  std_logic;
	SIGNAL cnt       :  std_logic_vector (15 downto 0);
							      
		
	SIGNAL bcd0_int : std_logic_vector (3 downto 0) ;
	SIGNAL bcd1_int : std_logic_vector (3 downto 0) ;
	SIGNAL bcd2_int : std_logic_vector (3 downto 0) ;
	signal count    : std_logic_vector (12 downto 0);
    signal fb      : std_logic;
								  
BEGIN 

  PROCESS (State_reg,clear_db,start_db,stop_db,counting_done,waiting_done) 
  BEGIN
 			 
	CASE State_reg IS
            
		WHEN idle => 
		    IF clear_db='1' THEN 
			   State_next <= init;
            ELSE
                State_next <= idle;
			END IF;
		
		WHEN init => 
		     
		    IF start_db='1' THEN 
			   State_next <= waiting;
            ELSE
                State_next <= init;
			END IF; 
		

		WHEN waiting => 
			IF stop_db = '1' THEN 
				State_next <= result_ch ; 
	        ELSIF waiting_done = '1' THEN 
                State_next <= react; 
            ELSE
                State_next <= waiting; 
			END IF; 

		WHEN react => 
			IF (counting_done = '1') THEN 
				State_next <= result_sl; 
            ELSIF (counting_done = '0' and stop_db = '1') THEN 
				State_next <= result_time;
			ELSE
                 State_next <= react;
			END IF; 
			
		WHEN result_ch => 
			IF clear_db = '1' THEN 
				State_next <= init; 
            ELSE
                 State_next <= result_ch;
			END IF;

		WHEN result_sl => 
			IF clear_db = '1' THEN 
				State_next <= init; 
            ELSE
                 State_next <= result_sl;
			END IF;

		WHEN result_time => 
			IF clear_db = '1' THEN 
				State_next <= init; 
            ELSE
                 State_next <= result_time;
			END IF;			

		WHEN others =>
			State_next <= init;
	END CASE; 
  END PROCESS;
  
  PROCESS (clk,reset) 
  BEGIN 
   IF (reset = '1') THEN            -- On Reset, stay in idle state
	  State_reg <= idle;
   ELSIF rising_edge(clk) THEN 
      State_reg <= State_next ;
   END IF;	  
  END PROCESS;
  
  PROCESS (clk,reset) 
  BEGIN 
   IF (reset = '1') THEN            
	  react_count <= "0000000000";
	  counting_done <= '0';
	  count_en <= '0';
   ELSIF rising_edge(clk) THEN 
      IF (State_reg = react and react_count < 999 and one_khz_clk = '1') THEN --999
	    count_en <= '1';
		react_count <= react_count + '1';
		counting_done <= '0';
	  ELSIF (State_reg = react and react_count = 999 and one_khz_clk = '1') THEN --999
		react_count <=  "0000000000";
		count_en <= '0';
		counting_done <= '1';
	  ELSIF (one_khz_clk = '1') THEN
		react_count <= "0000000000";
		counting_done <= '0';
		count_en <= '0';
	  END IF;
   END IF;	  
  END PROCESS;
  
  PROCESS (clk,reset) 
  BEGIN 
   IF (reset = '1') THEN            
	  waiting_done <= '0';
   ELSIF rising_edge(clk) THEN 
      IF (State_reg = waiting and random_op = "1100000000000" and one_khz_clk = '1') THEN --110000000000
		waiting_done <= '1';
	  ELSIF (one_khz_clk = '1') THEN
		waiting_done <= '0';
	  END IF;
   END IF;	  
  END PROCESS;
  
-----------------------CLK GEN------------------------------  
  PROCESS (clk,reset)
  BEGIN
   IF (reset = '1') THEN
	 one_khz_clk   <= '0'                   ;
	 cnt           <=  "0000000000000000"   ;
   ELSIF rising_edge(clk) THEN
	IF (cnt = "1100001101010000") THEN 	 
		one_khz_clk <=  '1'           ;
		cnt         <=  "0000000000000000" ;
    ELSE	
	    one_khz_clk <=  '0'           ;
	    cnt         <= cnt + '1'      ;		
	END IF;	
   END IF;
  END PROCESS;	
  
---------------------------------BCD----------------------------------

PROCESS (clk, reset)
 BEGIN -- process bcd_counting
	IF reset = '1' THEN -- asynchronous reset (active high)
		bcd0_int <= "0000";
    ELSIF rising_edge(clk)THEN -- rising clock edge
	 IF (count_en = '1' and one_khz_clk = '1' and bcd0_int = "1001" and bcd1_int = "1001" and bcd2_int = "1001") THEN
          bcd0_int <= "0000";
     ELSIF (one_khz_clk = '1' and bcd1_int = "1001" and bcd2_int = "1001" and count_en = '1') THEN	
	      bcd0_int <= bcd0_int + '1';
     END IF;
    END IF;
 END PROCESS;	

PROCESS (clk, reset)
 BEGIN -- process bcd_counting
	IF reset = '1' THEN -- asynchronous reset (active high)
		bcd1_int <= "0000";
    ELSIF rising_edge(clk)THEN -- rising clock edge
	 IF (count_en = '1' and one_khz_clk = '1' and bcd1_int = "1001" and bcd2_int = "1001") THEN
          bcd1_int <= "0000";
     ELSIF (one_khz_clk = '1' and bcd2_int = "1001" and count_en = '1') THEN	
	      bcd1_int <= bcd1_int + '1';
     END IF;
    END IF;
 END PROCESS;	

PROCESS (clk, reset)
 BEGIN -- process bcd_counting
	IF reset = '1' THEN -- asynchronous reset (active high)
		bcd2_int <= "0000";
    ELSIF rising_edge(clk)THEN -- rising clock edge
	 IF (count_en = '1' and one_khz_clk = '1' and bcd2_int = "1001") THEN
          bcd2_int <= "0000";
     ELSIF (one_khz_clk = '1' and count_en = '1') THEN	
	      bcd2_int <= bcd2_int + '1';
     END IF;
    END IF;
 END PROCESS;	

bcd_op <= bcd0_int & bcd1_int & bcd2_int;

----------------------------Random GEN-------------------------------------------  

fb <= not(count(12) xor count(11)); 

PROCESS (reset,clk)
BEGIN
	IF(reset = '1') THEN
		count <= "0000000000000";
	ELSIF (rising_edge(clk)) THEN
	     IF(one_khz_clk = '1') THEN
	       count <= count(11 downto 0) & fb;
		 END IF;  
	END IF;
END PROCESS;
random_op <= count;

------------------------------------------------------------------------

-- Signal assignment
WITH State_reg SELECT
    ready_b <='1' WHEN init,
              '0' WHEN OTHERS;
				  
WITH State_reg SELECT			  
    go_b    <= '1' WHEN react,
			      '0' WHEN OTHERS;
					
WITH State_reg SELECT			   
    count_2_b <= "11000000" WHEN waiting,        -- Display 0
	             live_count_2_b WHEN react,       -- Show live count 
			       live_count_2_b WHEN result_time, -- Show frozen count
			       "11111111" WHEN OTHERS;          -- Display off
					  
WITH State_reg SELECT
    count_1_b <= "10001001" WHEN init,           -- Display H
	             "11000000" WHEN waiting,         -- Display 0
	             "11000110" WHEN result_ch,       -- Display C
			       "10010010" WHEN result_sl,       -- Display S
	              live_count_1_b WHEN react,       -- Show live count 
			        live_count_1_b WHEN result_time, -- Show frozen count
			       "11111111" WHEN OTHERS;           -- Display off			  

WITH State_reg SELECT
    count_0_b <= "11111001" WHEN init,           -- Display I
	             "11000000" WHEN waiting,         -- Display 0
	             "10001001" WHEN result_ch,       -- Display H
			       "11000111" WHEN result_sl,       -- Display L
	              live_count_0_b WHEN react,      -- Show live count 
			        live_count_0_b WHEN result_time,-- Show frozen count
			       "11111111" WHEN OTHERS;          -- Display off
 
--Output assignment
	
	go      <= go_b;
	ready   <= ready_b;
	count_2 <= count_2_b;
	count_1 <= count_1_b;
	count_0 <= count_0_b;

--- Debouncing
   start_db <= start ;
   stop_db  <= stop  ;
   clear_db <= clear ;


--------------------live count 0 ---------------------

WITH bcd_op(3 downto 0) SELECT
live_count_0_b <= "11111001" WHEN "0001",   --1
			         "10100100" WHEN "0010",   --2
		            "10110000" WHEN "0011",   --3
			         "10011001" WHEN "0100",   --4
			         "10010010" WHEN "0101",   --5
			         "10000010" WHEN "0110",   --6
			         "11111000" WHEN "0111",   --7
		            "10000000" WHEN "1000",   --8
			         "10010000" WHEN "1001",   --9
			         "11000000" WHEN OTHERS;   --0
  

--------------------live count 1 ---------------------

WITH bcd_op(7 downto 4) SELECT
live_count_1_b <= "11111001" WHEN "0001",   --1
			         "10100100" WHEN "0010",   --2
		            "10110000" WHEN "0011",   --3
			         "10011001" WHEN "0100",   --4
			         "10010010" WHEN "0101",   --5
			         "10000010" WHEN "0110",   --6
			         "11111000" WHEN "0111",   --7
		            "10000000" WHEN "1000",   --8
			         "10010000" WHEN "1001",   --9
			         "11000000" WHEN OTHERS;   --0
				  

--------------------live count 2 ---------------------

WITH bcd_op(11 downto 8) SELECT
live_count_2_b <= "11111001" WHEN "0001",   --1
			         "10100100" WHEN "0010",   --2
		            "10110000" WHEN "0011",   --3
			         "10011001" WHEN "0100",   --4
			         "10010010" WHEN "0101",   --5
			         "10000010" WHEN "0110",   --6
			         "11111000" WHEN "0111",   --7
		            "10000000" WHEN "1000",   --8
			         "10010000" WHEN "1001",   --9
			         "11000000" WHEN OTHERS;   --0
  
END RTL;

