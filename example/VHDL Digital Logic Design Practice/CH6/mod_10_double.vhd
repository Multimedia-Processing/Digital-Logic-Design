
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity MOD_10_double is
 port ( CLR,LOAD,EN,CK : in  std_logic ; 
        D1,D0  : in  std_logic_vector(3 downto 0) ;        
	    Q1,Q0  : out std_logic_vector(3 downto 0));
end MOD_10_double ;
--*******************************
architecture A_multi_if of MOD_10_double is
begin
   process(CK)
   variable Q1_temp,Q0_temp : std_logic_vector(3 downto 0) ;
   begin
     if CK'event and CK='1' then
        if CLR='0' then 
           Q1_temp := "0000" ; 
           Q0_temp := "0000" ; 
        elsif LOAD='0' then
           Q1_temp := D1 ; 
           Q0_temp := D0 ; 
        elsif EN='0' then
          if Q0_temp = "1001" then Q0_temp := "0000" ;
             if Q1_temp = "1001" then Q1_temp := "0000" ;
             else  Q1_temp := Q1_temp + 1 ;
             end if ;
          else  Q0_temp := Q0_temp + 1 ;
          end if;
       end if;
    end if;
    Q1 <= Q1_temp ; 
    Q0 <= Q0_temp ;  
    end process ; 
end A_multi_if ;
