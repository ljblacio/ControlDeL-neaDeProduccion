-- CONTADOR CD4017
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-- ENTIDAD
entity conta_pot2 is
	port(clk,en: in std_logic;
			 q: out std_logic_vector(3 downto 0));
end conta_pot2;
-- ARQUITECTURA
architecture funcion of conta_pot2 is
signal x: std_logic_vector (3 downto 0):= "0001";
begin
	process(clk)
	begin
		if (clk'event and clk='1') then
			if(en='1') then
				x<=x(2)&x(1)&x(0)&x(3);
			end if;
		end if;
	end process;
q<=x;
end funcion;
			