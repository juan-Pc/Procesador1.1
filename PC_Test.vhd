--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:17:14 10/09/2016
-- Design Name:   
-- Module Name:   C:/Users/Juan/Desktop/MonocicloProcesador/ProcesadorMonociclo/PC_Test.vhd
-- Project Name:  ProcesadorMonociclo
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
 
ENTITY PC_Test IS
END PC_Test;
 
ARCHITECTURE behavior OF PC_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Direccion_PC : IN  std_logic_vector(31 downto 0);
         Salida_PC : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Direccion_PC : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Salida_PC : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          Reset => Reset,
          Clk => Clk,
          Direccion_PC => Direccion_PC,
          Salida_PC => Salida_PC
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
	
   stim_proc: process
     begin		
		Reset<='1';
      -- hold reset state for 100 ns.
      wait for 30 ns;
		Reset<='0';
		Direccion_PC <=  x"00000020"; 
		wait for 30 ns;
		Direccion_PC <=  x"00000028";
		wait for 30 ns;
		Direccion_PC <=  x"00000025";
      wait;
   end process;
  

END;
