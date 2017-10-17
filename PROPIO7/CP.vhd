
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CP is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;			  
			  reset :in STD_LOGIC;
           CLK : in  STD_LOGIC;
           Z : in  STD_LOGIC_VECTOR (7 downto 0);
           cuenta : out  STD_LOGIC_VECTOR (7 downto 0);
           out1 : out  STD_LOGIC);
end CP;

architecture Behavioral of CP is
signal aux : std_logic_vector(7 downto 0);
signal a : std_logic;
begin
process(clk,RESET,aux,a)--me salio en consola que a debe estar en sens list
variable en : std_logic;
begin
	en:=a;
	if (RESET='1')then
		aux<="00000000";
		en:='0';
	elsif(en='1')then
		if(clk'event and clk='1')then
			aux<=std_logic_vector(unsigned(aux)+1);
		end if;
	end if;
end process;
cuenta<=aux;
out1<='1' when z=aux else '0';
a <= x and y;
end Behavioral;

