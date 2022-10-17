
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity MOD_8_Johnson is
 generic ( N : integer := 3 ) ;
 port ( CK : in  std_logic ; 
	    Q : out std_logic_vector(0 to N)) ;
end MOD_8_Johnson ;
--*******************************
architecture A_generic of MOD_8_Johnson is
   signal Q_temp : std_logic_vector(0 to N) ;
begin
   process(CK)
   begin
	 if CK'event and CK='1' then
        Q_temp(0) <= not Q_temp(N);
		for i in 1 to N loop
			Q_temp(i) <= Q_temp(i-1);
		end loop ;
	 end if ;
   end process ;
   Q <= Q_temp ;
end A_generic ;
