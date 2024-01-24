library verilog;
use verilog.vl_types.all;
entity CONTROL_PRODUCCION_SIMULAR_vlg_sample_tst is
    port(
        bcd             : in     vl_logic_vector(3 downto 0);
        CLK_1MHZ        : in     vl_logic;
        clk_100hz       : in     vl_logic;
        enter           : in     vl_logic;
        mostrar         : in     vl_logic;
        num             : in     vl_logic;
        ok              : in     vl_logic;
        reset           : in     vl_logic;
        start           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end CONTROL_PRODUCCION_SIMULAR_vlg_sample_tst;
