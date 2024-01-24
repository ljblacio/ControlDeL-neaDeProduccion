library verilog;
use verilog.vl_types.all;
entity frec_var_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        velocidad       : in     vl_logic_vector(6 downto 0);
        sampler_tx      : out    vl_logic
    );
end frec_var_vlg_sample_tst;
