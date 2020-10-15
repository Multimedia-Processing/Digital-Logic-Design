library verilog;
use verilog.vl_types.all;
entity three_line_to_eight_decimal_decoder is
    port(
        Y0              : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        Y1              : out    vl_logic;
        Y2              : out    vl_logic;
        Y3              : out    vl_logic;
        Y4              : out    vl_logic;
        Y5              : out    vl_logic;
        Y6              : out    vl_logic;
        Y7              : out    vl_logic
    );
end three_line_to_eight_decimal_decoder;
