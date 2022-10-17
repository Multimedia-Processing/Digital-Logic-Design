
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Decoder3x8_2 is
 port ( A,B,C,EN : in  std_logic ;  
	    Y        : out std_logic_vector(7 downto 0)) ;
end Decoder3x8_2 ;
--*******************************
architecture A_case_when of Decoder3x8_2 is
signal Temp : std_logic_vector(3 downto 0) ;
begin
  Temp <= EN & C & B & A ;
  process(Temp)
  begin   
     case Temp is
       when "0000"  =>  Y<= "11111110" ;
       when "0001"  =>  Y<= "11111101" ;
       when "0010"  =>  Y<= "11111011" ;
       when "0011"  =>  Y<= "11110111" ;
       when "0100"  =>  Y<= "11101111" ;
       when "0101"  =>  Y<= "11011111" ;
       when "0110"  =>  Y<= "10111111" ;
       when "0111"  =>  Y<= "01111111" ;
       when others  =>  Y<= "11111111" ;
     end case;
  end process;
end A_case_when  ;





