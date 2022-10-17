
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Demux_1x16_1 is
 port ( 
	   I : in  std_logic ; 
       S : in  std_logic_vector(3 downto 0) ;   
	   Y : out std_logic_vector(15 downto 0) 
	  ) ;
end Demux_1x16_1 ;
--*******************************
architecture A_case_is of Demux_1x16_1 is
begin
   process(S,I) 
   begin
     case S IS
 	  when "0000"   =>   Y(0) <=I ;
      when "0001"   =>   Y(1) <=I ; 
 	  when "0010"   =>   Y(2) <=I ;
      when "0011"   =>   Y(3) <=I ;
      when "0100"   =>   Y(4) <=I ;
      when "0101"   =>   Y(5) <=I ;
      when "0110"   =>   Y(6) <=I ;
      when "0111"   =>   Y(7) <=I ;
      when "1000"   =>   Y(8) <=I ;
      when "1001"   =>   Y(9) <=I ;
      when "1010"   =>   Y(10)<=I ;
      when "1011"   =>   Y(11)<=I ;
      when "1100"   =>   Y(12)<=I ;
      when "1101"   =>   Y(13)<=I ;
      when "1110"   =>   Y(14)<=I ;
 	  when others   =>   Y(15)<=I ; 
     end case ;
   end process ;
end A_case_is ;

