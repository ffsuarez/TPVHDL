
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PROPIO9_TB IS
END PROPIO9_TB;
 
ARCHITECTURE behavior OF PROPIO9_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PROPIO9
    PORT(
         D : IN  std_logic;
         EN0 : IN  std_logic;
         EN1 : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal EN0 : std_logic := '0';
   signal EN1 : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	signal clc : std_logic :='1';
	signal clock : std_logic;
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PROPIO9 PORT MAP (
          D => D,
          EN0 => EN0,
          EN1 => EN1,
          Q => Q
        );

   -- Clock process definitions
   clock_process :process
   begin
		if(clc='1')then
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
		else
		wait;
		end if;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		D<='1';
		EN0<='0';EN1<='1';
		-------------------
      wait for clock_period*10;

      -- insert stimulus here 
		D<='0';
		EN0<='0';EN1<='1';
		wait for 50 ns;
		-------------------
		D<='1';
		EN0<='0';EN1<='1';
		wait for 50 ns;
		-------------------		
		D<='0';
		EN0<='0';EN1<='0';
		wait for 50 ns;
		-------------------		
		D<='1';
		EN0<='0';EN1<='0';
		wait for 50 ns;
		-------------------		
		clc<='0';
      wait;
   end process;

END;
