
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Half_sub is
   port ( A,B   : in  std_logic ;  
		  Do,Bo : out std_logic ) ;
end Half_sub ;
--*******************************
architecture A_boolean of Half_sub is
begin
	Do <= A xor B;
	Bo <= (not A) and B ;
end A_boolean ;


