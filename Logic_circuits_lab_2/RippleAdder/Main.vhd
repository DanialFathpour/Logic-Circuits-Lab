----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:17:09 04/05/2023 
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
    Port ( in1 : in  STD_LOGIC_VECTOR (2 downto 0);
           in2 : in  STD_LOGIC_VECTOR (2 downto 0);
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (2 downto 0);
           Cout : out  STD_LOGIC);
end Main;

architecture Behavioral of Main is

signal Si1,Si2 : STD_LOGIC;

COMPONENT fa1
	PORT(
		A0 : IN std_logic;
		B0 : IN std_logic;
		Cin0 : IN std_logic;          
		Sum0 : OUT std_logic;
		Cout0 : OUT std_logic
		);
END COMPONENT;

COMPONENT fa2
	PORT(
		A1 : IN std_logic;
		B1 : IN std_logic;
		Cin1 : IN std_logic;          
		Sum1 : OUT std_logic;
		Cout1 : OUT std_logic
		);
END COMPONENT;

COMPONENT fa3
	PORT(
		A2 : IN std_logic;
		B2 : IN std_logic;
		Cin2 : IN std_logic;          
		Sum2 : OUT std_logic;
		Cout2 : OUT std_logic
		);
END COMPONENT;

begin

Inst_fa1: fa1 PORT MAP(
		A0 => in1(0),
		B0 => in2(0),
		Cin0 => Cin,
		Sum0 => Sum(0),
		Cout0 => Si1
	);
	
Inst_fa2: fa2 PORT MAP(
		A1 => in1(1),
		B1 => in2(1),
		Cin1 => Si1,
		Sum1 => Sum(1),
		Cout1 => Si2
	);
	
Inst_fa3: fa3 PORT MAP(
		A2 => in1(2),
		B2 => in2(2),
		Cin2 => Si2,
		Sum2 => Sum(2),
		Cout2 => Cout
	);

end Behavioral;

