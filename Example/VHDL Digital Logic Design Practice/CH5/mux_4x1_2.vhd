
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Mux_4x1_2 is
 port ( I : in  std_logic_vector(3 downto 0) ; 
        S : in  std_logic_vector(1 downto 0) ;   
	    Y : out std_logic ) ;
end Mux_4x1_2 ;
--*******************************
architecture A_case_is of Mux_4x1_2 is
begin
  process (S,I)
  begin
    case S is 
      when "00"   =>  Y <= I(0) ; 
      when "01"   =>  Y <= I(1) ; 
      when "10"   =>  Y <= I(2) ; 
      when others =>  Y <= I(3) ; 
    end case ;
  end process ; 
end A_case_is ;

