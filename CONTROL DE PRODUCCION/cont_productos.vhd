--CONTADOR DE PRODUCTOS, INICIA EN 1
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-- ENTIDAD
entity cont_productos is
	port( data: in integer range 0 to 511;
			hc, clk, reset: in std_logic;
					  q: out integer range 0 to 511;
					  listo: out std_logic);
end cont_productos;
-- ARQUITECTURA
architecture funcion of cont_productos is
signal conta: integer range 0 to 511 := 1;
begin
	process(reset,clk)
	begin
		if (reset='1') then
			conta<=1;
		elsif (clk'event and clk='1') then
			if (hc='1') then
				if(conta<data) then
					conta<= conta + 1;
				end if;
			end if;
		end if;
	end process;
q<=conta;
listo<='1' when conta=data else '0';
end funcion;