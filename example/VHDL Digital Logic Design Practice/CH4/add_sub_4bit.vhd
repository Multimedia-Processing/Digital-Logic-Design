
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;
--*******************************
entity Add_sub_4bit is
 port (                      
	   SUB : in  std_logic;
	   A,B : in  std_logic_vector(3 downto 0);  
       S   : out std_logic_vector(3 downto 0);
       C3  : out std_logic  
	  ) ;
end Add_sub_4bit ;
--*******************************
architecture ARCH of Add_sub_4bit is
  signal Temp : std_logic_vector(4 downto 0);
begin
 process(SUB,A,B)
 begin
  if SUB = '0' then
	 Temp <= ( '0' & A ) + B;
	 S <= Temp(3 downto 0);
	 C3<= Temp(4);	
  else
	 Temp <= ('0' & A) + ( not(B) + 1 );
	 S <= Temp(3 downto 0);
	 C3 <= Temp(4);
  end if;
 end process;
end ARCH ;


