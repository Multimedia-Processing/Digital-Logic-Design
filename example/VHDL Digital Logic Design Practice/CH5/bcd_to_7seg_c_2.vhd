
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity BCD_to_7seg_c_2 is
 port ( BCD : in integer range 0 to 15 ; 
	    Y   : out std_logic_vector(0 to 6)) ;
end BCD_to_7seg_c_2 ;
--*******************************
architecture A_with_select_when of BCD_to_7seg_c_2 is
begin
   with BCD select   
   Y <= "1111110"  when 0 ,
        "0110000"  when 1 ,
        "1101101"  when 2 ,
        "1111001"  when 3 ,
        "0110011"  when 4 ,
        "1011011"  when 5 ,
        "0011111"  when 6 ,
        "1110000"  when 7 ,
        "1111111"  when 8 ,
        "1110011"  when 9 ,
        "1001111"  when 10 to 15 ;
  end A_with_select_when  ;





