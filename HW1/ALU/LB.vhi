
-- VHDL Instantiation Created from source file LB.vhd -- 14:37:43 04/22/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT LB
	PORT(
		LBA : IN std_logic_vector(7 downto 0);
		LBB : IN std_logic_vector(7 downto 0);
		LBSel : IN std_logic_vector(3 downto 0);          
		LBO : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_LB: LB PORT MAP(
		LBA => ,
		LBB => ,
		LBSel => ,
		LBO => 
	);


