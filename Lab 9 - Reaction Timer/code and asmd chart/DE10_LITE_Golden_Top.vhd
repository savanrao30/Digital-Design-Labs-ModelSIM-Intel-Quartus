-- ========================================
-- file_name:  DE10_LITE_GOLDEN.vhd  
-- author: Savan Yeshwanth Rao (2784780), Nischal Gudehindler Lingeswara (2825960)  
-- ========================================


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all ;


entity DE10_LITE_Golden_Top is
port(
   
	   MAX10_CLK1_50  : in std_logic;
		HEX0 : out std_logic_vector(7 downto 0);
		HEX1 : out std_logic_vector(7 downto 0);
		HEX2 : out std_logic_vector(7 downto 0);
		KEY  : in std_logic_vector (1 downto 0);
		LEDR : out std_logic_vector(1 downto 0);
	  	SW   : in std_logic_vector(1 downto 0)

);
end DE10_LITE_Golden_Top;


Architecture RTL of DE10_LITE_Golden_Top is
 BEGIN


 fsmd_rtimer : entity work.fsmd_rtimer
      port map(
        clk => MAX10_CLK1_50,
		count_0 => HEX0,
		count_1 => HEX1,
		count_2 => HEX2,
		go      => LEDR(1),
		ready   => LEDR(0),
		
		start   => (not KEY(1)),
		stop    => (not KEY(0)),
		clear   => SW(1),
		reset   => SW(0)
      );




END RTL;
