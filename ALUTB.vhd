--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:33:42 04/25/2016
-- Design Name:   
-- Module Name:   D:/Biblioteca/Documents/Procesador/Procesador32/ALUTB.vhd
-- Project Name:  Procesador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALUTB IS
END ALUTB;
 
ARCHITECTURE behavior OF ALUTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         Crs1 : IN  std_logic_vector(31 downto 0);
         Crs2 : IN  std_logic_vector(31 downto 0);
         ALU_Op : IN  std_logic_vector(5 downto 0);
         ALU_Out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Crs1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Crs2 : std_logic_vector(31 downto 0) := (others => '0');
   signal ALU_Op : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal ALU_Out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Crs1 => Crs1,
          Crs2 => Crs2,
          ALU_Op => ALU_Op,
          ALU_Out => ALU_Out
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		Crs1 <= "00000000000000000000000000000000";
		Crs2 <= "11111111111111111111111111111111";
		ALU_Op <= "000010"; --or
		
		wait for 100 ns;
		Crs1 <= "00000000000000000000000000000000";
		Crs2 <= "11111111111111111111111111111111";
		ALU_Op <= "000100"; --resta
		
		wait for 100 ns;
		Crs1 <= "00000000000000000000000000000000";
		Crs2 <= "11111111111111111111111111111111";
		ALU_Op <= "000000"; --suma
		
		wait for 100 ns;
		Crs1 <= "00000000000000000000000000000000";
		Crs2 <= "11111111111111111111111111111111";
		ALU_Op <= "011100";
		

      -- insert stimulus here 

      wait;
   end process;

END;
