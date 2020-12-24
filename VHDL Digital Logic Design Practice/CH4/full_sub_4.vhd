
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Full_sub_4 is
  port ( A,B,Bi  : in  std_logic;  
         Do,Bo   : out std_logic ) ;
end Full_sub_4 ;
--*******************************
architecture A_with_select_when of Full_sub_4 is
 signal Temp : std_logic_vector( 2 downto 0 ) ;
begin
 Temp <= A & B & Bi; 
 with Temp select
    Do <= '1' when "001" ,  
		  '1' when "010" ,
		  '1' when "100" ,
		  '1' when "111" ,
		  '0' when others;
 with Temp select
    Bo <= '1' when "001" ,  
		  '1' when "010" ,
		  '1' when "011" ,
		  '1' when "111" ,
		  '0' when others;
end A_with_select_when  ;


