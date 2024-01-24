library verilog;
use verilog.vl_types.all;
entity separa_3dig is
    port(
        num             : in     vl_logic_vector(8 downto 0);
        cent            : out    vl_logic_vector(3 downto 0);
        dec             : out    vl_logic_vector(3 downto 0);
        uni             : out    vl_logic_vector(3 downto 0)
    );
end separa_3dig;
