
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
--

--componentes

--
begin
counter: process(clk,HAB1)
begin
	if(RESET1='0')then
		if(clk'event and clk='1')then
			if(HAB1='1')then
				counter<=(others=>'0');
			elsif(counter="10")then
				counter<=(others=>'0');
			else
				counter<=counter+1;
			end if;
		end if;
	else
		counter<=(others=>'0');
	end if;
end process counter;

end Behavioral;

