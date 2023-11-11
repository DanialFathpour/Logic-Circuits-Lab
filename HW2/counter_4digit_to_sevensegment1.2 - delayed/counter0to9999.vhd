library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;


entity counter0to9999 is
    Port ( c9clk : in  STD_LOGIC;
           c9res : in  STD_LOGIC;
           firstdigit : out  unsigned (3 downto 0);
           seconddigit : out  unsigned (3 downto 0);
           thirddigit : out  unsigned (3 downto 0);
           fourthdigit : out  unsigned (3 downto 0));
end counter0to9999;

architecture Behavioral of counter0to9999 is

signal count1,count2,count3,count4 : integer range 0 to 10;
signal del : integer range 0 to 49999;

begin

process (c9clk, c9res)
	begin
		if (c9res = '1') then
			count1 <= 0; count2 <= 0; count3 <= 0; count4 <= 0;del <= 0;
		elsif (rising_edge(c9clk)) then
			if ( del < 49999 ) then
				del <= del + 1;
			else 
				del <= 0;
				if ( count1 = 9 ) then
					count1 <= 0;
					count2 <= count2 + 1;
					if ( count2 = 9 ) then
						count2 <= 0;
						count3 <= count3 + 1;
						if ( count3 = 9 ) then
							count3 <= 0;
							count4 <= count4 + 1;
							if ( count4 = 9 ) then
								count1 <= 0; count2 <= 0; count3 <= 0; count4 <= 0;
							else
								count4 <= count4 + 1;
							end if;
						else
							count3 <= count3 + 1;
						end if;
					else
						count2 <= count2 + 1;
					end if;
				else
					count1 <= count1 + 1;
				end if;
			end if;
		end if;
end process;

firstdigit <= to_unsigned (count1,4);
seconddigit <= to_unsigned (count2,4);
thirddigit <= to_unsigned (count3,4);
fourthdigit <= to_unsigned (count4,4);

end Behavioral;

