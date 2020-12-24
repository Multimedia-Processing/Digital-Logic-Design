
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Encoder_8x3_p1 is
 port ( I  : in  std_logic_vector(7 downto 0);  
	    Y  : out std_logic_vector(2 downto 0));
end Encoder_8x3_p1 ;
--*******************************
architecture A_when_else of Encoder_8x3_p1 is
begin
     Y<= "111"  when  I(7)='1' else
         "110"  when  I(6)='1' else
         "101"  when  I(5)='1' else
         "100"  when  I(4)='1' else
         "011"  when  I(3)='1' else
         "010"  when  I(2)='1' else
         "001"  when  I(1)='1' else
         "000" ;
end A_when_else ;

