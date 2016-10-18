----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:42:40 04/25/2016 
-- Design Name: 
-- Module Name:    MUX - Behavioral 
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

entity MUX is
	Port ( RfToMux : in  STD_LOGIC_VECTOR (31 downto 0);
           inm : in  STD_LOGIC;
           seuToMux : in  STD_LOGIC_VECTOR (31 downto 0);
           MuxToAlu : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX;

architecture Behavioral of MUX is

begin
	process(RfToMux,inm,seuToMux)
		begin
					if inm = '0' then
						MuxToAlu <= RfToMux;--si el inmediato es cero retorna el valor del register file
					else
						MuxToAlu <= seuToMux;--si el valor es uno retorna el valor del SEU
					end if;
	end process;
end Behavioral;

