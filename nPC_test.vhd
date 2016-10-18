--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:15:12 10/09/2016
-- Design Name:   
-- Module Name:   C:/Users/Juan/Documents/GitHub/MonocicloProcesador/ProcesadorMonociclo/nPC_test.vhd
-- Project Name:  ProcesadorMonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nPC
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
 
ENTITY nPC_test IS
END nPC_test;
 
ARCHITECTURE behavior OF nPC_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nPC
    PORT(
         Reset : IN  std_logic;
         Clk : IN  std_logic;
         Direccion_nPC : IN  std_logic_vector(31 downto 0);
         Salida_nPC : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Direccion_nPC : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Salida_nPC : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nPC PORT MAP (
          Reset => Reset,
          Clk => Clk,
          Direccion_nPC => Direccion_nPC,
          Salida_nPC => Salida_nPC
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
		Direccion_nPC <=  x"00000010"; 
		wait for 30 ns;
		Direccion_nPC <=  x"00000018";
		wait for 30 ns;
		Direccion_nPC <=  x"00000015";
      wait;
   end process;
  

END;
