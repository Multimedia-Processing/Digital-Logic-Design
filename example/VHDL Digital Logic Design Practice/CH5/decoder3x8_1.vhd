
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Decoder3x8_1 is
 port ( A,B,C,EN : in std_logic ;  
	    Y        : out std_logic_vector(7 downto 0)) ;
end Decoder3x8_1 ;
--*******************************
architecture A_with_select_when of Decoder3x8_1 is
signal Temp : std_logic_vector(3 downto 0) ;
begin
  Temp <= EN & C & B & A ;
  with Temp select
    Y<= "11111110" when "0000" ,
        "11111101" when "0001" ,
        "11111011" when "0010" ,
        "11110111" when "0011" ,
        "11101111" when "0100" ,
        "11011111" when "0101" ,
        "10111111" when "0110" ,
        "01111111" when "0111" ,
        "11111111" when others ;
end A_with_select_when  ;


