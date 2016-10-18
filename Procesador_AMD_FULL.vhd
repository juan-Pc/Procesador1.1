----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:10:46 10/17/2016 
-- Design Name: 
-- Module Name:    Procesador_AMD_FULL - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Procesador_AMD_FULL is
	Port ( Clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           OutProcesador : out  STD_LOGIC_VECTOR (31 downto 0));
end Procesador_AMD_FULL;

architecture Behavioral of Procesador_AMD_FULL is
COMPONENT Sumador
	PORT(
		Incremento : IN std_logic_vector(31 downto 0);
		Direccion : IN std_logic_vector(31 downto 0);          
		NuevaDireccion : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT NPC
	PORT(
		Direccion : IN std_logic_vector(31 downto 0);
		Reset : IN std_logic;
		Clock : IN std_logic;          
		NuevaDireccion : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT PC
	PORT(
		Direccion : IN std_logic_vector(31 downto 0);
		Reset : IN std_logic;
		Clock : IN std_logic;          
		NuevaDireccion : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT instructionMemory
	PORT(
		address : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;          
		outInstruction : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	
	COMPONENT UC
	PORT(
		OP : IN std_logic_vector(1 downto 0);
		OP3 : IN std_logic_vector(5 downto 0);          
		ALU_OP : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;
	
	COMPONENT RF
	PORT(
		Rs1 : IN std_logic_vector(4 downto 0);
		Rs2 : IN std_logic_vector(4 downto 0);
		Rsd : IN std_logic_vector(4 downto 0);
		datawrite : IN std_logic_vector(31 downto 0);
		rst : IN std_logic;          
		CRs1 : OUT std_logic_vector(31 downto 0);
		CRs2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	
	COMPONENT ALU
	PORT(
		Crs1 : IN std_logic_vector(31 downto 0);
		Crs2 : IN std_logic_vector(31 downto 0);
		ALU_Op : IN std_logic_vector(5 downto 0);          
		ALU_Out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
signal SumadorToNPC, NPCToPC, PCToIM, IMToURS, ALUToRF, RFToALU: STD_LOGIC_VECTOR (31 downto 0);
signal UCToALU: STD_LOGIC_VECTOR (5 downto 0);
begin

	Inst_Sumador: Sumador PORT MAP(
		Incremento => x"00000001",
		Direccion => NPCToPC,
		NuevaDireccion => SumadorToNPC
	);
	
	Inst_NPC: NPC PORT MAP(
		Direccion => SumadorToNPC,
		NuevaDireccion => NPCToPC,
		Reset => Reset,
		Clock => Clock
	);
	
	Inst_PC: PC PORT MAP(
		Direccion => NPCToPC,
		NuevaDireccion => PCToIM,
		Reset => Reset,
		Clock => Clock
	);
	
	Inst_instructionMemory: instructionMemory PORT MAP(
		address => PCToIM,
		reset => Reset,
		outInstruction => IMToURS
	);	
	
	Inst_UC: UC PORT MAP(
		OP => IMToURS(31 downto 30),
		OP3 => IMToURS(24 downto 19),
		ALU_OP => UCtoALU
	);	
	

	OutProcesador <= ALUToRF;
	

end Behavioral;

