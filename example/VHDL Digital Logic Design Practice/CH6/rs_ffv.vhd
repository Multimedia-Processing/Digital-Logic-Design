
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity RS_FFV is
 port ( PR,CLR,S,R,CK : in  std_logic ;                    
	    Q             : out std_logic ) ;
end RS_FFV ;
--*******************************
architecture A_table of RS_FFV is
signal Q_temp : std_logic ;
begin
process(PR,CLR,CK,R,S)
  begin
    if CLR='0' then             
       Q_temp <= '0' ;            
    elsif PR='0' then           
       Q_temp <= '1' ;
    elsif CK'event and CK='1' then  
 	   if S='0' and R='0' then 
          Q_temp <= Q_temp ;
	   elsif S='0' and R='1' then
             Q_temp <= '0' ;	
	   elsif S='1' and R='0' then
             Q_temp <= '1' ;	
	   elsif S='1' and R='1' then 
             Q_temp <= not Q_temp ;
	   end if ;
    end if;
    Q <= Q_temp ; 
end process ; 
end A_table;
