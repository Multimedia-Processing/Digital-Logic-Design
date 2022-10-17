
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Mux_4x1_4 is
 port ( I : in  std_logic_vector(3 downto 0) ; 
        S : in  std_logic_vector(1 downto 0) ; 
        G : in  std_logic ; 
	    Y : out std_logic ) ;
end Mux_4x1_4 ;
--*******************************
architecture A_if_then_else of Mux_4x1_4 is
begin
  process (G,S,I)
  begin
    if    G='1'   then  Y <= 'Z' ; 
    elsif S="00"  then  Y <= I(0) ; 
    elsif S="01"  then  Y <= I(1) ; 
    elsif S="10"  then  Y <= I(2) ; 
    elsif S="11"  then  Y <= I(3) ; 
    end if ;
  end process ; 
end A_if_then_else ;

