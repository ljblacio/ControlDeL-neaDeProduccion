-- COMPARADOR
library ieee;
use ieee.std_logic_1164.all;
entity compara is
	port(a: in std_logic_vector (4 downto 0);
	     b: out std_logic);
end compara;
architecture funcion of compara is
begin
b<='0' when a>"00000" else '1';
end funcion;
