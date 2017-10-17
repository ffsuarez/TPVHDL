library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ENCRIPTADOR is
    Port ( clk : in  STD_LOGIC;
				letra_codigo : in STD_LOGIC_VECTOR(11 downto 0);
           salida_datos : out  STD_LOGIC_VECTOR (11 downto 0);
           ent_datos : in  STD_LOGIC_VECTOR (11 downto 0));
end ENCRIPTADOR;

architecture Behavioral of ENCRIPTADOR is
--seniales
signal aux : std_logic_vector(11 downto 0);
--
--declaracion componentes
--
begin
enc: process(clk,ent_datos,letra_codigo)
begin
	if(clk'event and clk='1')then
		salida_datos <= ent_datos xor letra_codigo;		
	end if;
end process enc;

end Behavioral;

