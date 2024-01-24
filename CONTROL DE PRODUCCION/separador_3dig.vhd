library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-- ENTIDAD
entity separador_3dig is
	generic(n: integer :=9);
	port(numero: in std_logic_vector(n-1 downto 0);
		  centena, decena, unidad: out integer range 0 to 15);
end separador_3dig;
-- ARQUITECTURA
architecture funcion of separador_3dig is
signal x,y: integer range 0 to 255;
begin
x<=(conv_integer(numero)) / 10;
y<= x/10;
unidad<=(conv_integer(numero)) mod 10;
decena<= x mod 10;
centena<= y mod 10;
end funcion;