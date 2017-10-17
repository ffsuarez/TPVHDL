
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY propio18tb IS
END propio18tb;
 
ARCHITECTURE behavior OF propio18tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PROPIO18
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         s : IN  std_logic_vector(1 downto 0);
         x : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';
   signal s : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal x : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	signal clc : std_logic :='1';
	signal clock : std_logic;
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PROPIO18 PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          s => s,
          x => x
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		a<='1';b<='1';c<='1';d<='0';s<="01";
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 
		a<='0';b<='0';c<='0';d<='1';s<="11";
      wait for 100 ns;			
		a<='1';b<='0';c<='0';d<='0';s<="00";
      wait for 100 ns;
		a<='1';b<='0';c<='1';d<='1';s<="10";
      wait for 100 ns;			
		a<='1';b<='1';c<='0';d<='1';s<="01";
      wait for 100 ns;			
		a<='1';b<='0';c<='1';d<='0';s<="00";
      wait for 100 ns;			
		a<='0';b<='1';c<='0';d<='0';s<="01";
      wait for 100 ns;			
		a<='1';b<='0';c<='1';d<='1';s<="01";
      wait for 100 ns;	
		a<='1';b<='1';c<='1';d<='0';s<="11";
      wait for 100 ns;			
		a<='0';b<='0';c<='0';d<='1';s<="11";
      wait for 100 ns;
		a<='0';b<='1';c<='0';d<='0';s<="01";
      wait for 100 ns;					
      wait;
   end process;

END;
