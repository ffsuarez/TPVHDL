library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TPFINAL is
    Port ( ENVIAR : in  STD_LOGIC;
           MENSAJE : out  STD_LOGIC_VECTOR (11 downto 0));
end TPFINAL;

architecture Behavioral of TPFINAL is
--seniales
signal address : STD_LOGIC_VECTOR (3 downto 0);
signal ENTRADA_DATOS : STD_LOGIC_VECTOR (10 downto 0);
type TIPOCLAVE is array (0 to 15) of std_logic_vector (10 downto 0);
constant CLAVE : TIPOCLAVE :=
("00000000001","00000000010","00000000100","00000001000",
"00000000001","00000000010","00000000100","00000001000",
"00000000001","00000000010","00000000100","00000001000",
"00000000001","00000000010","00000000100","00000001000");
--

--declaracion componentes

COMPONENT RAM1
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    dpra : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    we : IN STD_LOGIC;
    dpo : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
  );
END COMPONENT;


--
begin


end Behavioral;

