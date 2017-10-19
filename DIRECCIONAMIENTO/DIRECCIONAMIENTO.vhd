
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
           HAB1 : in  STD_LOGIC;
			  LETRACLAVE: out STD_LOGIC_VECTOR(10 downto 0);
           ADDRESS : out  STD_LOGIC_VECTOR (10 downto 0);
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
constant periodo_clks : unsigned (1 downto 0);

type tipo_estado is (INICIAL,ESPERO2,ENVIAR);
signal estado_presente,estado_futuro : tipo_estado;
--

--componentes

--
begin
counter: process(clk,HAB1)
begin
	if(clk'event and clk='1')then
		if(RESET1='1')then
			counter<=(others=>'0');
		end if;
	else
		if(counter=periodo_clks)then
			counter<=(others=>'0');
		elsif(estado_presente=ESPERO2)then
			counter<=counter+1;
		end if;
	end if;
end process counter;

proceso1: process(estado_presente)
variable tmp : unsigned(3 downto 0):="0000";
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
			LETRACLAVE<=;
			ADDRESS<=;
			if(aux="1101")then
				ULTIMADIRECCION<='1';
			else
				ULTIMADIRECCION<='0';
			end if;
			if(aux="1110")then
				estado_futuro<=INICIAL;
				aux:="0000";				
			else
				estado_futuro<=ESPERO2;
				aux:=aux+1;
			end if;
	end case;
end process proceso1;

proceso2: process(clk,estado_futuro)
begin
	if(RESET1='1')then
		estado_presente<=INICIAL;
	elsif(clk'event and clk='1')then
		estado_presente<=estado_futuro;
	end if;
end process proceso2;

end Behavioral;

