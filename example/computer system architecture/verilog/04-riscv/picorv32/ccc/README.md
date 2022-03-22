# picorv32 

modified by ccc

## run

```
$ make -f ccc/ccc.mk
vvp -N testbench.vvp
hello world
lui..OK
auipc..OK
j..OK
jal..OK
jalr..OK
beq..OK
bne..OK
blt..OK
bge..OK
bltu..OK
bgeu..OK
lb..OK
lh..OK
lw..OK
lbu..OK
lhu..OK
sb..OK
sh..OK
sw..OK
addi..OK
slti..OK
xori..OK
ori..OK
andi..OK
slli..OK
srli..OK
srai..OK
add..OK
sub..OK
sll..OK
slt..OK
xor..OK
srl..OK
sra..OK
or..OK
and..OK
mulh..OK
mulhsu..OK
mulhu..OK
mul..OK
div..OK
divu..OK
rem..OK
remu..OK
 1st prime is 2.
 2nd prime is 3.
 3rd prime is 5.
 4th prime is 7.
 5th prime is 11.
 6th prime is 13.
 7th prime is 17.
 8th prime is 19.
 9th prime is 23.
10th prime is 29.
11th prime is 31.
12th prime is 37.
13th prime is 41.
14th prime is 43.
15th prime is 47.
16th prime is 53.
17th prime is 59.
18th prime is 61.
19th prime is 67.
20th prime is 71.
21st prime is 73.
22nd prime is 79.
23rd prime is 83.
24th prime is 89.
25th prime is 97.
26th prime is 101.
27th prime is 103.
28th prime is 107.
29th prime is 109.
30th prime is 113.
31st prime is 127.
checksum: 1772A48F OK
Cycle counter ......... 130097
Instruction counter .... 26191
CPI: 4.96
DONE

------------------------------------------------------------
EBREAK instruction at 0x000006BC
pc  000006C0    x8  00000000    x16 00000000    x24 00000000
x1  00000680    x9  00000000    x17 00000000    x25 00000000
x2  00020000    x10 20000000    x18 00000000    x26 00000000
x3  DEADBEEF    x11 075BCD15    x19 000068DC    x27 00000000
x4  DEADBEEF    x12 0000004F    x20 00000000    x28 0000000A
x5  00000002    x13 0000004E    x21 00000000    x29 00000000
x6  000000A5    x14 00000045    x22 00000000    x30 00000000
x7  00000000    x15 0000000A    x23 00000000    x31 00000000
------------------------------------------------------------
Number of fast external IRQs counted: 16
Number of slow external IRQs counted: 2
Number of timer IRQs counted: 22
TRAP after 159747 clock cycles
ALL TESTS PASSED.
testbench.v:266: $finish called at 1598570000 (1ps)
```