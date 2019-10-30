library verilog;
use verilog.vl_types.all;
entity four_line_to_sixteen_line_decimal_decoder is
    port(
        Y0              : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        Y1              : out    vl_logic;
        Y2              : out    vl_logic;
        Y3              : out    vl_logic;
        Y4              : out    vl_logic;
        Y5              : out    vl_logic;
        Y6              : out    vl_logic;
        Y7              : out    vl_logic;
        Y8              : out    vl_logic;
        Y9              : out    vl_logic;
        Y10             : out    vl_logic;
        Y11             : out    vl_logic;
        Y12             : out    vl_logic;
        Y13             : out    vl_logic;
        Y14             : out    vl_logic;
        Y15             : out    vl_logic
    );
end four_line_to_sixteen_line_decimal_decoder;
