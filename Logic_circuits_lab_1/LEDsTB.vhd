--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:36:29 03/01/2023
-- Design Name:   
-- Module Name:   D:/University/6/Logic Circuits Lab/Logic_circuits_lab_1/LEDsTB.vhd
-- Project Name:  Logic_circuits_lab_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LEDs
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
 
ENTITY LEDsTB IS
END LEDsTB;
 
ARCHITECTURE behavior OF LEDsTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LEDs
    PORT(
         in1 : IN  std_logic;
         in2 : IN  std_logic;
         o1 : OUT  std_logic;
         o2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic := '0';
   signal in2 : std_logic := '0';

 	--Outputs
   signal o1 : std_logic;
   signal o2 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LEDs PORT MAP (
          in1 => in1,
          in2 => in2,
          o1 => o1,
          o2 => o2
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
	in1 <= '1';
	in2 <= '1';
	wait for 100 ns;
	in1 <= '0';
	in2 <= '1';
      wait;
   end process;

END;
