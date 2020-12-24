
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Full_sub_1 is
  port ( A,B,Bi  : in  std_logic;  
         Do,Bo   : out std_logic ) ;
end Full_sub_1 ;
--*******************************
architecture A_when_else of Full_sub_1 is
begin
  Do <= '1' when (A='0' and B='0' and Bi='1') else 
        '1' when (A='0' and B='1' and Bi='0') else
        '1' when (A='1' and B='0' and Bi='0') else
		'1' when (A='1' and B='1' and Bi='1') else
		'0';	
  Bo <= '1' when (A='0' and B='0' and Bi='1') else 
        '1' when (A='0' and B='1' and Bi='0') else
        '1' when (A='0' and B='1' and Bi='1') else
		'1' when (A='1' and B='1' and Bi='1') else
		'0';	
end A_when_else  ;


