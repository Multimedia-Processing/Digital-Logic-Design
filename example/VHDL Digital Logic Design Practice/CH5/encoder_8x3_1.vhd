
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Encoder_8x3_1 is
 port ( I  : in  std_logic_vector(7 downto 0) ;  
	    Y  : out std_logic_vector(2 downto 0)) ;
end Encoder_8x3_1;
--*******************************
architecture A_when_else of Encoder_8x3_1 is
begin
  Y<= "000"  when  I="00000001" else
      "001"  when  I="00000010" else
      "010"  when  I="00000100" else
      "011"  when  I="00001000" else
      "100"  when  I="00010000" else
      "101"  when  I="00100000" else
      "110"  when  I="01000000" else
      "111"  when  I="10000000" else
      "ZZZ"  ;
end A_when_else  ;

