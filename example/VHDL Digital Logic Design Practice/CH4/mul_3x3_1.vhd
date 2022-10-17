
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity mul_3x3_1 is
 port ( A, B : in  std_logic_vector(2 downto 0);
	    M	 : out std_logic_vector(5 downto 0)) ;
end mul_3x3_1 ;
--*******************************
architecture A_shift of mul_3x3_1 is
  signal Temp1 : std_logic_vector(2 downto 0);
  signal Temp2 : std_logic_vector(3 downto 0);
  signal Temp3 : std_logic_vector(4 downto 0);
begin
    Temp1 <=  A when B(0)='1' else "000" ;
    Temp2 <= (A & '0') when B(1)='1' else "0000" ;
    Temp3 <= (A & "00") when B(2)='1' else "00000" ;
    M <= Temp1 + Temp2 + ('0' & Temp3) ;
end A_shift ;


