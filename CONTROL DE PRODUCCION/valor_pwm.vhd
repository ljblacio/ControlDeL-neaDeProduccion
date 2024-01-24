-- VALOR PWM
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-- ENTIDAD
entity valor_pwm is
	port(tproduc: in integer range 0 to 127;
			vpwm: out integer range 0 to 255);
end valor_pwm;
-- ARQUITECTURA
architecture funcion of valor_pwm is
begin
	vpwm <= tproduc*255/62; -- se trabaja con maxima capacidad de 500, a 8 horas, tasa maxima de produccion 62 unidades / hora
end funcion;