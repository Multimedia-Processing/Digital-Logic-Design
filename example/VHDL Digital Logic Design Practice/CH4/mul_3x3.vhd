
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity mul_3x3 is
 port (  A,B : in  std_logic_vector(2 downto 0);
		 M	 : out std_logic_vector(5 downto 0) );
end mul_3x3 ;
--*******************************
architecture A_operator of mul_3x3 is
begin
    M <= A*B ;
end A_operator ;


