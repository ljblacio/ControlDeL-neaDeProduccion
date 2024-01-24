library verilog;
use verilog.vl_types.all;
entity valor_pwm_vlg_check_tst is
    port(
        vpwm            : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end valor_pwm_vlg_check_tst;
