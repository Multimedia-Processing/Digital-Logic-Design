
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity BCD_add_1d_1 is
 port ( A,B   : in  std_logic_vector(3 downto 0) ;                    
	    S     : out std_logic_vector(3 downto 0) ;
        Co,E  : out std_logic );
end BCD_add_1d_1 ;
--*******************************
architecture A_arith of BCD_add_1d_1 is
 signal Temp : std_logic_vector(4 downto 0) ;
begin
process(A,B)
  begin
    Temp <= ('0'&A)+B ;
    if (A(3 downto 0)>9) OR (B(3 downto 0)>9) then
       S <= "ZZZZ" ;
       Co <= 'Z';
       E <= '1' ;
	elsif (Temp(3 downto 0)>9) OR (Temp(4)='1') then
		S <= Temp(3 downto 0)+6 ;
		Co <= '1';
        E <= '0' ;
	else
		S <= Temp(3 downto 0);
		Co <= '0' ;
        E <= '0' ;
    end if;
end process ; 
end A_arith ;
