--REGISTRO DE SOSTENIMIENTO
library ieee;
use ieee.std_logic_1164.all;
-- ENTIDAD
entity rsost_9b is
	port( data: in integer range 0 to 511;
			clk, reset: in std_logic;
					  q: out integer range 0 to 511);
end rsost_9b;
-- ARQUITECTURA
architecture funcion of rsost_9b is
signal conta: integer range 0 to 511 := 1;
begin
	process(reset,clk)
	begin
		if (reset='1') then
			q<=0;
		elsif (clk'event and clk='1') then
			q<=data;
		end if;
	end process;
end funcion;