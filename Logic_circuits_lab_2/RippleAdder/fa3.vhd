----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:14:33 04/05/2023 
-- Design Name: 
-- Module Name:    fa3 - Behavioral 
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


entity fa3 is
    Port ( A2 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           Cin2 : in  STD_LOGIC;
           Sum2 : out  STD_LOGIC;
           Cout2 : out  STD_LOGIC);
end fa3;

architecture Behavioral of fa3 is

signal Sig1,Sig2,Sig3 : STD_LOGIC;

begin

	Sig1 <= A2 xor B2;
	Sig2 <= A2 and B2;
	Sig3 <= Sig1 and Cin2;
	Cout2 <= Sig2 or Sig3;
	Sum2 <= 	Cin2 xor Sig1;

end Behavioral;

