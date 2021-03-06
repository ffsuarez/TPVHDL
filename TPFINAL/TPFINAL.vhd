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
				clk : in STD_LOGIC;
           MENSAJE : out  STD_LOGIC_VECTOR (11 downto 0));
end TPFINAL;

architecture Behavioral of TPFINAL is
--seniales
signal address : STD_LOGIC_VECTOR (3 downto 0);
signal ENTRADA_DATOS : STD_LOGIC_VECTOR (10 downto 0);
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

entradamensaje : RAM1
  PORT MAP (
    a => address,
    d => (others=>'Z'),
    dpra => (others=>'Z'),
    clk => clk,
    we => '0',
    dpo => ENTRADA_DATOS
  );

cambio_direccion: process(clk)
begin
	if(clk'event and clk='1')then
		
	end if;
end proces cambio_direccion;
end Behavioral;

