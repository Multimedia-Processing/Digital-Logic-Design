
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Decoder3x8 is
 port ( A,B,C,EN : in  std_logic ;  
	    Y        : out std_logic_vector(7 downto 0));
end Decoder3x8 ;
--*******************************
architecture A_when_else of Decoder3x8 is
signal Temp : std_logic_vector(2 downto 0) ;
begin
  Temp <= C&B&A ;
  Y<= "11111110" when (Temp="000" and EN='1') else
      "11111101" when (Temp="001" and EN='1') else
      "11111011" when (Temp="010" and EN='1') else
      "11110111" when (Temp="011" and EN='1') else
      "11101111" when (Temp="100" and EN='1') else
      "11011111" when (Temp="101" and EN='1') else
      "10111111" when (Temp="110" and EN='1') else
      "01111111" when (Temp="111" and EN='1') else
      "11111111" ;
end A_when_else  ;


