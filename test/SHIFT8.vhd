
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SHIFT8 is
    Port ( DATAIN_i : in  STD_LOGIC_VECTOR (7 downto 0);
           LOADDATA_i : in  STD_LOGIC;
           ENABLE_i : in  STD_LOGIC;
           RESET_i : in  STD_LOGIC;
           CLOCK_i : in  STD_LOGIC;
           DATAOUT_o : out  STD_LOGIC_VECTOR (7 downto 0));
end SHIFT8;

architecture Behavioral of SHIFT8 is
--senales
signal SALIDAS : STD_LOGIC_VECTOR (7 downto 0);
--
--componentes
--
begin
verificacion:
process(CLOCK_i,RESET_i,ENABLE_i,LOADDATA_i,DATAIN_I)
begin
		if(CLOCK_i'event and CLOCK_i='1')then
			if(RESET_i='1')then
				SALIDAS <= "00000000";
			elsif(LOADDATA_i = '1')then
				SALIDAS <= DATAIN_i;
			elsif(ENABLE_i = '1')then
				SALIDAS(7)<=SALIDAS(6);
				SALIDAS(6)<=SALIDAS(5);
				SALIDAS(5)<=SALIDAS(4);
				SALIDAS(4)<=SALIDAS(3);
				SALIDAS(3)<=SALIDAS(2);
				SALIDAS(2)<=SALIDAS(1);
				SALIDAS(1)<=SALIDAS(0);
				SALIDAS(0)<=SALIDAS(7);			
			end if;
		end if;
		
end process verificacion;

Dataout_o<=SALIDAS;


end Behavioral;

