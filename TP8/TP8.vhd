
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TP8 is
    Port ( cargar_i : in  STD_LOGIC_VECTOR (3 downto 0);
           carga_i : in  STD_LOGIC;
           A_i : in  STD_LOGIC;
           Clk_i : in  STD_LOGIC;
           Reset_i : in  STD_LOGIC;
           Habilitacion : in  STD_LOGIC;
           Salida : out  STD_LOGIC_VECTOR (7 downto 0);
           Anodos : out  STD_LOGIC_VECTOR (3 downto 0));
end TP8;

architecture Behavioral of TP8 is
signal Clk_o : std_logic; --salida del clock manager
signal SALIDA_antirebote : std_logic;
signal Cuenta_o : std_logic; --salida del CONT4
begin


end Behavioral;

