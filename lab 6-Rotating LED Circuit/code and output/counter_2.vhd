-- ========================================
-- file_name:  counter_2.vhd  
-- author: Savan Yeshwanth Rao (2784780), Nischal Gudehindler Lingeswara (2825960)  
-- ========================================


-- =========================================
-- Counter 2: a mod-5 counter that counts up or counts down and decodes the counter values to 5 output patterns
-- the output genertated form counter1 tick is taken as input in this counter
-- we can design by using the vhdl operator '&' (concatenate) by rotating and joining the bit depending rt to right or left  
-- ======================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity counter2 is
port(
clk, reset: in std_logic;
tick, rt: in std_logic;      -- rt to rotate led left or right 
dout: out std_logic_vector(4 downto 0)
);
end counter2;
architecture rtl_arch of counter2 is
 		signal led: std_logic_vector(4 downto 0); --as mod5 counter 

begin
process(clk,reset)
begin
              -- during initial case
		if (reset = '1') then
		led<= "00001";
		dout<=led;
		elsif(clk'event and clk ='1') then
		dout<=led;

		-- when rt=0 pattern rotates left so rotating left using VHDL concatenate operator (&) by rotating left and joining the 5th bit 

	if(rt='0' and tick ='1') then
			led<= led(3 downto 0) & led(4);
		-- when rt=1 pattern rotates right so rotating rigth using VHDL concatenate operator (&) by rotating right and joining the 1st bit
	elsif(rt='1' and tick ='1') then
			led<=led(0) & led(4 downto 1);
	end if;
end if;
end process;
end rtl_arch;
