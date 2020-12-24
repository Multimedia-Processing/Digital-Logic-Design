
library ieee ;    
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;
--*******************************
entity Half_add is                           
   port (  A,B : in  std_logic;  
           S,C : out std_logic  ) ;
end Half_add ;
--*******************************
architecture A_Boolean of Half_add is
begin
  S <= A xor B ;        
  C <= A and B ;
end A_Boolean  ;


