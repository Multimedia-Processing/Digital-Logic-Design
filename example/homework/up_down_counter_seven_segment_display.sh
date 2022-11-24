file='up_down_counter_seven_segment_display'
iverilog -o ${file}_test.vvp ${file}_test.v && vvp ${file}_test.vvp > ${file}.log
