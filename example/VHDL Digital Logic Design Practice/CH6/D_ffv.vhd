
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity D_FFV is
 port ( PR,CLR,D,CK : in  std_logic ;                    
	    Q           : out std_logic ) ;
end D_FFV ;
--*******************************
architecture A_table of D_FFV is
begin
  process(PR,CLR,CK)
   begin
     if CLR='0' then             
        Q <= '0' ;            
     elsif PR='0' then           
	    Q <= '1' ;
     elsif CK'event and CK='1' then  
 		Q <=  D ;
     end if;
   end process ; 
end A_table;
