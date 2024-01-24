-- DECODIFICADOR PARA TECLADO
library ieee;
use ieee.std_logic_1164.all;
-- ENTIDAD
entity decoder_teclado_ln is
 port(columna: in std_logic_vector (2 downto 0);
		fila: in integer range 0 to 15;
		bcd: out integer range 0 to 15;
		enter: out std_logic);
end decoder_teclado_ln;
-- ARQUITECTURA
architecture funcion of decoder_teclado_ln is
begin
	bcd<=1 when (fila=1 and columna="011") else
		  2 when (fila=1 and columna="101") else
		  3 when (fila=1 and columna="110") else
		  4 when (fila=2 and columna="011") else
		  5 when (fila=2 and columna="101") else
		  6 when (fila=2 and columna="110") else
		  7 when (fila=4 and columna="011") else
		  8 when (fila=4 and columna="101") else
		  9 when (fila=4 and columna="110") else
		  0 when (fila=8 and columna="101") else
		  10; -- inhabilito el resto de teclas
enter<='1' when (fila=8 and columna="110") else '0';
end funcion;