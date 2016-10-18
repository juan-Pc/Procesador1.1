----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:24:48 10/09/2016 
-- Design Name: 
-- Module Name:    ADDER - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADDER is
    Port ( Incremento : in  STD_LOGIC_VECTOR (31 downto 0);
           Direccion_IN : in  STD_LOGIC_VECTOR (31 downto 0);
           Direccion_Salida : out  STD_LOGIC_VECTOR (31 downto 0));
end ADDER;

architecture Behavioral of ADDER is

begin
process(Incremento, Direccion_IN)
	begin
		Direccion_Salida <= Incremento + Direccion_IN;
	end process;



end Behavioral;

