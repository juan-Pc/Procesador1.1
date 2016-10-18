----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:11:18 10/09/2016 
-- Design Name: 
-- Module Name:    nPC - Behavioral 
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

entity nPC is
    Port ( Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Direccion_nPC : in  STD_LOGIC_VECTOR (31 downto 0);
           Salida_nPC : out  STD_LOGIC_VECTOR (31 downto 0));
end nPC;

architecture Behavioral of nPC is

begin

process(Clk, Direccion_nPC, Reset)
	begin
		if(Reset = '1')then 
			Salida_nPc <= x"00000000";
		else
			if(rising_edge(Clk))then
				Salida_nPc <= Direccion_nPC;
			end if;
		end if;
	end process;


end Behavioral;

