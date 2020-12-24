
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Mux_2x1_1 is
 port ( I0,I1 : in  std_logic ; 
        S     : in  std_logic ;   
	    Y     : out std_logic ) ;
end Mux_2x1_1;
--*******************************
architecture A_if_then_else of Mux_2x1_1 is
begin
  process
    begin
      if S='0' then Y<=I0;
      else Y<=I1; 
      end if;
  end process;
end A_if_then_else ;

