
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Encoder_8x3 is
 port ( EN : in  std_logic ;                    
	    I  : in  std_logic_vector(7 downto 0) ;  
	    Y  : out std_logic_vector(2 downto 0)) ;
end Encoder_8x3;
--*******************************
architecture A_Boolean of Encoder_8x3 is
begin
  Y(2) <= (I(7) or I(6) or I(5) or I(4)) and EN ;
  Y(1) <= (I(7) or I(6) or I(3) or I(2)) and EN ;
  Y(0) <= (I(7) or I(5) or I(3) or I(1)) and EN ;
end A_Boolean  ;

