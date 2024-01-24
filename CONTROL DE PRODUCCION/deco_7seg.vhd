library ieee;
use ieee.std_logic_1164.all;
--ENTIDAD
entity deco_7seg is
	port(bcd: in std_logic_vector(3 downto 0);
		  sal: out std_logic_vector(6 downto 0)); -- salida=abcdefg
end deco_7seg;
--ARQUITECTURA
architecture funcion of deco_7seg is
signal x: std_logic_vector(6 downto 0); --x=abcdefg
begin
	process (bcd)
		begin
			case bcd is
				when "0000" => x<="1111110"; --MUESTRO 0 EN EL DISPLAY
				when "0001" => x<="0110000"; --MUESTRO 1 EN EL DISPLAY
				when "0010" => x<="1101101"; --MUESTRO 2 EN EL DISPLAY
				when "0011" => x<="1111001"; --MUESTRO 3 EN EL DISPLAY
				when "0100" => x<="0110011"; --MUESTRO 4 EN EL DISPLAY
				when "0101" => x<="1011011"; --MUESTRO 5 EN EL DISPLAY
				when "0110" => x<="1011111"; --MUESTRO 6 EN EL DISPLAY
				when "0111" => x<="1110000"; --MUESTRO 7 EN EL DISPLAY
				when "1000" => x<="1111111"; --MUESTRO 8 EN EL DISPLAY
				when "1001" => x<="1110011"; --MUESTRO 9 EN EL DISPLAY
				when others => x<="-------"; --SE MUESTRA CUALQUIER VALOR YA QUE LAS ENTRADAS DEBEN SER SÓLO BCD
			end case;
	end process;
--para 7448 (PARA DISPLAY DE CATODO COMUN)
sal<=x;
--para 7447 (PARA DISPLAY DE ANODO COMUN)
--sal<=not(x);
end funcion;