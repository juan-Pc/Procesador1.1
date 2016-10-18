
-- VHDL Instantiation Created from source file NPC.vhd -- 19:21:18 04/25/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT NPC
	PORT(
		Direccion : IN std_logic_vector(31 downto 0);
		Reset : IN std_logic;
		Clock : IN std_logic;          
		NuevaDireccion : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_NPC: NPC PORT MAP(
		Direccion => ,
		NuevaDireccion => ,
		Reset => ,
		Clock => 
	);


