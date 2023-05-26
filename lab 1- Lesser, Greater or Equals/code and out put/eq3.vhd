-- ========================================
-- file_name:  eq3.vhd  
-- author: Savan Yeshwanth Rao (2784780), Nischal Gudehindler Lingeswara (2825960)  
-- ========================================

library ieee;
use ieee.std_logic_1164.all;
entity eq3 is
	port(
		a,b	: in std_logic_vector(2 downto 0);
		aeqb	: out std_logic	);
end eq3;
architecture struc_arch of eq3 is
	signal e0,e1,e2	: std_logic;
begin
	eq_bit0_unit : entity work.eq1(sop_arch)
	port map(
		i0 => a(0),
		i1 => b(0),
		eq => e0
);
	eq_bit1_unit : entity work.eq1(sop_arch)
	port map(
		i0 => a(1),
		i1 => b(1),
		eq => e1
);
	eq_bit2_unit : entity work.eq1(sop_arch)
	port map(
		i0 => a(2),
		i1 => b(2),
		eq => e2
);
aeqb <= e0 and e1 and e2;
end struc_arch;
