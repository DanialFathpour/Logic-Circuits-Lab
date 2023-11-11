--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:02:10 04/22/2023
-- Design Name:   
-- Module Name:   D:/University/6/Logic Circuits Lab/HW1/Logic_Block/LBTB.vhd
-- Project Name:  Logic_Block
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LB
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
USE ieee.numeric_std.ALL;
 
ENTITY LBTB IS
END LBTB;
 
ARCHITECTURE behavior OF LBTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LB
    PORT(
         LBA : IN  std_logic_vector(7 downto 0);
         LBB : IN  std_logic_vector(7 downto 0);
         LBSel : IN  std_logic_vector(3 downto 0);
         LBO : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal LBA : std_logic_vector(7 downto 0) := (others => '0');
   signal LBB : std_logic_vector(7 downto 0) := (others => '0');
   signal LBSel : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal LBO : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LB PORT MAP (
          LBA => LBA,
          LBB => LBB,
          LBSel => LBSel,
          LBO => LBO
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      -- insert stimulus here 
		
		LBA <= "11110000";
		LBB <= "00001111";
		
		LBSel <= "1000";
		wait for 10 ns;
		
		LBSel <= "1001";
		wait for 10 ns;
		
		LBSel <= "1010";
		wait for 10 ns;
		
		LBSel <= "1011";
		wait for 10 ns;
		
		LBSel <= "1100";
		wait for 10 ns;
		
		LBSel <= "1101";
		wait for 10 ns;
		
		LBSel <= "1110";
		wait for 10 ns;
		
		LBSel <= "1111";
		wait for 10 ns;

      wait;
   end process;

END;
