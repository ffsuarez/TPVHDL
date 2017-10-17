
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PROPIO14TB IS
END PROPIO14TB;
 
ARCHITECTURE behavior OF PROPIO14TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PROPIO14
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
	signal clc : std_logic :='1';
	
	signal clock : std_logic;
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PROPIO14 PORT MAP (
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

      wait for clock_period*10;

      -- insert stimulus here 
		x<='0';y<='0';s<='0';
		wait for 100 ns;
		x<='0';y<='0';s<='1';
		wait for 100 ns;
		x<='0';y<='1';s<='0';
		wait for 100 ns;		
		x<='0';y<='1';s<='1';
		wait for 100 ns;	
		x<='1';y<='0';s<='0';
		wait for 100 ns;		
		x<='1';y<='0';s<='1';
		wait for 100 ns;	
		x<='1';y<='1';s<='0';
		wait for 100 ns;		
		x<='1';y<='1';s<='1';
		wait for 100 ns;	
		clc<='0';
      wait;
   end process;

END;
