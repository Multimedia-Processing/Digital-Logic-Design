
library ieee ;
use ieee.std_logic_1164.all ;
--use ieee.std_logic_arith.all ;
use ieee.std_logic_unsigned.all ;
--*******************************
entity Full_add_1 is
   port ( Ai,Bi,Ci : in  std_logic ;  
          So,Co    : out std_logic ) ;
end Full_add_1 ;
--*******************************
architecture A_arith of Full_add_1 is
 signal Temp : std_logic_vector(1 downto 0);
begin
  Temp <= ('0' & Ai) + Bi + Ci ; 
  So <= Temp(0) ;
  Co <= Temp(1) ;
end A_arith  ;      


