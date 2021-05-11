
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Full_sub_2 is
  port ( A,B,Bi : in  std_logic;  
         Do,Bo  : out std_logic ) ;
end Full_sub_2 ;
--*******************************
architecture A_when_else of Full_sub_2 is
 signal Temp : std_logic_vector( 2 downto 0 ) ;
begin
 Temp <= A & B & Bi ; 
  Do <= '1' when Temp="001" else 	
		'1' when Temp="010" else
		'1' when Temp="100" else
		'1' when Temp="111" else
		'0';
  Bo <= '1' when Temp="001" else  
		'1' when Temp="010" else
		'1' when Temp="011" else
		'1' when Temp="111" else
		'0';
end A_when_else  ;


