----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:26:10 10/17/2016 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.All;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Alu is
    Port ( entrada_suma1 : in  STD_LOGIC_VECTOR (31 downto 0);
           entrada_sum2 : in  STD_LOGIC_VECTOR (31 downto 0);
           alu_op : in  STD_LOGIC_VECTOR (5 downto 0);
           salida_ALU : out  STD_LOGIC_VECTOR (31 downto 0));
end Alu;

architecture Behavioral of Alu is

begin
process(entrada_suma1, entrada_sum2, alu_op)
begin
 case (alu_op) is 
			when "000001" => -- add
				salida_ALU <= entrada_suma1 + entrada_sum2;
			when "000010" => -- addcc
				salida_ALU <= entrada_suma1 + entrada_sum2;
         when "000011" => -- addX
				salida_ALU <= entrada_suma1 + entrada_sum2;
         when "000100" => -- addXcc
				salida_ALU <= entrada_suma1 + entrada_sum2;
         when "000101" => -- sub
				salida_ALU <= entrada_suma1 + entrada_sum2;				
			when "000110" => -- subcc
				salida_ALU <= entrada_suma1 - entrada_sum2;
			when "000111" => -- subX
				salida_ALU <= entrada_suma1 - entrada_sum2;
         when "001000" => -- subXcc
				salida_ALU <= entrada_suma1 - entrada_sum2;
         when "001001" => -- and
				salida_ALU <= entrada_suma1 - entrada_sum2;
			when "001010" => -- andn
				salida_ALU <= entrada_suma1 - entrada_sum2;	
			when "001011" => --andNcc
				salida_ALU <= entrada_suma1 and entrada_sum2;
			when "001100" => --andcc
				salida_ALU <= entrada_suma1 and entrada_sum2;
         when "001101" => --or
				salida_ALU <= entrada_suma1 and entrada_sum2;
	      when "001110" => --orn
				salida_ALU <= entrada_suma1 and entrada_sum2;	
	      when "001111" => --orcc
				salida_ALU <= entrada_suma1 and entrada_sum2;				
			when "010000" => --orNcc
				salida_ALU <= entrada_suma1 nand entrada_sum2;     
			when "010010" => -- xor
				salida_ALU <= entrada_suma1 or entrada_sum2;
			when "010011" => -- xnor
				salida_ALU <= entrada_suma1 or entrada_sum2;
         when "010100" => -- xorcc
				salida_ALU <= entrada_suma1 or entrada_sum2;				
				
			when others => --nop
				salida_ALU <= (others=>'0');
		end case;
	end process; 

end Behavioral;

