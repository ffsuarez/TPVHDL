
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PROPIO16_TB IS
END PROPIO16_TB;
 
ARCHITECTURE behavior OF PROPIO16_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT simple_alu
    PORT(
         ctrl : IN  std_logic_vector(2 downto 0);
         src0 : IN  std_logic_vector(7 downto 0);
         srcl : IN  std_logic_vector(7 downto 0);
         result : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ctrl : std_logic_vector(2 downto 0) := (others => '0');
   signal src0 : std_logic_vector(7 downto 0) := (others => '0');
   signal srcl : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal result : std_logic_vector(7 downto 0);
	signal clc : std_logic :='1';
	signal clock : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: simple_alu PORT MAP (
          ctrl => ctrl,
          src0 => src0,
          srcl => srcl,
          result => result
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
		ctrl<="000";
		src0<="00000000";srcl<="00000001";
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 
		ctrl<="100";
		src0<="00100000";srcl<="00000001";
		wait for 100 ns;
		ctrl<="111";
		src0<="00100000";srcl<="00000001";
		wait for 100 ns;
		ctrl<="101";
		src0<="00100100";srcl<="00100100";
		wait for 100 ns;
		ctrl<="011";
		src0<="00100000";srcl<="11111111";		
		clc<='0';
		wait for 100 ns;
		ctrl<="010";
		src0<="00100000";srcl<="11111111";		
		wait for 100 ns;
		ctrl<="011";
		src0<="00100000";srcl<="11111111";		
		wait for 100 ns;
		clc<='0';		
		
      wait;
   end process;

END;
