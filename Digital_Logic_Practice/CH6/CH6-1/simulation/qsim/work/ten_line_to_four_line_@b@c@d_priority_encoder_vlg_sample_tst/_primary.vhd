library verilog;
use verilog.vl_types.all;
entity ten_line_to_four_line_BCD_priority_encoder_vlg_sample_tst is
    port(
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        I4              : in     vl_logic;
        I5              : in     vl_logic;
        I6              : in     vl_logic;
        I7              : in     vl_logic;
        I8              : in     vl_logic;
        I9              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ten_line_to_four_line_BCD_priority_encoder_vlg_sample_tst;
