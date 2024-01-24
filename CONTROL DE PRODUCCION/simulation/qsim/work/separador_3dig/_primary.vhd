library verilog;
use verilog.vl_types.all;
entity separador_3dig is
    port(
        numero          : in     vl_logic_vector(8 downto 0);
        centena         : out    vl_logic_vector(3 downto 0);
        decena          : out    vl_logic_vector(3 downto 0);
        unidad          : out    vl_logic_vector(3 downto 0)
    );
end separador_3dig;
