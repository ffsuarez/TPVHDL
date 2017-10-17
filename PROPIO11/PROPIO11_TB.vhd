LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PROPIO11_TB IS
END PROPIO11_TB;
 
ARCHITECTURE behavior OF PROPIO11_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PROPIO11
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         s : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal s : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	signal clock : std_logic;
	signal clc : std_logic;
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PROPIO11 PORT MAP (
          x => x,
          y => y,
          s => s,
          q => q
        );

   -- Clock process definitions
   clock_process :process
   begin
		if(clc='1')then
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		else wait;
		end if;
		wait for clock_period/2;
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
