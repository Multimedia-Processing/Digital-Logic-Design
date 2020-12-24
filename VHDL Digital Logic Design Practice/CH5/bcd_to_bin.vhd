
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity BCD_to_Bin is
port ( BCD2,BCD1,BCD0 : in  std_logic_vector (3 downto 0) ;
       Bin            : out std_logic_vector (9 downto 0)) ;
end BCD_to_Bin ;
--*******************************
architecture A_shift of BCD_to_Bin is
signal Temp1,Temp2 : std_logic_vector (6 downto 0) ;
signal Temp3       : std_logic_vector (9 downto 0) ;
begin
   Temp1 <= ( BCD2 & "000") + ( BCD2 & '0' ) ; 
   Temp2 <= Temp1 +  BCD1 ;
   Temp3 <= ( Temp2 & "000" ) + ( "00" & Temp2 & '0' ) ; 
   Bin <= Temp3 + ( "000000" & BCD0 ) ;
end A_shift ;
