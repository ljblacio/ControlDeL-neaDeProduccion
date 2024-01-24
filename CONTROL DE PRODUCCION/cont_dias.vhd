--CONTADOR DE DIAS
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-- ENTIDAD
entity cont_dias is
	port( en, clk, reset: in std_logic;
					  dia: out integer range 0 to 31;
					  fin_mes: out std_logic);
end cont_dias;
-- ARQUITECTURA
architecture funcion of cont_dias is
signal conta: integer range 0 to 31 := 0;
begin
	process(reset,clk)
	begin
		if (reset='1') then
			conta<=0;
		elsif (clk'event and clk='1') then
			if (en='1') then
					conta<= conta + 1;
			end if;
		end if;
	end process;
dia<=conta+1;
fin_mes<='1' when conta>30 else '0';
end funcion;