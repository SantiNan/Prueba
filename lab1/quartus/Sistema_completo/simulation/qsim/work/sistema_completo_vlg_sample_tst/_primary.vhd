library verilog;
use verilog.vl_types.all;
entity sistema_completo_vlg_sample_tst is
    port(
        BUTTONCL        : in     vl_logic;
        BUTTONENA       : in     vl_logic;
        CLK_OUT         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end sistema_completo_vlg_sample_tst;
