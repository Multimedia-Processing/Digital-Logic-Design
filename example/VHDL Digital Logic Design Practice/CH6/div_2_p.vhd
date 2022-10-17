
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity DIV_2_P is
 port ( CLR,CK : in  std_logic ;                    
	    Q      : out std_logic ) ;
end DIV_2_P ;
--*******************************
architecture A_table of DIV_2_P is
signal Q_temp : std_logic ;
begin
   process(CLR,CK)
   begin
     if CLR='0' then                
        Q_temp <= '0' ;            
     elsif CK'event and CK='1' then 
        Q_temp <= not Q_temp ;  
     end if;
   end process ; 
   Q <= Q_temp ;  
end A_table;
