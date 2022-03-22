# xor3

```
$ iverilog -o xor3 xor3.v
$ vvp xor3
  50ns monitor: a=1 b=0 c=0 a^b^c=1
 100ns monitor: a=0 b=1 c=0 a^b^c=1
 150ns monitor: a=1 b=1 c=0 a^b^c=0
 200ns monitor: a=0 b=0 c=1 a^b^c=1
 250ns monitor: a=1 b=0 c=1 a^b^c=0
 300ns monitor: a=0 b=1 c=1 a^b^c=0
 350ns monitor: a=1 b=1 c=1 a^b^c=1
 400ns monitor: a=0 b=0 c=0 a^b^c=0
 450ns monitor: a=1 b=0 c=0 a^b^c=1
 500ns monitor: a=0 b=1 c=0 a^b^c=1
 550ns monitor: a=1 b=1 c=0 a^b^c=0
 600ns monitor: a=0 b=0 c=1 a^b^c=1
 650ns monitor: a=1 b=0 c=1 a^b^c=0
 700ns monitor: a=0 b=1 c=1 a^b^c=0
 750ns monitor: a=1 b=1 c=1 a^b^c=1
 800ns monitor: a=0 b=0 c=0 a^b^c=0
 850ns monitor: a=1 b=0 c=0 a^b^c=1
 900ns monitor: a=0 b=1 c=0 a^b^c=1
 950ns monitor: a=1 b=1 c=0 a^b^c=0
1000ns monitor: a=0 b=0 c=1 a^b^c=1
1050ns monitor: a=1 b=0 c=1 a^b^c=0
1100ns monitor: a=0 b=1 c=1 a^b^c=0
1150ns monitor: a=1 b=1 c=1 a^b^c=1
1200ns monitor: a=0 b=0 c=0 a^b^c=0
1250ns monitor: a=1 b=0 c=0 a^b^c=1
1300ns monitor: a=0 b=1 c=0 a^b^c=1
1350ns monitor: a=1 b=1 c=0 a^b^c=0
1400ns monitor: a=0 b=0 c=1 a^b^c=1
1450ns monitor: a=1 b=0 c=1 a^b^c=0
1500ns monitor: a=0 b=1 c=1 a^b^c=0
1550ns monitor: a=1 b=1 c=1 a^b^c=1
1600ns monitor: a=0 b=0 c=0 a^b^c=0
1650ns monitor: a=1 b=0 c=0 a^b^c=1
1700ns monitor: a=0 b=1 c=0 a^b^c=1
1750ns monitor: a=1 b=1 c=0 a^b^c=0
1800ns monitor: a=0 b=0 c=1 a^b^c=1
1850ns monitor: a=1 b=0 c=1 a^b^c=0
1900ns monitor: a=0 b=1 c=1 a^b^c=0
1950ns monitor: a=1 b=1 c=1 a^b^c=1
2000ns monitor: a=0 b=0 c=0 a^b^c=0
```