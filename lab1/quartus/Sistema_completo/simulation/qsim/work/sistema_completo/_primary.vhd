library verilog;
use verilog.vl_types.all;
entity sistema_completo is
    port(
        BUTTONENA       : in     vl_logic;
        BUTTONCL        : in     vl_logic;
        CLK_OUT         : in     vl_logic;
        UNIDADES        : out    vl_logic_vector(6 downto 0);
        DECENAS         : out    vl_logic_vector(6 downto 0)
    );
end sistema_completo;
