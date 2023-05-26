
-- =============================================================================
-- file_name:  rotating_led_LorR.vhd  
-- author: Savan Yeshwanth Rao (2784780), Nischal Gudehindler Lingeswara (2825960)  
-- =============================================================================

-- ===========================================
-- structural level design to put both the counter together using port map syntax
-- =========================================== 


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity rotate_led is
port(
clk, reset: in std_logic;
pause, rt, fast: in std_logic;
dout: out std_logic_vector(4 downto 0)
);
end rotate_led;

architecture rtl_arch of rotate_led is
	signal ticker: std_logic;

	
begin
--from the 1st counter i.e., pulse generator
 counter1_unit: entity work.counter1(rtl_arch)
port map (pause => pause, reset=> reset,  fast=> fast, clk=>clk, tick =>ticker);

--from the 2nd counter i.e., mod-5 counter
 counter2_unit: entity work.counter2(rtl_arch)
port map(dout=>dout, reset=>reset, clk=>clk, rt=>rt, tick=>ticker );


end rtl_arch;