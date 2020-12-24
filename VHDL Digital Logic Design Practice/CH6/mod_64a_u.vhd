
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity MOD_64a_u is
 port ( CLR,CK : in  std_logic ;                    
	    Q      : out std_logic_vector(5 downto 0)) ;
end MOD_64a_u ;
--*******************************
architecture A_port_map of MOD_64a_u is
signal Q_temp : std_logic_vector(5 downto 0);
  component DIV_2_N
     port ( CLR,CK : in  std_logic ;                    
	        Q      : out std_logic ) ;
  end component ; 
begin
  U1 : DIV_2_N port map (CLR,CK,Q_temp(0)) ;
  U2 : for i in 1 to 5 generate
           Lab : DIV_2_N port map (CLR,Q_temp(i-1),Q_temp(i)) ;
       end generate U2 ;
  Q <= Q_temp ;
end A_port_map ;
