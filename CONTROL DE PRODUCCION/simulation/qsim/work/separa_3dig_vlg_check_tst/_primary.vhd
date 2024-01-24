library verilog;
use verilog.vl_types.all;
entity separa_3dig_vlg_check_tst is
    port(
        cent            : in     vl_logic_vector(3 downto 0);
        dec             : in     vl_logic_vector(3 downto 0);
        uni             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end separa_3dig_vlg_check_tst;
