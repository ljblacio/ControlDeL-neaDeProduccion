library ieee;
use ieee.std_logic_1164.all;
use ieee. std_logic_unsigned.all;
entity div_frec is
	generic(n: integer :=100);
	port(reset, clk: in std_logic;
					  frec: out std_logic);
end div_frec;
architecture funcion of div_frec is
signal conta: integer range 0 to 127:=0;
begin
	process(reset, clk)
	begin
		if (reset ='1') then
			conta<=0;
		elsif (clk'event and clk='1') then
			if(conta<n) then
				conta<=conta + 1;
			else
				conta<=0;
			end if;
		end if;
	end process;
frec<='1' when (conta<n/2) else '0'; -- SEÑAL DE FRECUENCIA CON DT=50%; EMPIEZA EN 1;
end funcion;