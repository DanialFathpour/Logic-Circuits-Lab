----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:08:56 04/22/2023 
-- Design Name: 
-- Module Name:    AB - Behavioral 
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

entity AB is
    Port ( ABA : in  STD_LOGIC_VECTOR (7 downto 0);
           ABB : in  STD_LOGIC_VECTOR (7 downto 0);
           ABSel : in  STD_LOGIC_VECTOR (3 downto 0);
           ABCin : in  STD_LOGIC;
           ABO : out  STD_LOGIC_VECTOR (7 downto 0));
end AB;

architecture Behavioral of AB is

COMPONENT AddSub
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);
		Op : IN std_logic;          
		O : OUT std_logic_vector(7 downto 0);
		Cout : OUT std_logic
		);
END COMPONENT;

signal c : STD_LOGIC_VECTOR (5 downto 0);
signal s1,s2,s3,s4,s5,s6 : STD_LOGIC_VECTOR (7 downto 0);

begin

AS0:AddSub port map(ABA,"00000001",'0',s1,c(0));
AS1:AddSub port map(ABA,"00000001",'1',s2,c(1));
AS2:AddSub port map(ABB,"00000001",'0',s3,c(2));
AS3:AddSub port map(ABB,"00000001",'1',s4,c(3));
AS4:AddSub port map(ABA,ABB,'0',s5,c(4));
AS5:AddSub port map(ABA,ABB,ABCin,s6,c(5));

ABO <= (ABA) when ABSel = "0000" else
	s1 when ABSel = "0001" else
	s2 when ABSel = "0010" else
	(ABB) when ABSel = "0011" else
	s3 when ABSel = "0100" else
	s4 when ABSel = "0101" else
	s5 when ABSel = "0110" else
	s6 when ABSel = "0111" else
	"00000000";

end Behavioral;

