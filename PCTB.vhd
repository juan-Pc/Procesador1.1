--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:02:31 04/23/2016
-- Design Name:   
-- Module Name:   D:/Biblioteca/Documents/Procesador/Procesador32/PCTB.vhd
-- Project Name:  Procesador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PC
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
 
ENTITY PCTB IS
END PCTB;
 
ARCHITECTURE behavior OF PCTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         Direccion : IN  std_logic_vector(31 downto 0);
         Clock : IN  std_logic;
         Reset : IN  std_logic;
         NuevaDireccion : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Direccion : std_logic_vector(31 downto 0) := (others => '0');
   signal Clock : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal NuevaDireccion : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          Direccion => Direccion,
          Clock => Clock,
          Reset => Reset,
          NuevaDireccion => NuevaDireccion
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
     begin		
      -- hold reset state for 100 ns.
      reset <= '1';
		-- insert stimulus here
		wait for 30 ns;
		reset <= '0';
      wait for 30 ns;	
		Direccion <= x"00000000"; 
      reset <= '0'; 
		wait for 30 ns;
		Direccion <= x"00000001";
		wait for 30 ns;
		Direccion <= x"00000002";
		wait for 30 ns;
		Direccion <= x"00000003";   

      wait;
   end process;
END;
