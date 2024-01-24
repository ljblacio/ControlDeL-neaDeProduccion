-- VALIDACION CAPACIDAD
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-- ENTIDAD
entity capacidad_val is
	port(tproduc: in integer range 0 to 127;
			capacidad: out std_logic);
end capacidad_val;
-- ARQUITECTURA
architecture funcion of capacidad_val is
constant capa_max: integer range 0 to 511 :=500;
begin
	capacidad<='0' when (tproduc*8 > capa_max) else '1';
end funcion;