
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity MOD_6a_u is
 port ( CK  : in  std_logic ;                    
        Q   : out std_logic_vector( 2 downto 0)) ;
end MOD_6a_u ;
--*******************************
architecture A_por_map of MOD_6a_u is
  component t_ff1
    port ( CLR,CK : in std_logic ;
           T_Q    : out std_logic  ) ;
  end component; 
signal T_Q : std_logic_vector(2 downto 0);
signal CLR_temp : std_logic ;
begin
  CLR_temp <='0' when T_Q >= "110" else '1' ;
  U1 : T_ff1 port map ( CK=>CK,T_Q=>T_Q(0),CLR=>CLR_temp);
  U2 : for i in 1 to 2 generate
           Lab : T_ff1 port map (CLR_temp,T_Q(i-1),T_Q(i));
       end generate U2 ;
  Q <= T_Q ;
end A_por_map ;

--U2 : t_ff port map(CK=>T_Q(0),CLR=>CLR_temp,T_Q=>T_Q(1));
--U3 : t_ff port map(CK=>T_Q(1),CLR=>CLR_temp,T_Q=>T_Q(2));

