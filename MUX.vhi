
-- VHDL Instantiation Created from source file MUX.vhd -- 23:41:55 04/25/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MUX
	PORT(
		RfToMux : IN std_logic_vector(31 downto 0);
		inm : IN std_logic;
		seuToMux : IN std_logic_vector(31 downto 0);          
		MuxToAlu : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_MUX: MUX PORT MAP(
		RfToMux => ,
		inm => ,
		seuToMux => ,
		MuxToAlu => 
	);


