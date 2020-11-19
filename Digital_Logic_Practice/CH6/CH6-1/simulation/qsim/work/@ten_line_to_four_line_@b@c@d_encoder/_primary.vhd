library verilog;
use verilog.vl_types.all;
entity Ten_line_to_four_line_BCD_encoder is
    port(
        A               : out    vl_logic;
        B               : out    vl_logic;
        C               : out    vl_logic;
        D               : out    vl_logic;
        I0              : in     vl_logic;
        I9              : in     vl_logic;
        I5              : in     vl_logic;
        I7              : in     vl_logic;
        I1              : in     vl_logic;
        I3              : in     vl_logic;
        I2              : in     vl_logic;
        I6              : in     vl_logic;
        I4              : in     vl_logic;
        I8              : in     vl_logic
    );
end Ten_line_to_four_line_BCD_encoder;
