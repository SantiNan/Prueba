library verilog;
use verilog.vl_types.all;
entity sistema_completo_vlg_check_tst is
    port(
        DECENAS         : in     vl_logic_vector(6 downto 0);
        UNIDADES        : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end sistema_completo_vlg_check_tst;
