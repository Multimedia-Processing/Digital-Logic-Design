# Nand2tetris 第一章-- 布林邏輯習題

給予無限多的 nand 閘，請加上線路設計出下列邏輯閘。

(注意，最好依照順序，因為後面的元件可以利用前面設計出來的元件組合而成)

```
1. not -- not(x) = nand(x,x)
2. and -- and(x,y) = not(nand(x,y))
3. or -- or(x,y) = not(not x and not y)
4. xor -- xor(x, y) = and(x, not y) or and(not x, y)
5. mux -- out = mux(a, b, sel) 二選一多工器，可按標準卡諾圖分析法設計
6. dmux -- (a,b) = dmux(in, sel) 一對二解多工器
7. not16 -- out i = not(in i)    i = 0..15
8. and16 -- out i = and(xi, yi)  i= 0..15
9. or16 -- out i = or(xi, yi)    i=0..15
10. mux16 -- out i = mux(xi, yi) i=0..15
11. or8way -- out = or(in[0..7])
12. Mux4Way16 -- out = mux16(mux16(a,b), mux16(c,d))
13. Mux8Way16 -- out = mux16(mux4way16(a,b), mux4way16(c,d))
14. DMux4Way -- out = dmux(in, sel, a,b,c,d)
15. DMux8Way -- out = dmux(in, sel, a,b,c,d,e,f,g,h)
```
