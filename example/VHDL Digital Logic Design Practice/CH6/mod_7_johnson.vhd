
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity MOD_7_Johnson is
 generic ( N : integer := 3 ) ;
 port ( CK  : in  std_logic ;                    
        Q   : out std_logic_vector( N downto 0)) ;
end MOD_7_Johnson ;
--*******************************
architecture A_port_map of MOD_7_Johnson is
  component JK_FFV_1
    port ( CK,J,K : in std_logic ;
           JK_Q   : out std_logic ) ;
  end component ; 
signal Q_temp  : std_logic_vector(N downto 0) ;
signal Q_bar   : std_logic_vector(N downto 0) ;
begin
  Q_bar <= not Q_temp ;
  U0 : JK_FFV_1 port map (
                CK=>CK,J=>Q_bar(N),
                K=>Q_temp(N-1),
                JK_Q=>Q_temp(0)) ;
  U1_U3 : for i in 1 to N generate
           Lab : JK_FFV_1 port map (CK,Q_temp(i-1),Q_bar(i-1),Q_temp(i)) ;
          end generate U1_U3 ;
  Q <= Q_temp ;
end A_port_map ;

