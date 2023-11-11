
-- VHDL Instantiation Created from source file AB.vhd -- 14:38:04 04/22/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT AB
	PORT(
		ABA : IN std_logic_vector(7 downto 0);
		ABB : IN std_logic_vector(7 downto 0);
		ABSel : IN std_logic_vector(3 downto 0);
		ABCin : IN std_logic;          
		ABO : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_AB: AB PORT MAP(
		ABA => ,
		ABB => ,
		ABSel => ,
		ABCin => ,
		ABO => 
	);


