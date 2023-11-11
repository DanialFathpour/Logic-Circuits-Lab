----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:35:29 03/01/2023 
-- Design Name: 
-- Module Name:    LEDs - Behavioral 
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

entity LEDs is
    Port ( in1,in2 : in  STD_LOGIC;
           o1,o2 : out  STD_LOGIC);
end LEDs;

architecture Behavioral of LEDs is

begin
	o1 <= in1;
	o2 <= in2;
end Behavioral;

