--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:28:21 10/09/2016
-- Design Name:   
-- Module Name:   C:/Users/Juan/Desktop/MonocicloProcesador/ProcesadorMonociclo/ADDER_Test.vhd
-- Project Name:  ProcesadorMonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADDER
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
 
ENTITY ADDER_tb IS
END ADDER_tb;
 
ARCHITECTURE behavior OF ADDER_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADDER
    PORT(
         Direccion_IN : IN  std_logic_vector(31 downto 0);
         Incremento : IN  std_logic_vector(31 downto 0);
         Direccion_salida : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Direccion_IN : std_logic_vector(31 downto 0) := (others => '0');
   signal Incremento : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Direccion_salida : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADDER PORT MAP (
          Direccion_IN => Direccion_IN,
          Incremento => Incremento,
          Direccion_salida => Direccion_salida
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
		Direccion_IN <= x"00000012";
		Incremento <= x"00000002";
      -- hold reset state for 100 ns.
      wait for 30 ns;
		Direccion_IN <= x"00000004";
		Incremento <= x"00000002";
		wait for 30 ns;
		Direccion_IN <= x"00000002";
		Incremento <= x"00000002";
		wait for 30 ns;
		Direccion_IN <= x"00000008";
		Incremento <= x"00000002";
      
      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;