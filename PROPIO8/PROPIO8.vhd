
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PROPIO8 is
    Port ( D : in  STD_LOGIC;
           EN0 : in  STD_LOGIC;
           EN1 : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end PROPIO8;

architecture Behavioral of PROPIO8 is
signal E : std_logic;
begin
e<=(not EN0)and(EN1);
proc: process(D,e)
begin
	if(e='1')then
		q<=d;
	end if;
end process proc;
end Behavioral;

