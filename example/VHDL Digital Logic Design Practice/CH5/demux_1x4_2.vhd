
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Demux_1x4_2 is
 port ( I : in  std_logic ; 
        S : in  std_logic_vector(1 downto 0) ;   
	    Y : out std_logic_vector(3 downto 0)) ;
end Demux_1x4_2 ;
--*******************************
architecture A_case_when of Demux_1x4_2 is
begin
process(S,I) 
variable Y_temp : std_logic_vector(3 downto 0);
  begin
    for i in 0 to 3 loop   --Y <= "0000" ;
	    Y_temp(i) := '0' ;
    end loop ; 
    Y <= Y_temp ;
    case S IS
 	  when "00"   =>   Y(0)<=I ;
      when "01"   =>   Y(1)<=I ; 
 	  when "10"   =>   Y(2)<=I ; 
 	  when others =>   Y(3)<=I ; 
    end case ;
  end process ;
end A_case_when ;

