-- SEPARADOR 3 DIGITOS
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-- ENTIDAD
entity separa_3dig is
	port(num: in integer range 0 to 511;
		  cent, dec, uni: out integer range 0 to 15);
end separa_3dig;
-- ARQUITECTURA
architecture funcion of separa_3dig is
signal x: integer range 0 to 127;
begin
x<= num mod 100;
cent<=num/100;
dec<=x/10;
uni<= x mod 10;
end funcion;

