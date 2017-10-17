
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PROPIO10 is
    Port ( A_BUS : in  STD_LOGIC_VECTOR (7 downto 0);
           Z : out  STD_LOGIC);
end PROPIO10;

architecture Behavioral of PROPIO10 is
signal  x : std_logic;
begin
adding: process(a_bus,x)
	begin
		--x<='1';
		for i in 7 downto  0 loop
			z <= a_bus(i) and x;
		end loop;
		--z <= x;
	end process adding;

end Behavioral;

