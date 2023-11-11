--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:26:51 04/22/2023
-- Design Name:   
-- Module Name:   D:/University/6/Logic Circuits Lab/HW1/Arithmetic_Block/ABTB.vhd
-- Project Name:  Arithmetic_Block
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AB
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
 
ENTITY ABTB IS
END ABTB;
 
ARCHITECTURE behavior OF ABTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AB
    PORT(
         ABA : IN  std_logic_vector(7 downto 0);
         ABB : IN  std_logic_vector(7 downto 0);
         ABSel : IN  std_logic_vector(3 downto 0);
         ABCin : IN  std_logic;
         ABO : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ABA : std_logic_vector(7 downto 0) := (others => '0');
   signal ABB : std_logic_vector(7 downto 0) := (others => '0');
   signal ABSel : std_logic_vector(3 downto 0) := (others => '0');
   signal ABCin : std_logic := '0';

 	--Outputs
   signal ABO : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AB PORT MAP (
          ABA => ABA,
          ABB => ABB,
          ABSel => ABSel,
          ABCin => ABCin,
          ABO => ABO
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      -- insert stimulus here 
		
		ABA <= "11110000";
		ABB <= "00001111";
		ABCin <= '0';
		
		ABSel <= "0000";
		wait for 10 ns;
		
		ABSel <= "0001";
		wait for 10 ns;
		
		ABSel <= "0010";
		wait for 10 ns;
		
		ABSel <= "0011";
		wait for 10 ns;
		
		ABSel <= "0100";
		wait for 10 ns;
		
		ABSel <= "0101";
		wait for 10 ns;
		
		ABSel <= "0110";
		wait for 10 ns;
		
		ABSel <= "0111";
		wait for 10 ns;

      wait;
   end process;

END;
