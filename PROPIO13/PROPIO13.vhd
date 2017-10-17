library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PROPIO13 is
	port(
		clk : in std_logic;
		a: in unsigned (7 downto 0);
		x,y : out unsigned (7 downto 0)
	);
end PROPIO13;

architecture Behavioral of PROPIO13 is
signal aux : unsigned (7 downto 0);
begin
	process(clk)
	begin
		if(clk'event and clk='1')then
			x<=not(a);
			aux<=aux+1;
		elsif(aux=a)then
			aux<=(others=>'0');
		end if;
	end process;
	y<=aux;
end Behavioral;

