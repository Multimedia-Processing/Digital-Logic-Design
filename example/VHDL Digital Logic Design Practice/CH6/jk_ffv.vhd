
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity JK_FFV is
 port (PR,CLR,J,K,CK : in  std_logic ;                    
	   Q             : out std_logic ) ;
end JK_FFV ;
--*******************************
architecture A_table of JK_FFV is
signal Q_temp : std_logic ;
begin
process(PR,CLR,CK)
begin
  if PR='0' then             
     Q_temp <= '1' ;            
  elsif CLR='0' then           
     Q_temp <= '0' ;
  elsif CK'event and CK='0' then  
 	 if J='0' and K='0' then 
        Q_temp <= Q_temp ;
	 elsif J='0' and K='1' then
        Q_temp <= '0' ;	
	 elsif J='1' and K='0' then
        Q_temp <= '1' ;	
	 elsif J='1' and K='1' then 
        Q_temp <= not Q_temp ;
	 end if ;
  end if;
end process ; 
Q <= Q_temp ;
end A_table ;
