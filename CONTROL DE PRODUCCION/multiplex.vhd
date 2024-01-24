-- MULTIPLEXADOR DISPLAY
library ieee;
use ieee.std_logic_1164.all;
entity multiplex is
	port(centena,decena,unid: in std_logic_vector (6 downto 0);
			sel: in std_logic_vector (3 downto 0);
			y: out std_logic_vector (6 downto 0));
end multiplex;
architecture funcion of multiplex is
begin
with sel select
 y<= centena when "0001",
     decena when "0010",
	  unid when "0100" | "1000",
	  "0000000" when others;
end funcion;