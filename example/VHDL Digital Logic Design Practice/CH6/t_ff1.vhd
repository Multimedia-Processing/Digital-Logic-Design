
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity T_ff1 is
 port ( CLR,CK  : in  std_logic ; 
        T_Q     : out std_logic ) ;
end T_ff1 ;
--*******************************
architecture ARCH of T_ff1 is
signal Q : std_logic;
begin
   T_Q <= Q when CLR='1' else '0';
   process(CLR,CK)
   begin
      if CLR='0' then Q<='0';
        elsif CK'event and CK='0' then 
           Q <= not Q ;  
      end if;
   end process ; 
end ARCH;
