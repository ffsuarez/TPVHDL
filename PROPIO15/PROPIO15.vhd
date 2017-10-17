
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PROPIO15 is
	PORT(
		a : in unsigned(3 downto 0);
		x : out std_logic
	);
end PROPIO15;

architecture Behavioral of PROPIO15 is

begin
x<='1' when a=1 else '0';

end Behavioral;

