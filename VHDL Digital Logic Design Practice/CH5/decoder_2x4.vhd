
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;
--*******************************
entity Decoder_2x4 is
 port ( A,B : in std_logic ;  
	    Y   : out std_logic_vector(3 downto 0)) ;
end Decoder_2x4;
--*******************************
architecture A_table of Decoder_2x4 is
begin
  Y(0) <= (not A) and (not B) ; 
  Y(1) <= A and (not B) ; 
  Y(2) <= (not A) and  B ; 
  Y(3) <= A and B ; 
end A_table  ;


