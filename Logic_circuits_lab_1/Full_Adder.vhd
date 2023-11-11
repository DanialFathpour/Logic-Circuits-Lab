----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:50:07 03/01/2023 
-- Design Name: 
-- Module Name:    Full_Adder - Behavioral 
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

entity Full_Adder is
    Port ( A0,B0,Cin : in  STD_LOGIC;
           Sum,Cout : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

	signal S1,S2,S3 : STD_LOGIC;

begin

	S1 <= A0 xor B0;
	S2 <= A0 and B0;
	S3 <= S1 and Cin;
	Cout <= S2 or S3;
	Sum <= 	Cin xor S1;

end Behavioral;

