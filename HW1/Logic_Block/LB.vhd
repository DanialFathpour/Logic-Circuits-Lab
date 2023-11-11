----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:00:58 04/22/2023 
-- Design Name: 
-- Module Name:    LB - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LB is
    Port ( LBA : in  std_logic_vector (7 downto 0);
           LBB : in  std_logic_vector (7 downto 0);
           LBSel : in  std_logic_vector (3 downto 0);
           LBO : out  std_logic_vector (7 downto 0));
end LB;

architecture Behavioral of LB is

begin

	LBO <= (NOT LBA) when LBSel = "1000" else
	(NOT LBB) when LBSel = "1001" else
	(LBA AND LBB) when LBSel = "1010" else
	(LBA NAND LBB) when LBSel = "1011" else
	(LBA OR LBB) when LBSel = "1100" else
	(LBA NOR LBB) when LBSel = "1101" else
	(LBA XOR LBB) when LBSel = "1110" else
	(LBA XNOR LBB) when LBSel = "1111" else
	"00000000";

end Behavioral;

