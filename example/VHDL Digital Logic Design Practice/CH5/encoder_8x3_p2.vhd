
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Encoder_8x3_p2 is
 port ( I  : in  std_logic_vector(7 downto 0) ;  
	    Y  : out std_logic_vector(2 downto 0)) ;
end Encoder_8x3_p2 ;
--*******************************
architecture A_if_then_else of Encoder_8x3_p2 is
begin
  process (I)
  begin
       if I(7)='1' then  Y<= "111" ;
       elsif I(6)='1' then  Y<= "110" ;
       elsif I(5)='1' then  Y<= "101" ;
       elsif I(4)='1' then  Y<= "100" ;
       elsif I(3)='1' then  Y<= "011" ;
       elsif I(2)='1' then  Y<= "010" ;
       elsif I(1)='1' then  Y<= "001" ;
       else  Y<= "000" ;
       end if ;
  end process;
end A_if_then_else  ;

