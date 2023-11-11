----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:36:32 04/22/2023 
-- Design Name: 
-- Module Name:    Main - Behavioral 
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

entity Main is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           cin : in  STD_LOGIC;
           Sel : in  STD_LOGIC_VECTOR (3 downto 0);
           Output : out  STD_LOGIC_VECTOR (7 downto 0));
end Main;

architecture Behavioral of Main is

COMPONENT LB
	PORT(
		LBA : IN std_logic_vector(7 downto 0);
		LBB : IN std_logic_vector(7 downto 0);
		LBSel : IN std_logic_vector(3 downto 0);          
		LBO : OUT std_logic_vector(7 downto 0)
		);
END COMPONENT;
	
COMPONENT AB
	PORT(
		ABA : IN std_logic_vector(7 downto 0);
		ABB : IN std_logic_vector(7 downto 0);
		ABSel : IN std_logic_vector(3 downto 0);
		ABCin : IN std_logic;          
		ABO : OUT std_logic_vector(7 downto 0)
		);
END COMPONENT;

signal s1,s2,s3 : STD_LOGIC_VECTOR (7 downto 0);

begin

LB0:LB port map(A,B,Sel,s1);
AB0:AB port map(A,B,Sel,cin,s2);

Output <= s2 when Sel(3) = '0' else
	s1 when Sel(3) = '1' else
	"00000000";

end Behavioral;

