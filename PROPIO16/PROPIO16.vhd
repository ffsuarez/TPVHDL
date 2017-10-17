library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;
entity simple_alu is
    port(	ctrl	:          in  std_logic_vector(2 downto 0) ;
    	src0,srcl :     in  std_logic_vector(7 downto 0);
    	result :         out std_logic_vector(7 downto 0));
end simple_alu;
architecture cond_arch of simple_alu is
signal sum,diff,inc : std_logic_vector(7 downto 0) ;
begin
     inc     	<=  std_logic_vector(signed(src0)+1) ;
     sum     	<=  std_logic_vector(signed(src0)+signed(srcl));
     diff    	<=  std_logic_vector(signed(src0)-signed(srcl)) ;
result  	<=  inc when 	ctrl(2)='0' else
							sum when ctrl(1 downto 0 ) = "00" else
							diff when ctrl(1 downto 0)="01" else
							src0 and srcl when ctrl(1 downto 0)="10" else
							src0 or srcl;
end cond_arch ;