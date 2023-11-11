----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:33:40 04/22/2023 
-- Design Name: 
-- Module Name:    AddSub - Behavioral 
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

entity AddSub is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Op : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (7 downto 0);
           Cout : out  STD_LOGIC);
end AddSub;

architecture Behavioral of AddSub is

signal Carry, operation : STD_LOGIC_VECTOR (7 downto 0);

COMPONENT Full_Adder
	PORT(
		in1 : IN std_logic;
		in2 : IN std_logic;
		cin : IN std_logic;          
		sum : OUT std_logic;
		cout : OUT std_logic
		);
END COMPONENT;

begin

g1: for i in 0 to 7 generate
    operation(i) <= (OP xor B(i));
  end generate g1;

FA0:Full_Adder port map(A(0),operation(0),OP, O(0),Carry(0));
FA1:Full_Adder port map(A(1),operation(1),Carry(0), O(1),Carry(1));
FA2:Full_Adder port map(A(2),operation(2),Carry(1), O(2),Carry(2));
FA3:Full_Adder port map(A(3),operation(3),Carry(2), O(3),Carry(3));
FA4:Full_Adder port map(A(4),operation(4),Carry(3), O(4),Carry(4));
FA5:Full_Adder port map(A(5),operation(5),Carry(4), O(5),Carry(5));
FA6:Full_Adder port map(A(6),operation(6),Carry(5), O(6),Carry(6));
FA7:Full_Adder port map(A(7),operation(7),Carry(6), O(7),Carry(7));

Cout <= Carry(7);

end Behavioral;

