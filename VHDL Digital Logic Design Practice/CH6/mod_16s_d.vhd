
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity MOD_16S_d is
 port ( CLR,CK : in  std_logic ;                    
	    Q      : out integer range 15 downto 0 ) ;
end MOD_16S_d ;
--*******************************
architecture A_clear_S of MOD_16S_d is
begin
   process(CLR,CK)
   variable Q_temp : integer range 15 downto 0 ;
   begin
     if CK'event and CK='1' then
        if CLR='0' then                
           Q_temp := 0 ;            
        else
           Q_temp := Q_temp - 1 ;  
        end if;
     end if ;
     Q <= Q_temp ;
   end process ; 
end A_clear_S ;
