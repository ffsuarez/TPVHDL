
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DIRECCIONAMIENTO is
    Port ( RESET1 : in  STD_LOGIC;
				clk: in std_logic;
           HAB1 : in  STD_LOGIC;
			  LETRACLAVE: out STD_LOGIC_VECTOR(10 downto 0);
           ADDRESS : out  STD_LOGIC_VECTOR (3 downto 0);
           ULTIMADIRECCION : out  STD_LOGIC);
end DIRECCIONAMIENTO;

architecture Behavioral of DIRECCIONAMIENTO is
--seniales
type TIPOCLAVE is array (0 to 15) of std_logic_vector (10 downto 0);
constant CLAVE : TIPOCLAVE :=
("00000000001","00000000010","00000000100","00000001000",
"00000000001","00000000010","00000000100","00000001000",
"00000000001","00000000010","00000000100","00000001000",
"00000000001","00000000010","00000000100","00000001000");

signal counter : unsigned (1 downto 0);
constant periodo_clks : unsigned (1 downto 0) :="10";

signal address_s : std_logic_vector(3 downto 0);
signal indice_clave : integer range -15 to 15;

type tipo_estado is (INICIAL,ESPERO2,ENVIAR);
signal estado_presente,estado_futuro : tipo_estado;
--

--componentes

--

begin


contador: process(clk,HAB1,RESET1,counter,
				estado_presente,address_s,indice_clave)
begin
	if(clk'event and clk='1')then
		if(RESET1='1')then
			counter<=(others=>'0');
			address_s<="0000";
			indice_clave<=0;
		end if;
	else
		if(counter=periodo_clks)then
			counter<=(others=>'0');
		elsif(estado_presente=ESPERO2)then
			counter<=counter+1;
			address_s<=std_logic_vector(unsigned(address_s)+1);
			indice_clave<=indice_clave+1;
		elsif(estado_presente=ENVIAR)then
			if(address_s="1110")then
				address_s<="0000";
				indice_clave<=0;
			end if;
		end if;
	end if;
end process contador;


proceso1: process(estado_presente,HAB1,counter)
begin
	
	case estado_presente is
		when INICIAL =>
			if(HAB1='1')then
				estado_futuro<=ESPERO2;
			else
				estado_futuro<=INICIAL;
			end if;


		when ESPERO2 =>

			if(counter=periodo_clks)then
				estado_futuro<=ENVIAR;
			else
				estado_futuro<=ESPERO2;
			end if;


		when ENVIAR =>
			LETRACLAVE<= CLAVE(indice_clave);
			ADDRESS<=address_s;
			if(address_s="0000")then
				estado_futuro<=INICIAL;
			else
				estado_futuro<=ESPERO2;
			end if;
	end case;

end process proceso1;

proceso2: process(clk,estado_futuro,RESET1)
begin
	if(clk'event and clk='1')then		
		estado_presente<=estado_futuro;
	end if;
end process proceso2;

end Behavioral;

