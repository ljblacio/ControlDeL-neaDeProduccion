library verilog;
use verilog.vl_types.all;
entity CONTROL_PRODUCCION_SIMULAR is
    port(
        dia_rep         : out    vl_logic_vector(4 downto 0);
        reset           : in     vl_logic;
        clk_100hz       : in     vl_logic;
        start           : in     vl_logic;
        tasa_prod       : out    vl_logic_vector(6 downto 0);
        bcd             : in     vl_logic_vector(3 downto 0);
        num             : in     vl_logic;
        enter           : in     vl_logic;
        mostrar         : in     vl_logic;
        ok              : in     vl_logic;
        pro_rep         : out    vl_logic_vector(8 downto 0);
        pro_real        : out    vl_logic_vector(8 downto 0);
        CLK_1MHZ        : in     vl_logic
    );
end CONTROL_PRODUCCION_SIMULAR;
