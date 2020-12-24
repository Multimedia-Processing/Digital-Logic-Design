
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity MOD_4_Ring is
 port ( STAR,CK : in  std_logic ; 
	    Q : out std_logic_vector(0 to 3)) ;
end MOD_4_Ring ;
--*******************************
architecture A_generic of MOD_4_Ring is
   signal Q_temp : std_logic_vector(0 to 3) ;
begin
   process(STAR,CK)
   begin
     if STAR='0' then  Q_temp <= "1000" ;
	 elsif CK'event and CK='1' then
		for i in 1 to 3 loop
			Q_temp(i) <= Q_temp(i-1);
		end loop ;
	 Q_temp(0) <= Q_temp(3);
     end if ;
   end process ;
   Q <= Q_temp ;
end A_generic ;
