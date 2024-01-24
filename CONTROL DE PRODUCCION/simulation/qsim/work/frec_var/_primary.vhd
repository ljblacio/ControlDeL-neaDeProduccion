library verilog;
use verilog.vl_types.all;
entity frec_var is
    port(
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        velocidad       : in     vl_logic_vector(6 downto 0);
        frec            : out    vl_logic
    );
end frec_var;
