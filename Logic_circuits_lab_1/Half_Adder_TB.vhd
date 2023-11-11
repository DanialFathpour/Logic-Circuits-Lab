--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:43:12 03/01/2023
-- Design Name:   
-- Module Name:   D:/University/6/Logic Circuits Lab/Logic_circuits_lab_1/Half_Adder_TB.vhd
-- Project Name:  Logic_circuits_lab_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Half_Adder
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
 
ENTITY Half_Adder_TB IS
END Half_Adder_TB;
 
ARCHITECTURE behavior OF Half_Adder_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Half_Adder
    PORT(
         A0 : IN  std_logic;
         B0 : IN  std_logic;
         Sum : OUT  std_logic;
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A0 : std_logic := '0';
   signal B0 : std_logic := '0';

 	--Outputs
   signal Sum : std_logic;
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Half_Adder PORT MAP (
          A0 => A0,
          B0 => B0,
          Sum => Sum,
          Cout => Cout
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	A0 <= '0';
	B0 <= '1';
      -- insert stimulus here 

      wait;
   end process;

END;
