
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ENCRIPTADOR_TB IS
END ENCRIPTADOR_TB;
 
ARCHITECTURE behavior OF ENCRIPTADOR_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ENCRIPTADOR
    PORT(
         clk : IN  std_logic;
         letra_codigo : IN  std_logic_vector(11 downto 0);
         salida_datos : OUT  std_logic_vector(11 downto 0);
         ent_datos : IN  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal letra_codigo : std_logic_vector(11 downto 0) := (others => '0');
   signal ent_datos : std_logic_vector(11 downto 0) := (others => '0');

 	--Outputs
   signal salida_datos : std_logic_vector(11 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
	signal clc : std_logic :='1';
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ENCRIPTADOR PORT MAP (
          clk => clk,
          letra_codigo => letra_codigo,
          salida_datos => salida_datos,
          ent_datos => ent_datos
        );

   -- Clock process definitions
   clk_process :process
   begin
		if(clc='1')then
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
      -- hold reset state for 100 ns.
		ent_datos<="111001001000";letra_codigo<="110101011001";
      wait for 100 ns;	
		ent_datos<="010101011100";letra_codigo<="000000000000";
		wait for 100 ns;
		clc<='0';
		wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
