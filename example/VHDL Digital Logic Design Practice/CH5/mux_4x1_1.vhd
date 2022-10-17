
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Mux_4x1_1 is
 port ( I  : in  std_logic_vector(3 downto 0) ; 
        S  : in  std_logic_vector(1 downto 0) ;   
	    Y  : out std_logic ) ;
end Mux_4x1_1;
--*******************************
architecture A_with_select of Mux_4x1_1 is
begin
  with S select 
   Y <= I(0) when "00"  ,    
        I(1) when "01"  ,   
        I(2) when "10"  ,    
        I(3) when others ;  
end A_with_select ;

