
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PROPIO12 is
    Port ( clk : in  STD_LOGIC;
           a : in  unsigned (7 downto 0);
           x : out  unsigned (7 downto 0);
           y : out  unsigned (7 downto 0));
end PROPIO12;

architecture Behavioral of PROPIO12 is
signal aux : unsigned (7 downto 0);
begin
process(clk,aux,a)
begin
if(clk'event and clk='1')then
x<=not a;
aux <= a+1;
elsif(aux=a)then
aux<="00000000";
end if;
end process;
y<=aux;

end Behavioral;

