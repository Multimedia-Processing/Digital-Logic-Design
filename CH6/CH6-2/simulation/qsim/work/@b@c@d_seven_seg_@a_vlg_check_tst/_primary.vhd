library verilog;
use verilog.vl_types.all;
entity BCD_seven_seg_A_vlg_check_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        E               : in     vl_logic;
        F               : in     vl_logic;
        G               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end BCD_seven_seg_A_vlg_check_tst;
