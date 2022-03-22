riscv64-unknown-elf-gcc -fverbose-asm -S -O0 $1.c -o $1_o0.s
riscv64-unknown-elf-gcc -fverbose-asm -S -O1 $1.c -o $1_o1.s
riscv64-unknown-elf-gcc -fverbose-asm -S -O3 $1.c -o $1_o3.s
