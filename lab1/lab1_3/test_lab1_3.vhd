--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:46:44 08/19/2015
-- Design Name:   
-- Module Name:   C:/Users/kerker/NTHU/MS0/logic lab/lab_result/lab1/lab1_3/test_lab1_3.vhd
-- Project Name:  lab1_3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lab1_3
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
 
ENTITY test_lab1_3 IS
END test_lab1_3;
 
ARCHITECTURE behavior OF test_lab1_3 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab1_3
    PORT(
         en : IN  std_logic;
         a0 : IN  std_logic;
         a1 : IN  std_logic;
         d0 : OUT  std_logic;
         d1 : OUT  std_logic;
         d2 : OUT  std_logic;
         d3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal en : std_logic := '0';
   signal a0 : std_logic := '0';
   signal a1 : std_logic := '0';

 	--Outputs
   signal d0 : std_logic;
   signal d1 : std_logic;
   signal d2 : std_logic;
   signal d3 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab1_3 PORT MAP (
          en => en,
          a0 => a0,
          a1 => a1,
          d0 => d0,
          d1 => d1,
          d2 => d2,
          d3 => d3
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
