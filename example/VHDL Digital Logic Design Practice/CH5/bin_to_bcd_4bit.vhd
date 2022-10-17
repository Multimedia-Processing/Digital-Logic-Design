
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Bin_to_BCD_4bit is
 port ( B         : in  unsigned(3 downto 0) ;  
	    BCD0,BCD1 : out std_logic_vector(3 downto 0));
end Bin_to_BCD_4bit ;
--*******************************
architecture A_arith of Bin_to_BCD_4bit is
begin
  process(B)
  begin
    if B<10 then 
       BCD1 <= "0000" ;
       BCD0 <= std_logic_vector(B) ;
    else
       BCD1 <= "0001" ;
	   BCD0 <= B-10 ;
    end if ;
  end process ;
end A_arith ;

