-- ========================================
-- file_name:  fsmd_0count.vhd  
-- author: Savan Yeshwanth Rao (2784780), Nischal Gudehindler Lingeswara (2825960)  
-- ========================================



library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all ;



entity fsmd_0count is
port(
clk, reset: in std_logic;
start: in std_logic;
a: in std_logic_vector(7 downto 0);
ready: out std_logic;
count: out std_logic_vector(3 downto 0)
);
end fsmd_0count;

architecture rtl_arch of fsmd_0count is
type state_type is (idle, shift, add);               -- State defination
	signal state_reg : state_Type;
	signal state_next: state_Type; 
	signal ready_b : std_logic;
	signal p_reg : std_logic_vector(3 downto 0);
 	signal n_reg : std_logic_vector(3 downto 0);
	signal a_reg : std_logic_vector(8 downto 0);
							      
begin 
  process ( reset,n_reg,start,State_reg) 
  begin
   if reset = '1' then
    p_reg <= "0000";
   else   			 
	case state_reg is
            
		when idle => 
		    if start='1' then 
               p_reg <= "0000";
			   state_next <= shift;
            else
                state_next <= idle;
			end if; 
		

		when shift => 
			if a_reg(8) = '0' then 
				state_next <= add ; 
	        elsif n_reg = "1000" then --111
                state_next <= idle; 
            else
                state_next <= shift; 
			end if; 

		when add => 
		    p_reg <= p_reg +'1';
			if n_reg = "1001" then ---111
				state_next <= idle; 
            else
                 state_next <= shift;
			end if; 

		when others =>
			state_next <= idle;
	end case;
   end if; 
  end process;
  
  process (clk,reset) 
  begin 
   if (reset = '1') then            -- On Reset, stay in idle state
	  state_reg <= idle;
   elsif rising_edge(clk) then 
      state_reg <= state_next ;
   end if;	  
  end process;
  
    process (clk,reset) 
  begin
   if (reset = '1') then            
	 n_reg <= "0000";
	 a_reg <= "100000000";
   elsif rising_edge(clk) then 
     if state_reg = idle then 
       n_reg <= "0000";
       a_reg <= '1' & a;
      elsif (state_reg = shift and n_reg < "1001")  then 
       a_reg <= a_reg(7 downto 0)&'0';
       n_reg <= n_reg + '1';
     end if;
   end if;	  
  end process;

-- Signal assignment

with state_reg select
    ready_b <= 
              '1' when idle,
              '0' when others;

--Output assignment
ready <= ready_b;
count <= p_reg;


  
end rtl_arch;

