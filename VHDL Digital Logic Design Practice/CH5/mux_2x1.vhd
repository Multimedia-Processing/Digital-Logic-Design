
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Mux_2x1 is
 port ( I0,I1 : in  std_logic ; 
        S     : in  std_logic ;   
	    Y     : out std_logic ) ;
end Mux_2x1;
--*******************************
architecture A_Boolean of Mux_2x1 is
  begin
   Y <= (not S and I0) or (S and I1) ;
end A_Boolean ;

