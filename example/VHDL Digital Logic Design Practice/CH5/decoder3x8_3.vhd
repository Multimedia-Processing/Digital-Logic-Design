
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Decoder3x8_3 is
 port ( A : in  integer range 0 to 7 ;  
	    Y : out std_logic_vector(7 downto 0)) ;
end Decoder3x8_3 ;
--*******************************
architecture A_for_generate of Decoder3x8_3 is
begin
   Lop : for N in 7 downto 0 generate 
           Y(N) <= '0' when A=N else '1' ; 
         end generate ;
end A_for_generate  ;





