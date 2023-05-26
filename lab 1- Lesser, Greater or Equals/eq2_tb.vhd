library ieee;
use ieee.std_logic_1164.all;
entity eq2_tb is
end eq2_tb;

architecture tb_arch of eq2_tb is
   signal a : std_logic_vector(1 downto 0);
   signal b : std_logic_vector(1 downto 0);
   signal aeqb : std_logic;
begin
   -- instantiate the circuit under test
   -- uut: entity work.eq2(struc_arch)
   uut: entity work.eq2(structure) 
      port map(
         a    => a,
         b    => b,
         aeqb => aeqb
      );
   -- test vector generator
   process
   begin
      -- test vector 1
      a <= "00";
      b <= "00";
      wait for 200 ns;
      -- test vector 2
      a <= "01";
      b <= "00";
      wait for 200 ns;
      -- test vector 3
      a <= "01";
      b <= "11";
      wait for 200 ns;
      -- test vector 4
      a <= "10";
      b <= "10";
      wait for 200 ns;
      -- test vector 5
      a <= "10";
      b <= "00";
      wait for 200 ns;
      -- test vector 6
      a <= "11";
      b <= "11";
      wait for 200 ns;
      -- test vector 7
      a <= "11";
      b <= "01";
      wait for 200 ns;
      -- terminate simulation
      assert false
         report "Simulation Completed"
         severity failure;
   end process;
end tb_arch;