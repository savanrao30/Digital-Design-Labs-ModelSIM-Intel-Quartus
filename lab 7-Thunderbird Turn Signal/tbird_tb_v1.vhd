library ieee;
use ieee.std_logic_1164.all;

entity tbird_tb is
end tbird_tb;

architecture arch of tbird_tb is
   constant T   : time    := 10 ns; -- clk period
   signal clk   : std_logic;
   signal reset : std_logic;
   signal left, right, haz : std_logic;
   signal light  : std_logic_vector(5 downto 0);
begin
   --*****************************************************************
   -- instantiation
   --*****************************************************************
   -- instantiatie the unit under test
   dut : entity work.tbird_fsm(rtl_arch)
      port map(
         clk   => clk,
         reset => reset,
         left => left,
         right => right,
         haz => haz,
         light => light
      );
   --*****************************************************************
   -- clock
   --*****************************************************************
   -- 10 ns clock running forever
   process
   begin
      clk <= '0';
      wait for T / 2;
      clk <= '1';
      wait for T / 2;
   end process;
   
   --*****************************************************************
   -- reset
   --*****************************************************************
   -- reset asserted for T/4
   reset <= '1', '0' after T / 4;
   
   --*****************************************************************
   -- stimulus
   --*****************************************************************
   process
   begin
      left <= '0';
      right <= '0';
      haz <= '0';
      wait until falling_edge(clk);
      -- test left turn
      left <= '1'; 
      for i in 1 to 7 loop           
         wait until falling_edge(clk);
      end loop;
      -- test right turn
      left <= '0';
      right <= '1';
      for i in 1 to 5 loop             
         wait until falling_edge(clk);
      end loop;
      -- test hazard
      wait until light="000110";
      wait until falling_edge(clk);
      haz <= '1'; 
      for i in 1 to 5 loop             
         wait until falling_edge(clk);
      end loop;
      -- resume right turn
      haz <= '0'; 
      for i in 1 to 4 loop             
         wait until falling_edge(clk);
      end loop;
     -- return to idle
      right <= '0';
      for i in 1 to 5 loop             
         wait until falling_edge(clk);
      end loop;
     
      --**************************************************************
      -- terminate simulation
      --**************************************************************
      assert false
         report "Simulation Completed"
         severity failure;
   end process;
end arch;
