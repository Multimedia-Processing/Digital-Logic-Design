
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all ;
use ieee.std_logic_arith.all ;
--********************************************************
entity Clock is
  port ( Scan   : out std_logic_vector(5 downto 0);  
		 Seven  : out std_logic_vector(7 downto 0);  
         Set,Up : in std_logic ;                       
		 Reset  : in std_logic ;                       
		 Clk    : in std_logic );
end Clock ;
--********************************************************
architecture Arch of Clock is
 signal Count   : std_logic_vector(21 downto 0);   
 signal Mode    : std_logic_vector(1 downto 0);     
 signal Bcd     : std_logic_vector(3 downto 0);    
 signal Hrb     : std_logic_vector(3 downto 0);    
 signal Mrb     : std_logic_vector(3 downto 0);     
 signal Srb     : std_logic_vector(3 downto 0);     
 signal Fre_1hz : std_logic ;                     
 signal Dot_buf : std_logic ;                     
 signal Up_buf  : std_logic ;                     
 signal Set_buf : std_logic ;                     
 signal Time    : std_logic ;                     
 signal Pulse   : std_logic ;                     
begin
  Hrb <= "1111" when Mode="11" and Fre_1hz='0' else   
         "0000" ; 
  Mrb <= "1111" when Mode="10" and Fre_1hz='0' else   
         "0000" ;
  Srb <= "1111" when Mode="01" and Fre_1hz='0' else   
         "0000" ;
  Time <= Fre_1hz when Mode="00" else Up_buf ;         
  Seven(7) <= Dot_buf when Reset='0' and Mode="00" else 
              '0' ;                                    
  Seven(6 downto 0) <= "0111111" when Bcd="0000"  else --0   
                       "0000110" when Bcd="0001"  else --1          
                       "1011011" when Bcd="0010"  else --2          
                       "1001111" when Bcd="0011"  else --3          
                       "1100110" when Bcd="0100"  else --4          
                       "1101101" when Bcd="0101"  else --5          
                       "1111101" when Bcd="0110"  else --6          
                       "0100111" when Bcd="0111"  else --7         
                       "1111111" when Bcd="1000"  else --8          
                       "1101111" when Bcd="1001"  else --9                
                       "0000000" ;               
------------------------------------------------------------------------------
  Clk_generator:
  process(Clk)
    variable Delay : std_logic_vector(19 downto 0);
  begin
  if rising_edge(Clk) then
    if Delay=1000000 then Delay := "00000000000000000000" ;
       Fre_1hz <= not Fre_1hz ; 
    else Delay := Delay+1 ;
    end if ;
    Pulse <= Delay(14);
  end if ;
  end process Clk_generator ;
------------------------------------------------------------------------------
  Timer_Set:
  process(Pulse)
  begin
    if Reset='1' then 
       Set_buf <= '0' ;
       Up_buf <= '0' ;
    elsif rising_edge(Pulse) then
       Set_buf <= Set ;
       Up_buf <= Up ;        
    end if ;
  end process Timer_Set ;
------------------------------------------------------------------------------
  Mode_select:
  process(Set_buf)
  begin
    if Reset='1' then
       Mode <= "00" ;
    elsif rising_edge(Set_buf) then
       Mode <= Mode+1 ;                   
    end if ;                                                                 
  end process Mode_select ;
------------------------------------------------------------------------------
  Timer_Count:
  process(Time,Reset)
  begin
  if Reset='1' then 
     Count <= "0000000000000000000000" ;
  elsif rising_edge(Time) then 
------------------------------------------------------
    if (Count(21 downto 0) >= "1000110101100101011001" and Mode="00") or
       (Count(21 downto 16) >= "100011" and Mode="11") then 
       Count(21 downto 20) <= "00" ;
    elsif (Count(19 downto 0) >= "10010101100101011001" and Mode="00") or
          (Count(19 downto 16) >= "1001" and Mode="11") then
       Count(21 downto 20) <= Count(21 downto 20)+1 ;
    end if ;
-----------------------------------------------------
    if ((Count(19 downto 0) >= "10010101100101011001" or
         Count(21 downto 0) >= "1000110101100101011001" ) and Mode="00") or
       ((Count(19 downto 16) >= 9 or Count(21 downto 16) >= "100011")and Mode="11" ) then
       Count(19 downto 16) <= "0000" ;
    elsif (Count(15 downto 0) >= "0101100101011001" and Mode="00") or Mode="11" then 
       Count(19 downto 16) <= Count(19 downto 16)+1 ;
    end if ;
-----------------------------------------------------
    if (Count(15 downto 0) >= "0101100101011001" and Mode="00") or 
       (Count(15 downto 8) >= "01011001" and Mode="10" ) then  
       Count(15 downto 12) <= "0000" ;
    elsif (Count(11 downto 0) >= "100101011001" and Mode="00") or
       (Count(11 downto 8) >= "1001" and Mode="10") then
       Count(15 downto 12) <= Count(15 downto 12)+1 ;
    end if ;
-----------------------------------------------------
    if ( Count(11 downto 0) >= "100101011001" and Mode="00" ) or 
       ( Count(11 downto 8) >= 9 and Mode="10" )then 
       Count(11 downto 8) <= "0000" ;
    elsif (Count(7 downto 0) >= "01011001" and Mode="00") or Mode="10" then
       Count(11 downto 8) <= Count(11 downto 8)+1 ;
    end if ;
-----------------------------------------------------
    if (Count(7 downto 0) >= "01011001" and (Mode="00" or Mode="01")) then 
       Count(7 downto 4) <= "0000" ;
    elsif (Count(3 downto 0) >= 9 and (Mode="00" or Mode="01")) then 
       Count(7 downto 4 ) <= Count(7 downto 4 )+1 ;
    end if ;
------------------------------------------------------
    if (Count(3 downto 0)=9  and (Mode="00" or Mode="01"))then
       Count(3 downto 0) <= "0000" ;
    elsif (Mode="00" or Mode="01") then  
       Count(3 downto 0 ) <= Count(3 downto 0)+1 ;
    end if ;
-------------------------------------------------------------
  end if ;
  end process Timer_Count ;
------------------------------------------------------------------------------
  Signal_Scan:
  process(Clk)
   variable Scan1 : std_logic_vector(2 downto 0);
  begin
  if (Clk'event and Clk='1')then
    if  (Scan1="000") then
         Scan <= "011111" ;
         Bcd <= ("00" & (Count(21 downto 20)) or Hrb(3 downto 0));
         Dot_buf <= '0' ;
    elsif (Scan1="001") then 
         Scan <= "101111" ;
         Bcd <= Count(19 downto 16) or Hrb(3 downto 0);
         Dot_buf <= '0' ;
    elsif (Scan1="010") then 
         Scan <= "110111" ;
         Bcd <= Count(15 downto 12) or Mrb(3 downto 0);
         Dot_buf <= '0' ;
    elsif (Scan1="011") then 
         Scan <= "111011" ;
         Bcd <= Count(11 downto 8) or Mrb(3 downto 0);
         Dot_buf <= Fre_1hz ;
    elsif (Scan1="100") then
         Scan <= "111101" ;
         Bcd <= Count(7 downto 4)or Srb(3 downto 0);
         Dot_buf <= '0' ;
    elsif (Scan1="101") then
         Scan <= "111110" ;
         Bcd <= Count(3 downto 0) or Srb(3 downto 0);
         Dot_buf <= '0' ;
    end if ;
    if Scan1 >= "101" then Scan1 := "000" ;
    else Scan1 := Scan1 + 1 ;
    end if ;
  end if ;
end process Signal_Scan ;
------------------------------------------------------------------------------
end Arch ;
