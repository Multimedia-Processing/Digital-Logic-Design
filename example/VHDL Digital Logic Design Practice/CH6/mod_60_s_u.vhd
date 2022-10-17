
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity MOD_60_S_u is
 generic ( N : integer := 59 ) ;
 port ( CLR,LOAD,CK : in  std_logic ; 
        Di  : in  integer range N downto 0   ;        
	    Q   : out integer range N downto 0 ) ;
end MOD_60_S_u ;
--*******************************
architecture A_generic of MOD_60_S_u is
begin
   process(CLR,CK)
   variable Q_temp : integer range 0 to N ;
   begin
     wait until CK='1'  ;
        if CLR='0' then Q_temp := 0 ;            
        elsif LOAD='0' then Q_temp := Di ;
        elsif Q_temp = N then Q_temp := 0 ;
        else  Q_temp := Q_temp + 1 ;
        end if;
     Q <= Q_temp ;
   end process ; 
end A_generic ;
