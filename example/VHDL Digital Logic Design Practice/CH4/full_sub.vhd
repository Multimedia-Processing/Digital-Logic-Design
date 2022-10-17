
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Full_sub is
   port ( A,B,Bi  : in  std_logic;  
          Do,Bo   : out std_logic ) ;
end Full_sub ;
--*******************************
architecture A_table of Full_sub is
begin
  Do <= ((not A) and (not B) and Bi)  or 
        ((not A) and  B and (not Bi)) or 
        (A and (not B) and (not Bi))  or
		(A and B and Bi) ;	
  Bo <= ((not A) and (not B) and Bi)  or 
        ((not A) and  B and (not Bi)) or 
        ((not A) and  B and  Bi)      or
		(A and B and Bi) ;	
end A_table  ;


