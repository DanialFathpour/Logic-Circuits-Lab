--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:04:28 05/10/2023
-- Design Name:   
-- Module Name:   D:/University/6/Logic Circuits Lab/Car_Switch_2/tbb.vhd
-- Project Name:  Car_Switch_2
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
 
ENTITY tbb IS
END tbb;
 
ARCHITECTURE behavior OF tbb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Main
    PORT(
         switch : IN  std_logic;
         ph_door : IN  std_logic;
         alarm : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal switch : std_logic := '0';
   signal ph_door : std_logic := '0';

 	--Outputs
   signal alarm : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Main PORT MAP (
          switch => switch,
          ph_door => ph_door,
          alarm => alarm
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      -- insert stimulus here 
	switch <= '1';
		wait for 10 ns;
		switch <= '0';
		
		wait for 50 ns;
		
		ph_door <= '1';
		wait for 100 ns;
		
		switch <= '1';
		wait for 10 ns;
		switch <= '0';
		
		wait for 100 ns;
		
		switch <= '1';
		wait for 10 ns;
		switch <= '0';
		
		
		ph_door <= '0';
		wait for 100 ns;
		
		switch <= '1';
		wait for 10 ns;
		switch <= '0';
		
		wait for 100 ns;
		
		switch <= '1';
		wait for 10 ns;
		switch <= '0';
		
		
		
		ph_door <= '1';
		wait for 100 ns;
		
		switch <= '1';
		wait for 10 ns;
		switch <= '0';
		
		wait for 100 ns;
		
		switch <= '1';
		wait for 10 ns;
		switch <= '0';
      wait;
   end process;

END;
