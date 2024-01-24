library verilog;
use verilog.vl_types.all;
entity CONTROL_PRODUCCION_SIMULAR_vlg_check_tst is
    port(
        dia_rep         : in     vl_logic_vector(4 downto 0);
        pro_real        : in     vl_logic_vector(8 downto 0);
        pro_rep         : in     vl_logic_vector(8 downto 0);
        tasa_prod       : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end CONTROL_PRODUCCION_SIMULAR_vlg_check_tst;
