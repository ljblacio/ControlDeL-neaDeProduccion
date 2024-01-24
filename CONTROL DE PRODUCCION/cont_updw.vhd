--CONTADOR PARA DIRECCIONES RAM
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-- ENTIDAD
entity cont_updw is
	port(clk, reset,en,updw: in std_logic;
					  q: out integer range 0 to 511);
end cont_updw;
-- ARQUITECTURA
architecture funcion of cont_updw is
signal conta: integer range 0 to 511 := 0;
begin
	process(reset,clk)
	begin
		if (reset='1') then
			conta<=0;
		elsif (clk'event and clk='1') then
			if(en='1') then
				if(updw='0') then -- con updw=0 cuenta ascendente
					conta<= conta + 1;
				else
					conta<=conta - 1;
				end if;	
			end if;	
		end if;
	end process;
q<=conta;
end funcion;