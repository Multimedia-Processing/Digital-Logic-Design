library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
--********************************************************
entity LED_2M is
 port ( Clk : in  std_logic ;                                     
        Q   : out std_logic_vector(7 downto 0)); 
end LED_2M ;
--********************************************************
architecture Arch of LED_2M is
  type State_mode is (Mode1,Mode2,Mode3); 
  signal S: State_mode ;                                   
  signal Q_buf : std_logic_vector(7 downto 0);   
  signal Pulse : std_logic ;   
begin
  Q <= Q_buf ;
  Clk_generator:
    process(Clk)
      variable Delay : std_logic_vector(19 downto 0);
    begin
      if rising_edge(Clk) then
         if Delay=1000000 then Delay := "00000000000000000000" ;
         else Delay := Delay+1 ;
         end if ;
         Pulse <= Delay(19);
      end if ;
    end process Clk_generator ;

  LED_shift:
    process(Pulse)
      variable Count : std_logic_vector(4 downto 0);   
    begin
      if rising_edge(Pulse) then 
         case S is
           when Mode1 =>             
                if Count >= "11111" then 
                   Count := "00000" ;
                   Q_buf <= "00000000" ;
                   S <= Mode2 ;
                else
                   Q_buf <= (Q_buf(6 downto 0)&(not Q_buf(7)));
                   S <= Mode1 ;
                   Count := Count+1 ;
                end if ;
           when Mode2 => 
                if Count >= "10000" then 
                   Count := "00000" ;
                   Q_buf <= "00000000" ;
                   S <= Mode3 ;
                else 
                   Q_buf <= (Q_buf(6 downto 4)) & ((not Q_buf(7)) 
                            & (not Q_buf(0)) & (Q_buf(3 downto 1))) ;
                   S <= Mode2 ;
                   Count := Count+1 ;
                end if ;

           when Mode3 =>
                if Count >= "10000" then 
                   Count := "00000" ;
                   Q_buf <= "00000000" ;
                   S <= Mode1 ;
                else 
                   Q_buf <= ((not Q_buf(4)) & Q_buf(7 downto 5)) 
                            & (Q_buf(2 downto 0) & (not Q_buf(3)));
                   S <= Mode3 ;
                   Count := Count+1 ;
                end if ;

           when others => 
                Q_buf <= "00000000" ;
                S <= Mode1 ;             
                Count := "00000" ;
         end case ;
      end if ;
    end process LED_shift ;  
end Arch ;



