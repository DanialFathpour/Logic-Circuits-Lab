--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:51:32 04/22/2023
-- Design Name:   
-- Module Name:   D:/University/6/Logic Circuits Lab/HW1/Adder_Subtractor/ASTB.vhd
-- Project Name:  Adder_Subtractor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AddSub
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
 
ENTITY ASTB IS
END ASTB;
 
ARCHITECTURE behavior OF ASTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AddSub
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Op : IN  std_logic;
         O : OUT  std_logic_vector(7 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Op : std_logic := '0';

 	--Outputs
   signal O : std_logic_vector(7 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AddSub PORT MAP (
          A => A,
          B => B,
          Op => Op,
          O => O,
          Cout => Cout
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      -- insert stimulus here 
		A <= "01111111";
		B <= "00000001";
		Op <= '0';
		wait for 100 ns;
		
		A <= "00100111";
		B <= "00001011";
		Op <= '1';

      wait;
   end process;

END;
