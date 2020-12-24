
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity BCD_to_7seg_c is
 port ( B0,B1,B2,B3   : in std_logic  ;  
	    Y     : out std_logic_vector(0 to 6)) ;
end BCD_to_7seg_c ;
--*******************************
architecture A_case_when of BCD_to_7seg_c is
 signal Temp : std_logic_vector(3 downto 0) ;
begin
   Temp <= B3 & B2 & B1 & B0 ;
  process(Temp)
  begin   
     case Temp is
       when "0000"  =>    Y<= "1111110" ;
       when "0001"  =>    Y<= "0110000" ;
       when "0010"  =>    Y<= "1101101" ;
       when "0011"  =>    Y<= "1111001" ;
       when "0100"  =>    Y<= "0110011" ;
       when "0101"  =>    Y<= "1011011" ;
       when "0110"  =>    Y<= "0011111" ;
       when "0111"  =>    Y<= "1110000" ;
       when "1000"  =>    Y<= "1111111" ;
       when "1001"  =>    Y<= "1110011" ;
       when others  =>    Y<= "1001111" ;
     end case;
  end process;
end A_case_when  ;





