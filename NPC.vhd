----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: Daniel Hernando Becerra Ocampo
-- 
-- Create Date:    23:22:50 04/21/2016 
-- Design Name:	 
-- Module Name:    NPC - Behavioral 
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

entity NPC is
	Port ( Direccion : in  STD_LOGIC_VECTOR (31 downto 0);
	NuevaDireccion : out  STD_LOGIC_VECTOR (31 downto 0);
	Reset : in  STD_LOGIC;
	Clock : in  STD_LOGIC);		  
end NPC;

architecture Behavioral of NPC is
begin
process(Clock, Direccion, Reset)
	begin
		if(Reset = '1')then 
			NuevaDireccion <= x"00000000";
		else
			if(rising_edge(clock))then
				NuevaDireccion <= Direccion;
			end if;
		end if;
	end process;


end Behavioral;

