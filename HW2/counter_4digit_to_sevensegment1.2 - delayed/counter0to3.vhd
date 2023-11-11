library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;


entity counter0to3 is
    Port ( c3clk : in  STD_LOGIC;
           c3res : in  STD_LOGIC;
           q : out  unsigned (1 downto 0));
end counter0to3;

architecture Behavioral of counter0to3 is

signal count : integer range 0 to 3;
signal del : integer range 0 to 49999;

begin

process (c3clk, c3res)
	begin
		if (c3res = '1') then
			count <= 0;
		elsif (rising_edge(c3clk)) then
			if ( count = 3 ) then
				count <= 0;
			else
				count <= count + 1;
			end if;
		end if;
end process;

q <= to_unsigned (count,2);

end Behavioral;

