library verilog;
use verilog.vl_types.all;
entity BCD_adder_1D_G_vlg_sample_tst is
    port(
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        A3              : in     vl_logic;
        A4              : in     vl_logic;
        A5              : in     vl_logic;
        A6              : in     vl_logic;
        A7              : in     vl_logic;
        B0              : in     vl_logic;
        B1              : in     vl_logic;
        B2              : in     vl_logic;
        B3              : in     vl_logic;
        B4              : in     vl_logic;
        B5              : in     vl_logic;
        B6              : in     vl_logic;
        B7              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end BCD_adder_1D_G_vlg_sample_tst;
