library verilog;
use verilog.vl_types.all;
entity digitos is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        digito          : in     vl_logic_vector(3 downto 0);
        q               : out    vl_logic_vector(6 downto 0);
        fin_dig         : out    vl_logic
    );
end digitos;
