
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity MOD_8a_u_d is
 port ( CLR,CK  : in  std_logic ;                    
        U_D : in  std_logic ; --U_D='0'->count down,U_D='1'-> count up
	    Q   : out std_logic_vector( 2 downto 0)) ;
end MOD_8a_u_d ;
--*******************************
architecture A_port_map of MOD_8a_u_d is
constant N : integer := 2 ;
signal T_Q    : std_logic_vector(N downto 0) ;
signal Q_temp : std_logic_vector(N-1 downto 0) ;
  component DIV_2_P 
   port ( CLR,CK : in  std_logic ;                    
          Q      : out std_logic ) ;
  end component; 
begin
  U1 : DIV_2_P port map( CLR,CK,T_Q(0));
  U2 : for i in 1 to N generate
           Q_temp(i-1)<= (T_Q(i-1) xor U_D) ;
     Lab : DIV_2_P port map (CLR,Q_temp(i-1),T_Q(i)) ;
       end generate U2 ;
  Q <= T_Q ;
end A_port_map  ;
