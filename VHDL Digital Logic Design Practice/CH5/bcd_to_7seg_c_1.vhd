
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************

entity BCD_to_7seg_c_1 is
port ( BCD           : in integer range 0 to 15 ;  
	   A,B,C,D,E,F,G : out std_logic  ) ;
end BCD_to_7seg_c_1 ;
--*******************************
architecture A_case_when of BCD_to_7seg_c_1 is
begin
process(BCD)
  begin   
     case BCD is
       when 0 => A<='1';B<='1';C<='1';D<='1';E<='1';F<='1';G<='0';  
       when 1 => A<='0';B<='1';C<='1';D<='0';E<='0';F<='0';G<='0';
       when 2 => A<='1';B<='1';C<='0';D<='1';E<='1';F<='0';G<='1';  
       when 3 => A<='1';B<='1';C<='1';D<='1';E<='0';F<='0';G<='1'; 
       when 4 => A<='0';B<='1';C<='1';D<='0';E<='0';F<='1';G<='1';  
       when 5 => A<='1';B<='0';C<='1';D<='1';E<='0';F<='1';G<='1';
       when 6 => A<='0';B<='0';C<='1';D<='1';E<='1';F<='1';G<='1'; 
       when 7 => A<='1';B<='1';C<='1';D<='0';E<='0';F<='0';G<='0';
       when 8 => A<='1';B<='1';C<='1';D<='1';E<='1';F<='1';G<='1';
       when 9 => A<='1';B<='1';C<='1';D<='0';E<='0';F<='1';G<='1'; 
       when 10 to 15 => A<='1';B<='0';C<='0';D<='1';E<='1';F<='1';G<='1'; 
     end case;
end process;
end A_case_when  ;





