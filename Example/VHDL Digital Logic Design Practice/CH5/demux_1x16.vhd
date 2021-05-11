
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;

--*******************************
entity Demux_1x16 is
 port ( I           : in  std_logic ; 
        S3,S2,S1,S0 : in  std_logic ;   
	    O           : out std_logic_vector(15 downto 0)) ;
end Demux_1x16 ;
--*******************************
architecture A_prot_map of Demux_1x16 is
signal T0,T1,T2,T3 : std_logic ;
  component Demux_1x4
	port ( I           : in  std_logic ; 
           S1,S0       : in  std_logic ;   
	       Y3,Y2,Y1,Y0 : out std_logic  );
  end component;	
begin
  U1 : Demux_1x4    port map (I,S3,S2,T3,T2,T1,T0);
  U2 : Demux_1x4    port map (T0,S1,S0,O(3),O(2),O(1),O(0));
  U3 : Demux_1x4    port map (T1,S1,S0,O(7),O(6),O(5),O(4));
  U4 : Demux_1x4    port map (T2,S1,S0,O(11),O(10),O(9),O(8));
  U5 : Demux_1x4    port map (T3,S1,S0,O(15),O(14),O(13),O(12));
end A_prot_map  ;


