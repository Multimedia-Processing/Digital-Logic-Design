
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Demux_1x4_1 is
 port ( I : in  std_logic ; 
        S : in  std_logic_vector(1 downto 0) ;   
	    Y : out std_logic_vector(3 downto 0)) ;
end Demux_1x4_1 ;
--*******************************
architecture A_case_when of Demux_1x4_1 is
begin
  process(S,I) 
  begin
    case S is
 	  when "00"   =>   Y(0)<=I ;
      when "01"   =>   Y(1)<=I ; 
 	  when "10"   =>   Y(2)<=I ; 
 	  when others =>   Y(3)<=I ; 
    end case ;
  end process ;
end A_case_when ;

