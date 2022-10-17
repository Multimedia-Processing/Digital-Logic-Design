
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity T_FFV is
 port ( CLR,T,CK : in    std_logic ;                    
	    Q        : inout std_logic ) ;
end T_FFV ;
--*******************************
architecture A_table of T_FFV is
begin
   process(CLR,CK,T)
   begin
     if CLR='0' then                    
        Q <= '0' ;            
     elsif CK'event and CK='1' then 
        if T='0' then         
 		   Q <= Q ;
        else
           Q <= not Q ;      
        end if;    
     end if;
   end process ; 
end A_table;
