
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity MOD_10_UD is
 port ( CLR,DIR,CK : in  std_logic ;                    
	    Q : out std_logic_vector(3 downto 0)) ;
end MOD_10_UD ;
--*******************************
architecture A_up_down of MOD_10_UD is
signal Q_temp : std_logic_vector(3 downto 0);
begin
  process(CK)
  begin
    if CK'event and CK='1' then
       if CLR='0' then Q_temp <= "0000" ;
       elsif DIR='1' then 
          if Q_temp="1001" then Q_temp <= "0000" ; 
          else Q_temp <= Q_temp + 1 ;              
		  end if ;
       elsif DIR='0' then 
          if Q_temp="0000" then Q_temp <= "1001" ; 
          else Q_temp <= Q_temp - 1 ; 
          end if ;
      end if;
    end if;
  end process ; 
  Q <= Q_temp ;
end A_up_down ;
