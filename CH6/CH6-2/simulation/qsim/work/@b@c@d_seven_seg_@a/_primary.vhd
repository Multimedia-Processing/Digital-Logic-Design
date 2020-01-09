library verilog;
use verilog.vl_types.all;
entity BCD_seven_seg_A is
    port(
        G               : out    vl_logic;
        B0              : in     vl_logic;
        B1              : in     vl_logic;
        B2              : in     vl_logic;
        B3              : in     vl_logic;
        F               : out    vl_logic;
        E               : out    vl_logic;
        D               : out    vl_logic;
        C               : out    vl_logic;
        B               : out    vl_logic;
        A               : out    vl_logic
    );
end BCD_seven_seg_A;
