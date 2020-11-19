library verilog;
use verilog.vl_types.all;
entity BCD_adder_1D_G_vlg_check_tst is
    port(
        C8              : in     vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        S3              : in     vl_logic;
        S4              : in     vl_logic;
        S5              : in     vl_logic;
        S6              : in     vl_logic;
        S7              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end BCD_adder_1D_G_vlg_check_tst;
