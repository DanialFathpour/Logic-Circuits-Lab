library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;


ENTITY MTB IS
END MTB;
 
ARCHITECTURE behavior OF MTB IS 
 
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
