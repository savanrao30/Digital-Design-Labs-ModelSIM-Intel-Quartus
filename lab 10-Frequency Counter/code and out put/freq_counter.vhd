-- =======================================
-- file_name:  fsmd_counter.vhd 
-- author: Savan Yeshwanth Rao (2784780), Nischal Gudehindler Lingeswara (2825960)  
-- ========================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all ;



entity freq_counter is
port(

    clk   : in std_logic;    --clock
    reset : in std_logic;    --reset
    fin, start : in std_logic; --Frequency to be measured, start signal
    ready : out std_logic;    -- ready signal 
    d2, d1, d0 :out  std_logic_vector(3 downto 0) -- frequency count in BCD format
);
end freq_counter;

architecture rtl_arch of freq_counter	 is
	type state is (IDLE,MEASURE);
	signal current_state, next_state: state;
    signal counting_done : std_logic; -- Indicates frequncy counting is done
	signal ready_b : std_logic;
	signal count_en : std_logic; ---counter enable to count 1 second duration

    signal bcd0_int : std_logic_vector (3 downto 0) ;
	signal bcd1_int : std_logic_vector (3 downto 0) ;
	signal bcd2_int : std_logic_vector (3 downto 0) ;
	signal cnt      : std_logic_vector (9 downto 0) ;
	signal int_reset: std_logic; 
	
	begin
	
	-- Next state logic of the VHDL MOORE FSM Sequence Detector
	-- Combinational logic
	process(current_state,start,counting_done)
	begin
	 case(current_state) is
	 
	 when IDLE =>
	  if(start='1') then 
	   next_state <= MEASURE;
	  else
	   next_state <= IDLE;
	  end if;
	  
	 when MEASURE =>
	  if(counting_done='1') then  
	   next_state <= IDLE;
	  else
	   next_state <= MEASURE;
	  end if;  
	  
	 end case;
	end process;
	
	
	-- Sequential memory of the VHDL MOORE FSM Sequence Detector
	
process(clk,reset)
	begin
	if(reset='1') then
		current_state <= IDLE;  -- Stay in IDLE when in reset
		int_reset <= '1';
	elsif(rising_edge(clk)) then
		current_state <= next_state; --Next state decoding
		int_reset <= start;
	end if;
	end process;
	
	
	
  -- Output logic of the VHDL MOORE FSM Sequence Detector
process(current_state)
	begin 
	 case current_state is
	 
	 when IDLE =>
	  count_en <= '0';
	  
	 when MEASURE =>
	  count_en <= '1';
	  
	 when OTHERS => 
	  count_en <= '0';
	  
	 end case;
	end process;
	
	-- Output assignment
    ready <= ready_b;
	
	
	
	
	---------------------------------BCD----------------------------------

process (fin, int_reset)
	 begin -- process bcd_counting
		if int_reset = '1' then 
			bcd0_int <= "0000";
		elsif rising_edge(fin)then -- rising clock edge
		 if (count_en = '1' and bcd0_int = "1001" and bcd1_int = "1001" and bcd2_int = "1001") then
			  bcd0_int <= "0000";
		 elsif ( bcd1_int = "1001" and bcd2_int = "1001" and count_en = '1') then	
			  bcd0_int <= bcd0_int + '1';
		 end if;
		end if;
	 end process;	

	process (fin, int_reset)
	 begin -- process bcd_counting
		if int_reset = '1' then 
			bcd1_int <= "0000";
		elsif rising_edge(fin)then -- rising clock edge
		 if (count_en = '1'  and bcd1_int = "1001" and bcd2_int = "1001") then
			  bcd1_int <= "0000";
		 elsif (bcd2_int = "1001" and count_en = '1') then	
			  bcd1_int <= bcd1_int + '1';
		 end if;
		end if;
	 end process;	

process (fin, int_reset)
	 begin -- process bcd_counting
		if int_reset = '1' then
			bcd2_int <= "0000";
		elsif rising_edge(fin)then -- rising clock edge
		 if (count_en = '1' and bcd2_int = "1001") then
			  bcd2_int <= "0000";
		 elsif (count_en = '1') then	
			  bcd2_int <= bcd2_int + '1';
		 end if;
		end if;
	 end process;	

	d0 <= bcd2_int;
	d1 <= bcd1_int;
	d2 <= bcd0_int;
	
	
	
	
	-----------------------CLK GEN------------------------------
    -- Generates 1 second pulse to counte incoming frequency 	
process (clk,reset)
  begin
   if (reset = '1') then
	 counting_done   <= '0';                   
	 cnt             <=  "1111100111"; 
     ready_b         <= '1';	 
   elsif rising_edge(clk) then
   
    if(start = '1') then
		ready_b <= '0'; 	
	    counting_done <=  '0';           
		cnt           <=  "1111100111";
	elsif (cnt = "0000000000") then 	 
		counting_done <=  '1';
		cnt           <=  "1111100111" ;
		ready_b <= '1';    
    elsif(count_en = '1') then
	    counting_done <=  '0';
	    cnt           <= cnt - '1';		
	end if;	
   end if;
  end process;	
	
end rtl_arch;



