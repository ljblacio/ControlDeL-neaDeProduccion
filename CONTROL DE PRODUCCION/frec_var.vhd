library ieee;
use ieee.std_logic_1164.all;
use ieee. std_logic_unsigned.all;
entity frec_var is
	port(reset, clk: in std_logic; -- clk de 100 HZ
		  velocidad: in integer range 0 to 127;
					  frec: out std_logic);
end frec_var;
architecture funcion of frec_var is
signal conta,n: integer range 0 to 127:=0; 
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
n<= 100 when velocidad<7 else
	 50  when (velocidad > 6 and velocidad < 13) else
	 30  when (velocidad > 12 and velocidad < 19) else
	 25  when (velocidad > 18 and velocidad < 25) else
	 20  when (velocidad > 24 and velocidad < 31) else
	 17  when (velocidad > 30 and velocidad < 37) else
	 14  when (velocidad > 36 and velocidad < 43) else
	 13  when (velocidad > 42 and velocidad < 49) else
	 11  when (velocidad > 48 and velocidad < 55) else
	 10;
frec<='1' when ((conta<n/2) and velocidad >0) else '0'; -- SEÑAL DE FRECUENCIA CON DT=50%; EMPIEZA EN 1;
end funcion;