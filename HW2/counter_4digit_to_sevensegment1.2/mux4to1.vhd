library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

entity mux4to1 is
    Port ( mxinp1 : in  unsigned (3 downto 0);
           mxinp2 : in  unsigned (3 downto 0);
           mxinp3 : in  unsigned (3 downto 0);
           mxinp4 : in  unsigned (3 downto 0);
           mxs : in  unsigned (1 downto 0);
           mxo : out  unsigned (3 downto 0));
end mux4to1;

architecture Behavioral of mux4to1 is

begin

mxo <= mxinp1 when mxs ="00" else
	  mxinp2 when mxs ="01" else
	  mxinp3 when mxs ="10" else
	  mxinp4;

end Behavioral;

