
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;
--*******************************
entity Full_add is                           
   port (  Ai,Bi,Ci : in  std_logic;  
           So,Co    : out std_logic  ) ;
end Full_add ;
--*******************************
architecture A_Boolean of Full_add is
begin
  So <= Ai xor Bi xor Ci ;
  Co <= (Ai and Bi) or (Ai and Ci) or (Bi and Ci) ;
end A_Boolean  ;


