library verilog;
use verilog.vl_types.all;
entity cont_productos is
    port(
        data            : in     vl_logic_vector(8 downto 0);
        hc              : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        q               : out    vl_logic_vector(8 downto 0);
        listo           : out    vl_logic
    );
end cont_productos;
