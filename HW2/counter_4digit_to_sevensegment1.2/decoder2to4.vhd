library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

entity decoder2to4 is
    Port ( dcinp : in  unsigned (1 downto 0);
          dco : out  unsigned (3 downto 0));
end decoder2to4;

architecture Behavioral of decoder2to4 is

begin

dco <= "0001" when dcinp ="00" else
	  "0010" when dcinp ="01" else
	  "0100" when dcinp ="10" else
	  "1000";


end Behavioral;

