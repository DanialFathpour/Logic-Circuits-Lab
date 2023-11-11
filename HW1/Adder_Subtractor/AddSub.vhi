
-- VHDL Instantiation Created from source file AddSub.vhd -- 14:05:40 04/22/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT AddSub
	PORT(
		A : IN std_logic_vector(7 downto 0);
		B : IN std_logic_vector(7 downto 0);
		Op : IN std_logic;          
		O : OUT std_logic_vector(7 downto 0);
		Cout : OUT std_logic
		);
	END COMPONENT;

	Inst_AddSub: AddSub PORT MAP(
		A => ,
		B => ,
		Op => ,
		O => ,
		Cout => 
	);


