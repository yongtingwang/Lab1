--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:03:21 08/19/2015
-- Design Name:   
-- Module Name:   C:/Users/kerker/NTHU/MS0/logic lab/lab_result/lab1/lab1_2/test_lab1_2.vhd
-- Project Name:  lab1_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lab1_2
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
 
ENTITY test_lab1_2 IS
END test_lab1_2;
 
ARCHITECTURE behavior OF test_lab1_2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab1_2
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         s : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(3 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab1_2 PORT MAP (
          a => a,
          b => b,
          cin => cin,
          s => s,
          cout => cout
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
		#10 a=2'b0000;b=2'b0000;cin=1;
		#10 a=2'b0000;b=2'b0001;cin=0;
		#10 a=2'b0000;b=2'b0001;cin=1;
		#10 a=2'b0001;b=2'b0000;cin=0;
		#10 a=2'b0001;b=2'b0000;cin=1;
		#10 a=2'b0001;b=2'b0001;cin=0;
		#10 a=2'b0001;b=2'b0001;cin=1;

      wait;
   end process;

END;
