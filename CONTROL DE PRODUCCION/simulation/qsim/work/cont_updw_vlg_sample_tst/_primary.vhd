library verilog;
use verilog.vl_types.all;
entity cont_updw_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        en              : in     vl_logic;
        reset           : in     vl_logic;
        updw            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cont_updw_vlg_sample_tst;
