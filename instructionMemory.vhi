
-- VHDL Instantiation Created from source file instructionMemory.vhd -- 19:53:28 04/25/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT instructionMemory
	PORT(
		address : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;          
		outInstruction : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_instructionMemory: instructionMemory PORT MAP(
		address => ,
		reset => ,
		outInstruction => 
	);


