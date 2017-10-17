
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PROPIO17 is
    Port ( addr : in  STD_LOGIC_VECTOR (7 downto 0);
           step : out  STD_LOGIC);
end PROPIO17;

architecture Behavioral of PROPIO17 is

begin

process(addr)
begin 
	--step<='0';
	if(addr="00001111")then
		step<='1';
	end if;
end process;
end Behavioral;

