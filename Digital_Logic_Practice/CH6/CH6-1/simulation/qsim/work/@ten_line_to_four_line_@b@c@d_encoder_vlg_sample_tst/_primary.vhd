library verilog;
use verilog.vl_types.all;
entity Ten_line_to_four_line_BCD_encoder_vlg_sample_tst is
    port(
        I0              : in     vl_logic;
        I1              : in     vl_logic;
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
end Ten_line_to_four_line_BCD_encoder_vlg_sample_tst;
