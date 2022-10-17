
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
--*******************************
entity Clock_1_2_10Hz is
	port (  Clk_2MHz    : in  STD_LOGIC;
		    F_10Hz : out STD_LOGIC;
     		F_2Hz  : out STD_LOGIC;
		    F_1Hz  : out STD_LOGIC );
end Clock_1_2_10Hz;
--*******************************
architecture A of Clock_1_2_10Hz is
   signal F_10Hz_buf : STD_LOGIC;
   signal F_2Hz_buf  : STD_LOGIC;
   signal F_1Hz_buf  : STD_LOGIC;
begin
  F_10Hz <= F_10Hz_buf;
  F_2Hz  <= F_2Hz_buf;
  F_1Hz  <= F_1Hz_buf;

process(Clk_2MHz)
  variable Delay1 : std_logic_vector(16 downto 0);
begin
 if rising_edge(Clk_2MHz) then
   if Delay1 >= 99999 then  
      Delay1 := "00000000000000000" ;
      F_10Hz_buf <= not F_10Hz_buf ; 
   else Delay1 := Delay1+1 ;
   end if;
 end if;
end process;

process(F_10Hz_buf)
  variable Delay2 : std_logic_vector(2 downto 0);
begin
 if rising_edge (F_10Hz_buf) then
   if Delay2 >= 4  then  Delay2 := "000" ; 
   else  Delay2 := Delay2+1;
   end if;
 end if;
 F_2Hz_buf <= Delay2(2);
end process;

process(F_2Hz_buf)
begin
 if rising_edge (F_2Hz_buf) then
   F_1Hz_buf <= not F_1Hz_buf; 
 end if;
end process;

end A ;
