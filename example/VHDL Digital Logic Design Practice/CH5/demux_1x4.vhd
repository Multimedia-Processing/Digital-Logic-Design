
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Demux_1x4 is
 port ( I           : in  std_logic ; 
        S1,S0       : in  std_logic ;   
	    Y3,Y2,Y1,Y0 : out std_logic ) ;
end Demux_1x4;
--*******************************
architecture A_Boolean of Demux_1x4 is
  begin
    Y0 <= I and (not S1) and (not S0) ;
    Y1 <= I and (not S1) and S0 ;
    Y2 <= I and S1 and (not S0) ;
    Y3 <= I and S1 and S0 ;
  end A_Boolean ;

