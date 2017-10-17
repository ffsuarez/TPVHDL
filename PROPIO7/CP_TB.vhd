
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY CP_TB IS
END CP_TB;
 
ARCHITECTURE behavior OF CP_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CP
    PORT(
         X : IN  std_logic;
         Y : IN  std_logic;
         reset : IN  std_logic;
         CLK : IN  std_logic;
         Z : IN  std_logic_vector(7 downto 0);
         cuenta : OUT  std_logic_vector(7 downto 0);
         out1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal reset : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Z : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal cuenta : std_logic_vector(7 downto 0);
   signal out1 : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
	signal clc : std_logic :='1';
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CP PORT MAP (
          X => X,
          Y => Y,
          reset => reset,
          CLK => CLK,
          Z => Z,
          cuenta => cuenta,
          out1 => out1
        );

   -- Clock process definitions
   CLK_process :process
   begin
		if(clc='1')then
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
		else 
		wait;
		end if;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		RESET	<= '1';
      wait for 100 ns;	
		RESET<= '0';
      wait for CLK_period*10;

      -- insert stimulus here 
		X<='0';Y<='0';Z<="00000000";
		wait for 50 ns;
		----------------------
		X<='0';Y<='0';
		wait for 50 ns;
		----------------------
		X<='0';Y<='1';
		wait for 50 ns;
		----------------------
		X<='0';Y<='1';
		wait for 50 ns;
		----------------------
		X<='1';Y<='0';
		wait for 50 ns;
		----------------------
		X<='1';Y<='0';Z<="00100101";
		wait for 50 ns;
		----------------------
		X<='1';Y<='1';
		wait for 50 ns;
		----------------------
		X<='1';Y<='1';
		wait for 800 ns;
		----------------------
		Y<='0';
		wait for 250 ns;
		clc<='0';
      wait;
   end process;

END;
