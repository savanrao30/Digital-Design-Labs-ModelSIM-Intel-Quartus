-- ========================================
-- file_name:  enhanced_prio.vhd  
-- author: Savan Yeshwanth Rao (2784780), Nischal Gudehindler Lingeswara (2825960)  
-- ========================================


library ieee;
use ieee.std_logic_1164.all;
entity enhanced_prio is
       port(
               r: in std_logic_vector(9 downto 0); 
               fst, snd: out std_logic_vector(3 downto 0)
      );
end enhanced_prio;

architecture rtl_arch of enhanced_prio is
      signal s1, s2: std_logic_vector(9 downto 0);
begin

        s1<= "1000000000" when (r(9) = '1') else
             "0100000000" when (r(8) = '1') else
             "0010000000" when (r(7) = '1') else
             "0001000000" when (r(6) = '1') else
             "0000100000" when (r(5) = '1') else
             "0000010000" when (r(4) = '1') else
             "0000001000" when (r(3) = '1') else
             "0000000100" when (r(2) = '1') else
             "0000000010" when (r(1) = '1') else
             "0000000001" when (r(0) = '1') else
             "0000000000";

        fst <= "1001" when (r(9) ='1') else
               "1000" when (r(8) ='1') else
               "0111" when (r(7) ='1') else
               "0110" when (r(6) ='1') else
               "0101" when (r(5) ='1') else
               "0100" when (r(4) ='1') else
               "0011" when (r(3) ='1') else
               "0010" when (r(2) ='1') else
               "0001" when (r(1) ='1') else
               "0000" when (r(0) ='1') else
               "1111";

         s2<= r xor s1;

       snd <= "1001" when (s2(9) ='1') else
              "1000" when (s2(8) ='1') else
              "0111" when (s2(7) ='1') else    
              "0110" when (s2(6) ='1') else 
              "0101" when (s2(5) ='1') else
              "0100" when (s2(4) ='1') else
              "0011" when (s2(3) ='1') else
              "0010" when (s2(2) ='1') else
              "0001" when (s2(1) ='1') else
              "0000" when (s2(0) ='1') else
              "1111";
end rtl_arch;