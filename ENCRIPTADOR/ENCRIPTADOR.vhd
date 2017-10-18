library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ENCRIPTADOR is
    Port ( 
				clk : in  STD_LOGIC;
				letra_codigo : in STD_LOGIC_VECTOR(11 downto 0);
				salida_datos : out  STD_LOGIC_VECTOR (11 downto 0);
				ent_datos : in  STD_LOGIC_VECTOR (11 downto 0);
				ultimo_dato : in STD_LOGIC;				
				reset2: in STD_LOGIC;
				fin : out STD_LOGIC
			);
end ENCRIPTADOR;

architecture Behavioral of ENCRIPTADOR is
--seniales
signal aux : std_logic_vector(11 downto 0);
constant periodo_clks : unsigned (1 downto 0) :="10";
signal counter : unsigned (1 downto 0);
--
--declaracion componentes
--
begin
enc: process(counter,ent_datos,letra_codigo,ultimo_dato)
begin
	salida_datos<=(others=>'Z');
	if(counter="10")then
		salida_datos <= ent_datos xor letra_codigo;
		if(ultimo_dato='1')then
			fin<='1';
		else 
			fin<='0';
		end if;
	end if;
end process enc;

contador: process(clk,reset2)
begin
	if(clk'event and clk='1')then
			if(reset2='1')then
				counter<=(others=>'0');
			elsif(counter=periodo_clks)then
				counter<=(others=>'0');
			else
				counter<=counter+1;
			end if;
	end if;
end process contador;
end Behavioral;

