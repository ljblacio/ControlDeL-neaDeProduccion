library verilog;
use verilog.vl_types.all;
entity valor_pwm_vlg_sample_tst is
    port(
        tproduc         : in     vl_logic_vector(6 downto 0);
        sampler_tx      : out    vl_logic
    );
end valor_pwm_vlg_sample_tst;
