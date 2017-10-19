
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY DIRECCIONAMIENTO_TB IS
END DIRECCIONAMIENTO_TB;
 
ARCHITECTURE behavior OF DIRECCIONAMIENTO_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DIRECCIONAMIENTO
    PORT(
         RESET1 : IN  std_logic;
         clk : IN  std_logic;
         HAB1 : IN  std_logic;
         LETRACLAVE : OUT  std_logic_vector(10 downto 0);
         ADDRESS : OUT  std_logic_vector(3 downto 0);
         ULTIMADIRECCION : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RESET1 : std_logic := '0';
   signal clk : std_logic := '0';
   signal HAB1 : std_logic := '0';

 	--Outputs
   signal LETRACLAVE : std_logic_vector(10 downto 0);
   signal ADDRESS : std_logic_vector(3 downto 0);
   signal ULTIMADIRECCION : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
	signal clc : std_logic :='1';
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DIRECCIONAMIENTO PORT MAP (
          RESET1 => RESET1,
          clk => clk,
          HAB1 => HAB1,
          LETRACLAVE => LETRACLAVE,
          ADDRESS => ADDRESS,
          ULTIMADIRECCION => ULTIMADIRECCION
        );

   -- Clock process definitions
   clk_process :process
   begin
		if(clc='1')then
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
		else
		wait;
		end if;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		RESET1<='1';HAB1<='0';
      -- hold reset state for 100 ns.
      wait for 50 ns;	
--RESET1 : IN  std_logic;
--clk : IN  std_logic;
--HAB1 : IN  std_logic;

      wait for clk_period*10;

      -- insert stimulus here 
		RESET1<='0';HAB1<='0';
		wait for 50 ns;
		RESET1<='0';HAB1<='1';
		wait for 100 ns;		
		clc<='0';
      wait;
   end process;

END;
