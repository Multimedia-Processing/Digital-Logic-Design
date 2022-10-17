
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity jk_ff1 is
 port ( CK  : in  std_logic ;                    
        J,K : in std_logic;
        JK_Q : out std_logic 
      ) ;
end jk_ff1 ;
--*******************************
architecture A_ARCH of jk_ff1 is
signal Q : std_logic;
begin
  process(CK)
  begin
    if CK'event and CK='1' then 
       if J='0' and K='1' then Q<='0';
       elsif J='1' and K='0' then Q<='1';
       elsif J='1' and K='1' then Q<=NOT Q;
       else Q<=Q; 
       end if;
    end if;
  end process ; 
 JK_Q <= Q ; 
end A_ARCH;
