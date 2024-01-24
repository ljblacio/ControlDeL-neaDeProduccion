library verilog;
use verilog.vl_types.all;
entity pwm_vlg_sample_tst is
    port(
        clkin           : in     vl_logic;
        reset           : in     vl_logic;
        valor_pwm       : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end pwm_vlg_sample_tst;
