library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Bin_to_BCD_8bit_1 is
port ( B   : in  std_logic_vector (7 downto 0) ;
       BCD : out std_logic_vector (9 downto 0)) ;
end Bin_to_BCD_8bit_1 ;
--*******************************
architecture A_shift of Bin_to_BCD_8bit_1 is
begin
process(B)
variable Temp : std_logic_vector (17 downto 0) ;
begin
  Temp :="000000000000000000" ;
  Temp(10 downto 3) := B ;
  for i in 1 to 5 loop
	  if Temp(11 downto 8) >= 5 then	
	     Temp(11 downto 8) := Temp(11 downto 8) + 3 ;
	  end if;
	  if Temp(15 downto 12) >= 5 then	
	     Temp(15 downto 12) := Temp(15 downto 12) + 3 ;
	  end if ;
	  Temp(17 downto 1) := Temp(16 downto 0) ;
  end loop ;
  BCD <= Temp(17 downto 8) ;	
end process  ;            
end A_shift ;


