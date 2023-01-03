file='deck_of_cards'
iverilog -o ${file}_test.vvp ${file}_test.v && vvp ${file}_test.vvp > ${file}.log
