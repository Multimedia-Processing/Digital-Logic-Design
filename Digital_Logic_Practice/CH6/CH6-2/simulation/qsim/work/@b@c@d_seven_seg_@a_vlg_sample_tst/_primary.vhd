library verilog;
use verilog.vl_types.all;
entity BCD_seven_seg_A_vlg_sample_tst is
    port(
        B0              : in     vl_logic;
        B1              : in     vl_logic;
        B2              : in     vl_logic;
        B3              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end BCD_seven_seg_A_vlg_sample_tst;
