library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;


 
ENTITY TB IS
END TB;
 
ARCHITECTURE behavior OF TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Main
    PORT(
         clk : IN  std_logic;
         res : IN  std_logic;
         column : IN  std_logic_vector(2 downto 0);
         row : OUT  std_logic_vector(3 downto 0);
         output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal res : std_logic := '0';
   signal column : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal row : std_logic_vector(3 downto 0);
   signal output : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Main PORT MAP (
          clk => clk,
          res => res,
          column => column,
          row => row,
          output => output
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
		column <= "110";
		wait for 100 ns;
		column <= "101";
		wait for 100 ns;
		res <= '1';
		wait for 40 ns;
		res <= '0';
		column <= "011";
		wait for 100 ns;
		column <= "110";
		wait for 100 ns;
      wait;
   end process;

END;
