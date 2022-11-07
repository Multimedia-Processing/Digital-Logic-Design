file='up_down_counter'
iverilog -o ${file}_test.vvp ${file}_test.v && vvp ${file}_test.vvp > ${file}.log
