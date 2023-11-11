----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:08:28 04/05/2023 
-- Design Name: 
-- Module Name:    fa1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fa1 is
    Port ( A0 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           Cin0 : in  STD_LOGIC;
           Sum0 : out  STD_LOGIC;
           Cout0 : out  STD_LOGIC);
end fa1;

architecture Behavioral of fa1 is

signal Sig1,Sig2,Sig3 : STD_LOGIC;

begin

	Sig1 <= A0 xor B0;
	Sig2 <= A0 and B0;
	Sig3 <= Sig1 and Cin0;
	Cout0 <= Sig2 or Sig3;
	Sum0 <= 	Cin0 xor Sig1;

end Behavioral;

