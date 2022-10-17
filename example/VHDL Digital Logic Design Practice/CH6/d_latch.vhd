
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity D_latch is
 port ( CLR,D,EN : in  std_logic ;                    
	    Q        : out std_logic   ) ;
end D_latch ;
--*******************************
architecture A_table of D_latch is
begin
  process(CLR,EN,D)
   begin
     if CLR='0' then             
        Q <= '0' ;            
     elsif EN='1' then  
 		Q <=  D ;
     end if;
   end process ; 
end A_table;
