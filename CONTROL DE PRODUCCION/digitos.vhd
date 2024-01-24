--DIGITOS INGRESADOS
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-- ENTIDAD
entity digitos is
	port(clk, reset: in std_logic;
				 digito: in std_logic_vector(3 downto 0);
					  q: out std_logic_vector (6 downto 0); -- numero ingresado de hasta dos dígitos	
					  fin_dig: out std_logic);-- indicador de ingreso de 2 digitos
end digitos;
-- ARQUITECTURA
architecture funcion of digitos is
signal conta: std_logic_vector(1 downto 0) := "00";
signal numero, total: std_logic_vector (7 downto 0):= (others => '0');
begin
	process(reset,clk)
	begin
		if (reset='1') then
			conta<="00"; numero<= (others => '0');
		elsif (clk'event and clk='1') then
				conta<= conta+1;
				numero <= numero (3 downto 0) & digito;
		end if;
	end process;
total<=numero(7 downto 4)*"1010" + numero(3 downto 0);
q<= total(6 downto 0);
fin_dig<=conta(1);
end funcion;