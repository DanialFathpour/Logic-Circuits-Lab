
-- VHDL Instantiation Created from source file mux4to1.vhd -- 00:17:11 04/30/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT mux4to1
	PORT(
		inp1 : IN std_logic_vector(3 downto 0);
		inp2 : IN std_logic_vector(3 downto 0);
		inp3 : IN std_logic_vector(3 downto 0);
		inp4 : IN std_logic_vector(3 downto 0);
		s : IN std_logic_vector(1 downto 0);          
		o : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_mux4to1: mux4to1 PORT MAP(
		inp1 => ,
		inp2 => ,
		inp3 => ,
		inp4 => ,
		s => ,
		o => 
	);


