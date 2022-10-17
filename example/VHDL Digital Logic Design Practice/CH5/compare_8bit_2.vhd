
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Compare_8bit_2 is
 port ( A,B : in  std_logic_vector(7 downto 0) ;  
	    GEL : out std_logic_vector(2 downto 0)) ;
end Compare_8bit_2;
--*******************************
architecture ARCH of Compare_8bit_2 is
begin
   GEL <= "100" when A>B else 
      	  "010" when A=B else 
    	  "001" when A<B ;
end ARCH  ;

