library verilog;
use verilog.vl_types.all;
entity cont_updw_vlg_check_tst is
    port(
        q               : in     vl_logic_vector(8 downto 0);
        sampler_rx      : in     vl_logic
    );
end cont_updw_vlg_check_tst;
