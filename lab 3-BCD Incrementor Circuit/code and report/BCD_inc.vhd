-- ========================================
-- file_name:  eq3.vhd  
-- author: Savan Yeshwanth Rao (2784780), Nischal Gudehindler Lingeswara (2825960)  
-- ========================================

-- ================ From given specification we can know that ==============================
-- Since it is a 3 digit each with 4 bit the bcd maximum value would range between 0-999,
-- then the last increment would be 998+1=999.
-- and during binary addition we might get atmost a 3 digit = sum and 2 = carry.
-- therefore the intput bit b2,b1,b0 must not exceed more then digit 9 i.e.,  
-- in binary 999 is given as "1001 1001 1001" i.e., b2 < 1001 , b2 < 1001 and b3 < 1001.
-- =========================================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;                                            -- since we would be doing arthematic operation.

entity bcd_inc is
	port(
 		b2, b1, b0: in std_logic_vector(3 downto 0);           --- input for 3 digit each with 4 bit 
 		y2, y1, y0: out std_logic_vector(3 downto 0)           --- output 3 digit 4 bit each bcd digit
 );
end bcd_inc;

architecture rtl_arch of bcd_inc is
	signal s0,s1: unsigned(3 downto 0);                             --- 2 signals for carry each 4 bit and we use unsigned as they are all postive numbers 
								        --- where carry is also not more then 9. 
begin
	y0 <= std_logic_vector(unsigned(b0) +1) when b0 < "1001" else  -- for first digit  
         "0000";

	s0 <= "0001"when b0 = "1001" else                              -- for first carry
         "0000";

	y1 <= std_logic_vector(unsigned(b1) +s0) when b1 < "1001" else  -- for second digit
         "0000";

	s1 <= "0001" when b1 = "1001" else				-- for second carry
         "0000";
   
	y2 <= std_logic_vector(unsigned(b2) +s1) when b2 < "1001" else  -- for third digit which is the most significant digit
         "0000";

end rtl_arch;