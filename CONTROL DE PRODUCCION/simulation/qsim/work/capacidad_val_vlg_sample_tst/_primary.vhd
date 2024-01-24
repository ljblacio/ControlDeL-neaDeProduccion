library verilog;
use verilog.vl_types.all;
entity capacidad_val_vlg_sample_tst is
    port(
        tproduc         : in     vl_logic_vector(6 downto 0);
        sampler_tx      : out    vl_logic
    );
end capacidad_val_vlg_sample_tst;
