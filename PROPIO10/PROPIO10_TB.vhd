
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PROPIO10_TB IS
END PROPIO10_TB;
 
ARCHITECTURE behavior OF PROPIO10_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PROPIO10
    PORT(
         A_BUS : IN  std_logic_vector(7 downto 0);
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A_BUS : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	signal clc : std_logic :='1';
	signal clock : std_logic;
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PROPIO10 PORT MAP (
          A_BUS => A_BUS,
          Z => Z
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A_BUS<="10001001";
      wait for clock_period*10;

      -- insert stimulus here 
		A_BUS<=not("10001001");
		wait for 100 ns;
		clc<='0';
      wait;
   end process;

END;
