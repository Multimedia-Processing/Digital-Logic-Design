
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Bin_to_BCD_8bit is
 port ( B              : in  unsigned(7 downto 0) ;  
	    BCD2,BCD1,BCD0 : out std_logic_vector(3 downto 0)) ;
end Bin_to_BCD_8bit ;
--*******************************
architecture A_arith of Bin_to_BCD_8bit is
signal Temp : unsigned(6 downto 0) ;
begin
  process(B)
  begin
    if    B >199  then 
          BCD2 <= "0010" ;
          Temp <= B-200 ;
    elsif B >99  then 
          BCD2 <= "0001" ;
          Temp <= B-100 ;
    else  
          BCD2 <= "0000" ;
          Temp <= B-0 ;
    end if; 
    if    Temp >89  then 
          BCD1 <= "1001" ;
          BCD0 <= Temp-90 ;
    elsif Temp >79 then
          BCD1 <= "1000" ;
	      BCD0 <= Temp-80 ;
    elsif Temp >69 then
          BCD1 <= "0111" ;
	      BCD0 <= Temp-70 ;
    elsif Temp >59 then
          BCD1 <= "0110" ;
	      BCD0 <= Temp-60 ;
    elsif Temp >49 then
          BCD1 <= "0101" ;
	      BCD0 <= Temp-50 ;
    elsif Temp >39 then
          BCD1 <= "0100" ;
	      BCD0 <= Temp-40 ;
    elsif Temp >29 then
          BCD1 <= "0011" ;
	      BCD0 <= Temp-30 ;
    elsif Temp >19 then
          BCD1 <= "0010" ;
	      BCD0 <= Temp-20 ;
    elsif Temp >9 then
          BCD1 <= "0001" ;
	      BCD0 <= Temp-10 ;
    else
          BCD1 <= "0000" ;
          BCD0 <= Temp-0 ;    
    end if ;
  end process;
end A_arith ;

