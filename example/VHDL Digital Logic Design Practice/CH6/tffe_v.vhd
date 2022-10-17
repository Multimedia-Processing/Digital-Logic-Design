
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity TFFE_V is
 port ( PR,CLR,ENA,T,CK : in     std_logic ;                    
	    Q               : buffer std_logic ) ;
end TFFE_V ;
--*******************************
architecture A_table of TFFE_V is
begin
process(PR,CLR,ENA,CK,T)
begin
  if CLR='0' then                
     Q <= '0' ;            
  elsif PR='0' then            
     Q <= '1' ;
  elsif ENA='0' then
     Q <= Q ;
  elsif CK'event and CK='1' then 
     if T='0' then  
        Q <= Q ;
     else
        Q <= not Q ;  
     end if;    
  end if;
end process ; 
end A_table;
