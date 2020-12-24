
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;
--*******************************  

entity Add_4bit_1 is
 port ( A,B  : in std_logic_vector(3 downto 0) ;  
	    S    : out std_logic_vector(3 downto 0) ;
	    Cout : out std_logic ) ;
end Add_4bit_1;
--*******************************
architecture A_arith of Add_4bit_1 is
 signal Temp : std_logic_vector(4 downto 0)  ;
 begin
  Temp <= ( '0' + A ) + B ;
  S <= Temp(3 downto 0);
  Cout <= Temp(4);
end A_arith  ;


