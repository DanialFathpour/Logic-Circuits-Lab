library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;



entity Main is
    Port ( res : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           data : out  STD_LOGIC_VECTOR (3 downto 0));
end Main;




architecture Behavioral of Main is

type statenum is (zero, one, two, three, four, five, six, seven, eight, nine);

signal currentstate, nextstate : statenum ;	

begin

process (clk, res)
	begin
	if ( res = '1' ) then
		currentstate <= zero;
		elsif ( rising_edge(clk)) then
			currentstate <= nextstate;
	end if;
end process;

process ( currentstate )

	begin
	
	case currentstate is 
	when zero =>
		data <= "0000";
		nextstate <= one ;
	when one =>
		data <= "0001";
		nextstate <= two ;
	when two =>
		data <= "0010";
		nextstate <= three ;
	when three =>
		data <= "0011";
		nextstate <= four ;
	when four =>
		data <= "0100";
		nextstate <= five ;
	when five =>
		data <= "0101";
		nextstate <= six ;
	when six =>
		data <= "0110";
		nextstate <= seven ;
	when seven =>
		data <= "0111";
		nextstate <= eight ;
	when eight =>
		data <= "1000";
		nextstate <= nine ;
	when nine =>
		data <= "1001";
		nextstate <= zero ;
	end case;	
end process;


end Behavioral;

