
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY p17tb IS
END p17tb;
 
ARCHITECTURE behavior OF p17tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PROPIO17
    PORT(
         addr : IN  std_logic_vector(7 downto 0);
         step : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal addr : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal step : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	signal clc : std_logic :='1';
	signal clock : std_logic;
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PROPIO17 PORT MAP (
          addr => addr,
          step => step
        );

   -- Clock process definitions
   clock_process :process
   begin
		if(clc='1')then
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
		else wait;
		end if;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		addr<="01010101";
		-- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;
		wait for 100 ns;
		addr<="01110000";
		wait for 100 ns;
		addr<="00001111";
		wait for 100 ns;
		addr<="11110000";
		wait for 100 ns;
		addr<="00001111";
		wait for 100 ns;
      -- insert stimulus here 
		clc<='0';
      wait;
   end process;

END;
