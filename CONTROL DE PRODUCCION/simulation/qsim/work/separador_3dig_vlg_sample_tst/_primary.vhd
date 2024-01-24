library verilog;
use verilog.vl_types.all;
entity separador_3dig_vlg_sample_tst is
    port(
        numero          : in     vl_logic_vector(8 downto 0);
        sampler_tx      : out    vl_logic
    );
end separador_3dig_vlg_sample_tst;
