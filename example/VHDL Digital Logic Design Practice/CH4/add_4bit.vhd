
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Add_4bit is
 port ( A,B  : in std_logic_vector(3 downto 0) ;  
	    S    : out std_logic_vector(3 downto 0) ;
	    Cout : out std_logic ) ;
end Add_4bit ;
--*******************************
architecture A_port_map of Add_4bit is
 signal C1,C2,C3 : std_logic ;
component Half_add
   port ( A,B :  in   std_logic ;  
		  S,C :  out  std_logic	) ;                               
end component ;
component Full_add
	port ( Ai,Bi,Ci : in  std_logic ;
		   So,Co    : out std_logic  );
end component;	
 begin
  U1 : Half_add  port map (A(0),B(0),S(0),C1);
  U2 : Full_add  port map (A(1),B(1),C1,S(1),C2);
  U3 : Full_add  port map (A(2),B(2),C2,S(2),C3);
  U4 : Full_add  port map (A(3),B(3),C3,S(3),Cout);
end A_port_map  ;


