
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Mux_4x1 is
 port ( I  : in  std_logic_vector(3 downto 0) ; 
        S  : in  std_logic_vector(1 downto 0) ;   
	    Y  : out std_logic ) ;
end Mux_4x1 ;
--*******************************
architecture A_when_else of Mux_4x1 is
begin
   Y <= I(0) when S="00"  else   
        I(1) when S="01"  else   
        I(2) when S="10"  else   
        I(3) ;
end A_when_else ;

