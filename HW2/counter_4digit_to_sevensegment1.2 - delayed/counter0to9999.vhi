
-- VHDL Instantiation Created from source file counter0to9999.vhd -- 00:16:08 04/30/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT counter0to9999
	PORT(
		clk : IN std_logic;
		res : IN std_logic;          
		firstdigit : OUT std_logic_vector(3 downto 0);
		seconddigit : OUT std_logic_vector(3 downto 0);
		thirddigit : OUT std_logic_vector(3 downto 0);
		fourthdigit : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_counter0to9999: counter0to9999 PORT MAP(
		clk => ,
		res => ,
		firstdigit => ,
		seconddigit => ,
		thirddigit => ,
		fourthdigit => 
	);


