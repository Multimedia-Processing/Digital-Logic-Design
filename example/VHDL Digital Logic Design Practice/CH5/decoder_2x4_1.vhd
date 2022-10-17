
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Decoder_2x4_1 is
 port ( A,B : in std_logic ;  
	    Y   : out std_logic_vector(3 downto 0)) ;
end Decoder_2x4_1;
--*******************************
architecture A_when_else of Decoder_2x4_1 is
signal Temp : std_logic_vector(1 downto 0) ;
begin
  Temp <= B & A ;
  Y(0) <= '1' when Temp="00" else '0' ; 
  Y(1) <= '1' when Temp="01" else '0' ; 
  Y(2) <= '1' when Temp="10" else '0' ; 
  Y(3) <= '1' when Temp="11" else '0' ; 
end A_when_else  ;


