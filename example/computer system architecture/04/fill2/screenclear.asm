```cpp
(WHILE1)
// while (1) {
  if (M[24576] == 0) goto WHILE1
  // if (M[24576] != 0) {
    int i = 16384;
(WHILE2)
      if (i >= 24576) goto EXIT
//    while (i < 24576) {
      M[i] = -1;
      i++;
      goto WHILE2
//    }
//  }
  goto WHILE1
(EXIT)
```