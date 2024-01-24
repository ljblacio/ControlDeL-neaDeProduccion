-- MUX 2 A 1 DE N BITS
library ieee;
use ieee. std_logic_1164.all;
-- ENTIDAD
entity selector_2a1 is
	generic(n: integer :=3);
	port(a,b: in std_logic_vector(n-1 downto 0);
		  sel: in std_logic;
		    c: out std_logic_vector (n-1 downto 0));
end selector_2a1;
-- ARQUITECTURA
architecture funcion of selector_2a1 is
begin
c<=a when sel='0' else b;
end funcion;