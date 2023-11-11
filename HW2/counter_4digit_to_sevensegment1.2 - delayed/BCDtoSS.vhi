
-- VHDL Instantiation Created from source file BCDtoSS.vhd -- 00:14:22 04/30/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT BCDtoSS
	PORT(
		inp : IN std_logic_vector(3 downto 0);          
		o : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_BCDtoSS: BCDtoSS PORT MAP(
		inp => ,
		o => 
	);


