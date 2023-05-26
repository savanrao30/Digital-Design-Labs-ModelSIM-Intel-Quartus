-- ========================================
-- file_name:  tbird_fsm.vhd  
-- author: Savan Yeshwanth Rao (2784780), Nischal Gudehindler Lingeswara (2825960)  
-- ========================================
library ieee;
use ieee.std_logic_1164.all;


entity tbird_fsm is
port( 
        clk, reset: in std_logic; 
        left, right, haz: in std_logic; 
        light: out std_logic_vector(5 downto 0) 
 ); 
end tbird_fsm;

architecture rtl_arch of tbird_fsm is
type State_type IS (idle, l0,l1,l2,r0,r1,r2,h1,h2);               -- State defination
	signal State_reg : State_Type;
	signal State_next: State_Type; 
	signal light_b : std_logic_vector(5 downto 0);
        signal haz_out : std_logic_vector(5 downto 0);
							      
begin 
  process (right,left,haz,State_reg) 
  begin 			 
	case State_reg IS

		when idle =>
               haz_out <= "111111";
		    if haz='1' then 
               haz_out <= "111111";
			   State_next <= h1;
			elsif left='1' then 
			    State_next <= l0; 
            elsif right='1' then 
                State_next <= r0; 
            else
                haz_out <= "000000";
                State_next <= idle;
			end if; 
		

		when l0 => 
			if left='1'and haz = '0' then
				State_next <= l1; 
            else
                State_next <= idle; 
			end if; 

		when l1 => 
			if left='1' and haz = '0' then 
				State_next <= l2; 
            else
                 State_next <= idle;
			end if; 

		when l2 => 
			State_next <= idle; 
			

		when r0 => 
			if right='1' and haz = '0' then 
				State_next <= r1; 
            else
               State_next <= idle; 
			end if; 

		when r1 => 
			if right='1' and haz = '0' then 
				State_next <= r2; 
            else
               State_next <= idle;
			end if; 

		when r2 => 
				State_next <= idle; 
			
		when h1 => 
            State_next <= idle;
   --//         haz_out <= "000000";
						
		when others  =>
			State_next <= idle;
	end case; 
  end process;
  
  process (clk,reset,haz) 
  begin
   if (reset = '1') then            -- On Reset, stay in idle state
	  State_reg <= idle;
   elsif rising_edge(clk) then 
      State_reg <= State_next ;
   end if;	  
  end process;

-- Signal assignment

with State_reg select
    light_b <= 
               "001000" when l0,
               "011000" when l1,
               "111000" when l2,
               "000100" when r0,
               "000110" when r1,
               "000111" when r2,
                haz_out when idle,
               "000000" when others;

--Output assignment
light <= light_b;

end rtl_arch;
