library verilog;
use verilog.vl_types.all;
entity cont_productos_vlg_check_tst is
    port(
        listo           : in     vl_logic;
        q               : in     vl_logic_vector(8 downto 0);
        sampler_rx      : in     vl_logic
    );
end cont_productos_vlg_check_tst;
