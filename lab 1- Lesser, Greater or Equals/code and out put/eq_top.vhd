library ieee;
use ieee.std_logic_1164.all;
entity eq_top is
	port(
			sw: in std_logic_vector(3 downto 0);
			led: out std_logic_vector(0 downto 0)
);
end eq_top;
architecture struc_arch of eq_top is 
begin
eq2_unit : entity work.eq2(struc_arch)
	port map(
		a => sw(3 downto 2),
		b => sw(1 downto 0),
		aeqb => led(0)
);
end struc_arch;		