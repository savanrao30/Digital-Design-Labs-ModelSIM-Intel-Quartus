library ieee;
use ieee.std_logic_1164.all;

entity epwm_tb is
end epwm_tb;

architecture arch of epwm_tb is
   constant T   : time    := 10 ns; -- clk period
   signal clk   : std_logic;
   signal reset : std_logic;
   signal d, w  : std_logic_vector(3 downto 0);
   signal pulse : std_logic;
begin
   --*****************************************************************
   -- instantiation
   --*****************************************************************
   -- instantiatie the unit under test
   epwm_unit : entity work.epwm(rtl_arch)
      port map(
         clk       => clk,
         reset     => reset,
         d      => d,
         w      => w,
         pulse  => pulse
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
   -- reset asserted for T/2
   reset <= '1', '0' after T / 2;
   
   --*****************************************************************
   -- stimulus
   --*****************************************************************
   process
   begin
      --**************************************************************
      -- test different patterns 
      --**************************************************************
     -- pattern 1
      d <= "0100";
      w <= "0100";
      wait for 8 * 10 * T;   
     -- pattern 2
      d <= "0001";
      w <= "1111";
      wait for 16 * 10 * T;   
     -- pattern 3
      d <= "1111";
      w <= "0001";
      wait for 16 * 10 * T;   
     -- pattern 4
      d <= "0000";
      w <= "0001";
      wait for 50 * T;   
     -- pattern 5
      d <= "0001";
      w <= "0000";
      wait for 50 * T;   
      --**************************************************************
      -- terminate simulation
      --**************************************************************
      assert false
         report "Simulation Completed"
         severity failure;
   end process;
end arch;
