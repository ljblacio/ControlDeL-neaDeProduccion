library verilog;
use verilog.vl_types.all;
entity pwm_vlg_check_tst is
    port(
        pwm_out         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end pwm_vlg_check_tst;
