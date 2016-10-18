----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:11:36 10/09/2016 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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

entity PC is
    Port ( Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Direccion_PC : in  STD_LOGIC_VECTOR (31 downto 0);
           Salida_PC : out  STD_LOGIC_VECTOR (31 downto 0));
end PC;

architecture Behavioral of PC is

begin

process(Clk, Direccion_PC, Reset)
	begin
		if(Reset = '1')then 
			Salida_PC <= x"00000000";
		else
			if(rising_edge(Clk))then
				Salida_PC <= Direccion_PC;
			end if;
		end if;
	end process;


end Behavioral;

