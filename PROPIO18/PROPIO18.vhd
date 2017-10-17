
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PROPIO18 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           x : out  STD_LOGIC);
end PROPIO18;

architecture Behavioral of PROPIO18 is

begin
process(a,b,c,d,s)
begin
	if(s="00")then
		x<=a;
		elsif(s="01")then
			x<=b;
		elsif(s="10")then
			x<=c;
	else
		x<=d;	
	end if;
end process;

end Behavioral;

