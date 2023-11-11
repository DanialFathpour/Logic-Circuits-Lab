library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;


--Danial Fath pour 9923059


--Keypad 4x3

--assumptions :

-- column is input
-- row is output
-- display is 8 bit seven segment
-- pull up
-- if it's pull down change zeros to one and vice versa in columns and rows NOT seven segment

entity Main is
    Port ( clk : in  STD_LOGIC;
			  res : in  STD_LOGIC;
			  column : in  	STD_LOGIC_VECTOR (2 downto 0);
			  row : out  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end Main;

architecture Behavioral of Main is

type row_state is (row0, row1, row2, row3);
signal current_state : row_state ;
signal next_state : row_state := row0;
signal r_count : integer range 0 to 4999999 := 0; 

begin


process (clk, res)
	begin
	
	if ( res = '1' ) then
		current_state <= row0;
		elsif ( rising_edge(clk)) then
			current_state <= next_state;
	end if;
	
end process;
 

process( current_state )
begin
	
	case current_state is
	
		when row0 =>
			if(column = "110") then
				output <= "00000110"; --1
				for i in 1 to 4999999 loop
					r_count <= r_count + 1;
				end loop;
				r_count <= 0;
				
			elsif(column = "101") then
				output <= "01011011"; --2
				for i in 1 to 4999999 loop
					r_count <= r_count + 1;
				end loop;
				r_count <= 0;
			elsif(column = "011") then
				output <= "01001111"; --3
				for i in 1 to 4999999 loop
					r_count <= r_count + 1;
				end loop;
				r_count <= 0;
			else output <= "00000000";
			end if;
			row <= "1101";
			next_state <= row1;
			
		when row1 =>
			if(column = "110") then 
				output <= "01100110"; --4
				for i in 1 to 4999999 loop
					r_count <= r_count + 1;
				end loop;
				r_count <= 0;
			elsif(column = "101") then 
				output <= "01101101"; --5
				for i in 1 to 4999999 loop
					r_count <= r_count + 1;
				end loop;
				r_count <= 0;
			elsif(column = "011") then 
				output <= "01111101"; --6
				for i in 1 to 4999999 loop
					r_count <= r_count + 1;
				end loop;
				r_count <= 0;
			else output <= "00000000";
			end if;
			row <= "1011";
			next_state <= row2;
			
		when row2 =>
			if(column = "110") then 
				output <= "00000111"; --7
				for i in 1 to 4999999 loop
					r_count <= r_count + 1;
				end loop;
				r_count <= 0;
			elsif(column = "101") then 
				output <= "01111111"; --8
				for i in 1 to 4999999 loop
					r_count <= r_count + 1;
				end loop;
				r_count <= 0;
			elsif(column = "011") then 
				output <= "01100111"; --9
				for i in 1 to 4999999 loop
					r_count <= r_count + 1;
				end loop;
				r_count <= 0;
			else output <= "00000000";
			end if;
			row <= "0111";
			next_state <= row3;
			
		when row3 =>
			if(column = "110") then
				output <= "01110111"; --A
				for i in 1 to 4999999 loop
					r_count <= r_count + 1;
				end loop;
				r_count <= 0;
			elsif(column = "101") then
				output <= "00111111"; --0
				for i in 1 to 4999999 loop
					r_count <= r_count + 1;
				end loop;
				r_count <= 0;
			elsif(column = "011") then 
				output <= "01111001"; --E
				for i in 1 to 4999999 loop
					r_count <= r_count + 1;
				end loop;
				r_count <= 0;
			else output <= "00000000";
			end if;
			row <= "1110";
			next_state <= row0;
			
	end case;

end process;


end Behavioral;