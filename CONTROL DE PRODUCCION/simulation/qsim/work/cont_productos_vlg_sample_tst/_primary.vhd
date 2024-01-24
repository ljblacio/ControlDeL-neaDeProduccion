library verilog;
use verilog.vl_types.all;
entity cont_productos_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        data            : in     vl_logic_vector(8 downto 0);
        hc              : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cont_productos_vlg_sample_tst;
