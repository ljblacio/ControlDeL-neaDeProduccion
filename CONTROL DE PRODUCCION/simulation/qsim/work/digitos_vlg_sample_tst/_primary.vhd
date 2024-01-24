library verilog;
use verilog.vl_types.all;
entity digitos_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        digito          : in     vl_logic_vector(3 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end digitos_vlg_sample_tst;
