
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;
--*******************************
entity NAND_2 is
 port ( A,B : in std_logic ;  
	    Y   : out std_logic ) ;
end NAND_2 ;
--*******************************
architecture Arch of NAND_2 is 
begin
	Y <= not(A and B) ;
end Arch  ;





