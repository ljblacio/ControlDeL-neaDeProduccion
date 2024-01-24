library verilog;
use verilog.vl_types.all;
entity valor_pwm is
    port(
        tproduc         : in     vl_logic_vector(6 downto 0);
        vpwm            : out    vl_logic_vector(7 downto 0)
    );
end valor_pwm;
