----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:13:15 04/05/2023 
-- Design Name: 
-- Module Name:    fa2 - Behavioral 
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

entity fa2 is
    Port ( A1 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           Cin1 : in  STD_LOGIC;
           Sum1 : out  STD_LOGIC;
           Cout1 : out  STD_LOGIC);
end fa2;

architecture Behavioral of fa2 is

signal Sig1,Sig2,Sig3 : STD_LOGIC;

begin

	Sig1 <= A1 xor B1;
	Sig2 <= A1 and B1;
	Sig3 <= Sig1 and Cin1;
	Cout1 <= Sig2 or Sig3;
	Sum1 <= 	Cin1 xor Sig1;

end Behavioral;


