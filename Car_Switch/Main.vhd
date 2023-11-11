library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;





entity Main is
    Port ( switch : in  STD_LOGIC;  -- remote switch     1 -> is pressed
           ph_door : in  STD_LOGIC;   -- shows if the physical door is open    1 -> open   ,  0 -> closed
           alarm : out  STD_LOGIC;
			  lockled : out  STD_LOGIC);   -- Alarm!!!!
end Main;



architecture Behavioral of Main is

type door_state is (lock, unlock);
signal current_state : door_state := unlock;	


begin


process ( switch )
	begin
		if ( rising_edge(switch)) then	
			case current_state is 
				when lock =>
					current_state <= unlock;
					lockled <= '0';
				when unlock =>
					current_state <= lock;
					lockled <= '1';
			end case;			
		end if;
end process;


process ( ph_door, current_state )
	begin
		case current_state is 
		when lock =>
			if ( rising_edge(ph_door) ) then
				alarm <= '1';
			end if;
		when unlock =>
			alarm <= '0';
		end case;	
end process;

end Behavioral;

