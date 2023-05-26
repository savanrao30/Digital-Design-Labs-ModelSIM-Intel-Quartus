-- ========================================
-- file_name:  counter_1.vhd  
-- author: Savan Yeshwanth Rao (2784780), Nischal Gudehindler Lingeswara (2825960)  
-- ========================================


-- =========================================
--Counter 1: a pulse generator that generates a one-clock pulse (tick) every 40 ns or 80 ns when it is not paused.
-- from 1 ciruit 3 inputs and 1 output 
-- ======================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity counter1 is
port(
clk, reset: in std_logic;   --inputs and reset to reset the state of the counter to generate the pulse   
pause, fast: in std_logic;  --inputs  pause to control rotation and fast to control the clock cycle speed
tick: out std_logic         -- tcik output for up or down for every 40ns or 80ns
);
end counter1;
architecture rtl_arch of counter1 is
	signal count: std_logic_vector(2 downto 0);
begin 
	process(clk, reset, pause, fast, count)
   begin
	if(reset = '1') then    -- 
		count<= "001";
		tick<= '1';
	elsif(clk'event and clk = '1') then
			if(pause = '0') then
				count <= count + "001";
			end if;
	-- when there is no rotation pause and fast =1: each pattern stays 2 clock cycles
		if ((pause = '0') and (fast = '1') and (count = "010")) then
				tick<= '1';
				count<= "001";
	-- when there is no rotation pause and fast =0: each pattern stays 4 clock cycles
		elsif((pause = '0') and (fast = '0') and (count = "100")) then
				tick<= '1';
				count<= "001";
		else
				tick<= '0';
		end if;
end if;
end process;
end rtl_arch;
	