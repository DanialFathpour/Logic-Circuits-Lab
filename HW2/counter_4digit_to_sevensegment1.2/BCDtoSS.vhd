library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;


entity BCDtoSS is
    Port ( bcssinp : in  unsigned (3 downto 0);
           bcsso : out  unsigned (7 downto 0));
end BCDtoSS;

architecture Behavioral of BCDtoSS is

begin

bcsso <= "00111111" when bcssinp ="0000" else
	  "00000110" when bcssinp ="0001" else
	  "01011011" when bcssinp ="0010" else
	  "01001111" when bcssinp ="0011" else
	  "01110010" when bcssinp ="0100" else
	  "01101101" when bcssinp ="0101" else
	  "01111101" when bcssinp ="0110" else
	  "00000111" when bcssinp ="0111" else
	  "01111111" when bcssinp ="1000" else
	  "01100111";

end Behavioral;

