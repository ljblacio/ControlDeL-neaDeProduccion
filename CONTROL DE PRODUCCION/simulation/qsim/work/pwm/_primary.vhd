library verilog;
use verilog.vl_types.all;
entity pwm is
    port(
        clkin           : in     vl_logic;
        reset           : in     vl_logic;
        valor_pwm       : in     vl_logic_vector(7 downto 0);
        pwm_out         : out    vl_logic
    );
end pwm;
