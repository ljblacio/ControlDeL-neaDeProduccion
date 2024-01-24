-- COMPARADOR PARA BAJA PRODUCCION
library ieee;
use ieee.std_logic_1164.all;
entity compara_prod is
	port(a: in std_logic_vector (6 downto 0); -- ingreso de tasa de produccion
		  b: in std_logic_vector (8 downto 0); -- ingreso de produccion del dia
		  c: out std_logic);
end compara_prod;
architecture funcion of compara_prod is
begin
c<= '1' when b < '0'&a&'0' else '0'; -- c=1 cuando b<2*a, sino es 0
end funcion;