
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PROPIO11 is
    Port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           s : in  STD_LOGIC;
           q : out  STD_LOGIC);
end PROPIO11;

architecture Behavioral of PROPIO11 is

begin
q<= x when s='0' else 'Z';
q<= y when s='1' else 'Z';

end Behavioral;

