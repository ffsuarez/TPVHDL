
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ENCRIPTADOR_TB2 IS
END ENCRIPTADOR_TB2;
 
ARCHITECTURE behavior OF ENCRIPTADOR_TB2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ENCRIPTADOR
    PORT(
         clk : IN  std_logic;
         letra_codigo : IN  std_logic_vector(11 downto 0);
         salida_datos : OUT  std_logic_vector(11 downto 0);
         ent_datos : IN  std_logic_vector(11 downto 0);
         ultimo_dato : IN  std_logic;
         fin : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal letra_codigo : std_logic_vector(11 downto 0) := (others => '0');
   signal ent_datos : std_logic_vector(11 downto 0) := (others => '0');
   signal ultimo_dato : std_logic := '0';

 	--Outputs
   signal salida_datos : std_logic_vector(11 downto 0);
   signal fin : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
	signal clc : std_logic :='1';
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ENCRIPTADOR PORT MAP (
          clk => clk,
          letra_codigo => letra_codigo,
          salida_datos => salida_datos,
          ent_datos => ent_datos,
          ultimo_dato => ultimo_dato,
          fin => fin
        );

   -- Clock process definitions
   clk_process :process
   begin
		if (clc='1')then
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
		else wait; 
		end if;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		letra_codigo<="010101010101";ent_datos<="111100001010";ultimo_dato<='0';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      wait for clk_period*10;

      -- insert stimulus here 
		letra_codigo<="110100100100";ent_datos<="001000111101";ultimo_dato<='0';
		wait for 100 ns;
		letra_codigo<="001000100011";ent_datos<="110011110011";ultimo_dato<='0';
		wait for 100 ns;
		letra_codigo<="010101010101";ent_datos<="000011110000";ultimo_dato<='1';
		wait for 100 ns;
		ultimo_dato<='0';
		wait for 100 ns;
		clc<='0';
      wait;
   end process;

END;
