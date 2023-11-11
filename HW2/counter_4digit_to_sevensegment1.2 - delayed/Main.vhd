library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;


entity Main is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           o_s : out  unsigned (7 downto 0);
           o_e : out  unsigned (3 downto 0));
end Main;

architecture Behavioral of Main is

	signal Si1, si2, si3, si4, si5 : unsigned (3 downto 0);
	signal Si6 : unsigned (1 downto 0);

COMPONENT BCDtoSS
	PORT(
		bcssinp : IN unsigned(3 downto 0);          
		bcsso : OUT unsigned(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT counter0to3
	PORT(
		c3clk : IN std_logic;
		c3res : IN std_logic;          
		q : OUT unsigned(1 downto 0)
		);
	END COMPONENT;
	
	COMPONENT counter0to9999
	PORT(
		c9clk : IN std_logic;
		c9res : IN std_logic;          
		firstdigit : OUT unsigned(3 downto 0);
		seconddigit : OUT unsigned(3 downto 0);
		thirddigit : OUT unsigned(3 downto 0);
		fourthdigit : OUT unsigned(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT decoder2to4
	PORT(
		dcinp : IN unsigned(1 downto 0);          
		dco : OUT unsigned(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT mux4to1
	PORT(
		mxinp1 : IN unsigned(3 downto 0);
		mxinp2 : IN unsigned(3 downto 0);
		mxinp3 : IN unsigned(3 downto 0);
		mxinp4 : IN unsigned(3 downto 0);
		mxs : IN unsigned(1 downto 0);          
		mxo : OUT unsigned(3 downto 0)
		);
	END COMPONENT;

begin

Inst_BCDtoSS: BCDtoSS PORT MAP(
		bcssinp => Si1,
		bcsso => o_s
	);
	
	Inst_counter0to3: counter0to3 PORT MAP(
		c3clk => clk,
		c3res => rst,
		q => Si6
	);
	
	Inst_counter0to9999: counter0to9999 PORT MAP(
		c9clk => clk,
		c9res => rst,
		firstdigit => si2,
		seconddigit => si3,
		thirddigit => si4,
		fourthdigit => si5
	);
	
	Inst_decoder2to4: decoder2to4 PORT MAP(
		dcinp => Si6,
		dco => o_e
	);
	
	Inst_mux4to1: mux4to1 PORT MAP(
		mxinp1 => si2,
		mxinp2 => si3,
		mxinp3 => si4,
		mxinp4 => si5,
		mxs => Si6,
		mxo => Si1
	);

end Behavioral;

