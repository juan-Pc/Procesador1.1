
-- VHDL Instantiation Created from source file ALU.vhd -- 22:49:51 04/26/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		Crs1 : IN std_logic_vector(31 downto 0);
		Crs2 : IN std_logic_vector(31 downto 0);
		ALU_Op : IN std_logic_vector(5 downto 0);          
		ALU_Out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		Crs1 => ,
		Crs2 => ,
		ALU_Op => ,
		ALU_Out => 
	);


