--CONTADOR UP DESDE 1 HASTA 500
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-- ENTIDAD
entity cont_9b is
	port(clk, reset: in std_logic;
					  q: out integer range 0 to 511);
end cont_9b;
-- ARQUITECTURA
architecture funcion of cont_9b is
signal conta: integer range 0 to 511 := 1;
begin
	process(reset,clk)
	begin
		if (reset='1') then
			conta<=1;
		elsif (clk'event and clk='1') then
			if(conta<500) then
				conta<= conta + 1;
			else
				conta<=1;
			end if;
		end if;
	end process;
q<=conta;
end funcion;