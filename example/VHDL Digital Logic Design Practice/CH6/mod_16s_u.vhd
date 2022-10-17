
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity MOD_16S_U is
 port ( CLR,CK : in  std_logic ;                    
	    Q      : out std_logic_vector(3 downto 0)) ;
end MOD_16S_U ;
--*******************************
architecture A_clear_a of MOD_16S_U is
signal Q_temp : std_logic_vector(3 downto 0);
begin
   process(CLR,CK)
   begin
     if CLR='0' then                
        Q_temp <= "0000" ;            
     elsif CK'event and CK='1' then 
        Q_temp <= Q_temp + 1 ;  
     end if;
   end process ; 
   Q <= Q_temp ;
end A_clear_a ;
