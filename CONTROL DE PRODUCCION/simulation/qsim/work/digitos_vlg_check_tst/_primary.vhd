library verilog;
use verilog.vl_types.all;
entity digitos_vlg_check_tst is
    port(
        fin_dig         : in     vl_logic;
        q               : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end digitos_vlg_check_tst;
