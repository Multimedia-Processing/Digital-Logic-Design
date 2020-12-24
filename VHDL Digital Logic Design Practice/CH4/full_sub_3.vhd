
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Full_sub_3 is
  port ( A,B,Bi  : in  std_logic;  
         Do,Bo   : out std_logic ) ;
end Full_sub_3 ;
--*******************************
architecture A_when_else of Full_sub_3 is
 signal Temp : std_logic_vector( 2 downto 0 ) ;
 signal O_temp : std_logic_vector( 1 downto 0 ) ;
begin
  Temp <= A & B & Bi ; 
  O_temp <= "11" when Temp="001" else 	
		    "11" when Temp="010" else
		    "10" when Temp="011" else
			"01" when Temp="100" else
		    "11" when Temp="111" else
		    "00" ;
  Do <= O_temp(0) ; 
  Bo <= O_temp(1) ;
 end A_when_else  ;


