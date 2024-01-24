library verilog;
use verilog.vl_types.all;
entity cont_updw is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        en              : in     vl_logic;
        updw            : in     vl_logic;
        q               : out    vl_logic_vector(8 downto 0)
    );
end cont_updw;
