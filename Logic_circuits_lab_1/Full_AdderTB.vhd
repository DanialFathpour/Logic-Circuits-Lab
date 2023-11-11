--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:57:52 03/01/2023
-- Design Name:   
-- Module Name:   D:/University/6/Logic Circuits Lab/Logic_circuits_lab_1/Full_AdderTB.vhd
-- Project Name:  Logic_circuits_lab_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Full_Adder
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
 
ENTITY Full_AdderTB IS
END Full_AdderTB;
 
ARCHITECTURE behavior OF Full_AdderTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_Adder
    PORT(
         A0 : IN  std_logic;
         B0 : IN  std_logic;
         Cin : IN  std_logic;
         Sum : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A0 : std_logic := '0';
   signal B0 : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal Sum : std_logic;
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Full_Adder PORT MAP (
          A0 => A0,
          B0 => B0,
          Cin => Cin,
          Sum => Sum,
          Cout => Cout
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		A0 <= '1';
		B0 <= '1';
      wait;
   end process;

END;
