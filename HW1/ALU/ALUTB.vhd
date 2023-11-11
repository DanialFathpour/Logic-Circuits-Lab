--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:46:45 04/22/2023
-- Design Name:   
-- Module Name:   D:/University/6/Logic Circuits Lab/HW1/ALU/ALUTB.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Main
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALUTB IS
END ALUTB;
 
ARCHITECTURE behavior OF ALUTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Main
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         cin : IN  std_logic;
         Sel : IN  std_logic_vector(3 downto 0);
         Output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal cin : std_logic := '0';
   signal Sel : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Main PORT MAP (
          A => A,
          B => B,
          cin => cin,
          Sel => Sel,
          Output => Output
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      -- insert stimulus here 
		
		A <= "11110000";
		B <= "00001111";
		cin <= '0';
		
		Sel <= "0000";
		wait for 10 ns;
		
		Sel <= "0001";
		wait for 10 ns;
		
		Sel <= "0010";
		wait for 10 ns;
		
		Sel <= "0011";
		wait for 10 ns;
		
		Sel <= "0100";
		wait for 10 ns;
		
		Sel <= "0101";
		wait for 10 ns;
		
		Sel <= "0110";
		wait for 10 ns;
		
		Sel <= "0111";
		wait for 10 ns;
		
		
		
		Sel <= "1000";
		wait for 10 ns;
		
		Sel <= "1001";
		wait for 10 ns;
		
		Sel <= "1010";
		wait for 10 ns;
		
		Sel <= "1011";
		wait for 10 ns;
		
		Sel <= "1100";
		wait for 10 ns;
		
		Sel <= "1101";
		wait for 10 ns;
		
		Sel <= "1110";
		wait for 10 ns;
		
		Sel <= "1111";
		wait for 10 ns;
		
		
		
		A <= "00110111";
		B <= "00101011";
		
		Sel <= "0000";
		wait for 10 ns;
		
		Sel <= "0001";
		wait for 10 ns;
		
		Sel <= "0010";
		wait for 10 ns;
		
		Sel <= "0011";
		wait for 10 ns;
		
		Sel <= "0100";
		wait for 10 ns;
		
		Sel <= "0101";
		wait for 10 ns;
		
		Sel <= "0110";
		wait for 10 ns;
		
		Sel <= "0111";
		wait for 10 ns;
		
		
		
		Sel <= "1000";
		wait for 10 ns;
		
		Sel <= "1001";
		wait for 10 ns;
		
		Sel <= "1010";
		wait for 10 ns;
		
		Sel <= "1011";
		wait for 10 ns;
		
		Sel <= "1100";
		wait for 10 ns;
		
		Sel <= "1101";
		wait for 10 ns;
		
		Sel <= "1110";
		wait for 10 ns;
		
		Sel <= "1111";
		wait for 10 ns;

      wait;
   end process;

END;
