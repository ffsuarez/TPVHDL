--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:18:48 09/19/2017
-- Design Name:   
-- Module Name:   D:/DSD_estudio/work_directory/shift8/TEST.vhd
-- Project Name:  shift8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SHIFT8
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
 
ENTITY TEST IS
END TEST;
 
ARCHITECTURE behavior OF TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SHIFT8
    PORT(
         DATAIN_i : IN  std_logic_vector(7 downto 0);
         LOADDATA_i : IN  std_logic;
         ENABLE_i : IN  std_logic;
         RESET_i : IN  std_logic;
         CLOCK_i : IN  std_logic;
         DATAOUT_o : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DATAIN_i : std_logic_vector(7 downto 0) := (others => '0');
   signal LOADDATA_i : std_logic := '0';
   signal ENABLE_i : std_logic := '0';
   signal RESET_i : std_logic := '0';
   signal CLOCK_i : std_logic := '0';

 	--Outputs
   signal DATAOUT_o : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLOCK_i_period : time := 100 ns;
	signal clc : std_logic  := '1';
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SHIFT8 PORT MAP (
          DATAIN_i => DATAIN_i,
          LOADDATA_i => LOADDATA_i,
          ENABLE_i => ENABLE_i,
          RESET_i => RESET_i,
          CLOCK_i => CLOCK_i,
          DATAOUT_o => DATAOUT_o
        );

   -- Clock process definitions
   CLOCK_i_process :process
   begin
	if (clc='1')then
	
		CLOCK_i <= '0';
		wait for CLOCK_i_period/2;
		CLOCK_i <= '1';
		wait for CLOCK_i_period/2;
	else
		wait;
	end if;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      RESET_i <='1';
		wait for 100 ns; --despues de 100 ns tengo reset
		-------------------------------------------------------------
		---------------------------------------------------------------		
		RESET_i <= '0';
		LOADDATA_i <= '1';
		ENABLE_i <= '0';
		DATAIN_i <= "00000001";
		wait for 70 ns;
		---------------------------------------------------------------		
		RESET_i <= '0';
		LOADDATA_i <= '0';
		ENABLE_i <= '1';
		DATAIN_i <= "10010001";
		wait for 200 ns;
		---------------------------------------------------------------		
		RESET_i <= '1';
		LOADDATA_i <= '1';
		ENABLE_i <= '1';
		DATAIN_i <= "10010001";
		wait for 200 ns;
		---------------------------------------------------------------		
		clc <= '0';
      wait;
   end process;

END;
