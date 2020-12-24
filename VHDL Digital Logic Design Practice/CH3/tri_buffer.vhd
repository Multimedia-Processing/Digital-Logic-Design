
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Tri_buffer is
 port ( A,OE : in  std_logic ;                    
	    F    : out std_logic ) ;
end Tri_buffer ;
--*******************************
architecture ARCH of Tri_buffer is
begin
   process(A,OE)
   begin
     if OE='1' then            
        F <= A ;            
     else
        F <= 'Z' ;  --high impedance         		
     end if;
   end process ; 
end ARCH;
