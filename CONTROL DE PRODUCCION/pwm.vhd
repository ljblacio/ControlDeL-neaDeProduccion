--PWM DE 8 BITS
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--ENTIDAD
entity pwm is
	port(clkin, reset: in std_logic;
			valor_pwm: in std_logic_vector (7 downto 0);
			pwm_out: out std_logic);
end pwm;
-- ARQUITECTURA
architecture funcion of pwm is
signal conta: std_logic_vector(7 downto 0) := (others =>'0');
begin
	process(reset, clkin)
	begin
		if(reset='1') then
			conta<= (others =>'0'); 
		elsif (clkin'event and clkin='1') then
			conta<=conta+1;
		end if;
	end process;
pwm_out<='0' when (valor_pwm<conta or reset='1') else '1';
end funcion;
-- FREC.PWM = FREC. IN / (2^N - 1)