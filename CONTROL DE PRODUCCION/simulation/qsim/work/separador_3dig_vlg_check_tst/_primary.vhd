library verilog;
use verilog.vl_types.all;
entity separador_3dig_vlg_check_tst is
    port(
        centena         : in     vl_logic_vector(3 downto 0);
        decena          : in     vl_logic_vector(3 downto 0);
        unidad          : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end separador_3dig_vlg_check_tst;
