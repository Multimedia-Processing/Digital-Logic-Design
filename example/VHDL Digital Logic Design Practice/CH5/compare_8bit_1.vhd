
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Compare_8bit_1 is
 port ( A,B   : in  std_logic_vector(7 downto 0) ;  
	    G,E,L : out std_logic ) ;
end Compare_8bit_1;
--*******************************
architecture A_process of Compare_8bit_1 is
begin
  process(A,B)
  begin
    if A>B then  G <= '1' ;
	else  G <= '0' ;
	end if ;
  end process;
  process(A,B)
  begin
    if A=B then  E <= '1' ;
	else  E <= '0' ;
	end if ;
  end process;
  process(A,B)
  begin
    if A<B then  L <= '1' ;
	else  L <= '0' ;
	end if ;
  end process;
end A_process  ;

