library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

 
ENTITY c0t9999TB IS
END c0t9999TB;
 
ARCHITECTURE behavior OF c0t9999TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter0to9999
    PORT(
         clk : IN  std_logic;
         res : IN  std_logic;
         firstdigit : OUT  unsigned(3 downto 0);
         seconddigit : OUT  unsigned(3 downto 0);
         thirddigit : OUT  unsigned(3 downto 0);
         fourthdigit : OUT  unsigned(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal res : std_logic := '0';

 	--Outputs
   signal firstdigit : unsigned(3 downto 0);
   signal seconddigit : unsigned(3 downto 0);
   signal thirddigit : unsigned(3 downto 0);
   signal fourthdigit : unsigned(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter0to9999 PORT MAP (
          clk => clk,
          res => res,
          firstdigit => firstdigit,
          seconddigit => seconddigit,
          thirddigit => thirddigit,
          fourthdigit => fourthdigit
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
