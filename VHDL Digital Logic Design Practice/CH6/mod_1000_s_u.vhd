
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity MOD_1000_S_u is
 port ( CLR,LOAD,CK : in  std_logic ; 
        Di          : in  integer range 0 to 999  ;        
	    Q           : out integer range 0 to 999 ) ;
end MOD_1000_S_u ;
--*******************************
architecture A_clr_load of MOD_1000_S_u is
begin
   process(CLR,CK)
   variable Q_temp : integer range 0 to 999 ;
   begin
     if CK'event and CK='1' then
        if CLR='0' then Q_temp := 0 ;            
        elsif LOAD='0' then Q_temp := Di ;
        elsif Q_temp = 999 then Q_temp := 0 ;
        else  Q_temp := Q_temp + 1 ;
        end if;
     end if ;
     Q <= Q_temp ;
   end process ; 
end A_clr_load ;
