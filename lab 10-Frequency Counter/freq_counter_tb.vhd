library ieee;
use ieee.std_logic_1164.all;

entity freq_counter_tb is
end freq_counter_tb;

architecture arch of freq_counter_tb is
   constant T   : time    := 1000 us; -- clk period
   signal clk   : std_logic;
   signal reset : std_logic;
   signal fin, start : std_logic;
   signal ready : std_logic;
   signal d2, d1, d0 : std_logic_vector(3 downto 0);
begin
   --*****************************************************************
   -- instantiation
   --*****************************************************************
   -- instantiate the unit under test
   dut : entity work.freq_counter(rtl_arch)
      port map(
         clk   => clk,
         reset => reset,
         fin => fin,
         start => start,
         ready => ready,
         d2 => d2,
         d1 => d1,
         d0 => d0
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
   -- freq input 
   --*****************************************************************
   process
   begin
      -- 250 Hz for 1.2 sec 
      for i in 1 to 300 loop  
         fin <= '0';
         wait for 2 ms;
         fin <= '1';
         wait for 2 ms;
      end loop;
      -- 98 Hz for 2 sec 
      for i in 1 to 2*98 loop  
         fin <= '0';
         wait for 5102.04 us;
         fin <= '1';
         wait for 5102.04 us;
      end loop;
   end process;
   --*****************************************************************
   -- stimulus
   --*****************************************************************
   process
   begin
	   start <= '0';
      wait until falling_edge(clk);
      wait until falling_edge(clk);
	   start <= '1';
      wait until falling_edge(clk);
	   start <= '0';
      wait for 1.3 sec;
      wait until falling_edge(clk);
	   start <= '1';
      wait until falling_edge(clk);
	   start <= '0';
      wait for 1.2 sec;
      --**************************************************************
      -- terminate simulation
      --**************************************************************
      assert false
         report "Simulation Completed"
         severity failure;
   end process;
end arch;
