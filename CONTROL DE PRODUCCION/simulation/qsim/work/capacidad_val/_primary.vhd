library verilog;
use verilog.vl_types.all;
entity capacidad_val is
    port(
        tproduc         : in     vl_logic_vector(6 downto 0);
        capacidad       : out    vl_logic
    );
end capacidad_val;
