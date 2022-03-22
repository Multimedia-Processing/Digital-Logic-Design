#include <stdio.h>

int mul(int a, int b) {
  int r = 0;
  while (b > 0) {
    if (b % 2 == 1) { // 若 b 為奇數
      r += a; // r 必須加 a
    }
    b = b >> 1; // b 減半
    a = a << 1; // a 倍增
  }
  return r;
}

int main() {
  printf("mul(3,5)=%d\n", mul(3,5));
  printf("mul(6,7)=%d\n", mul(6,7));
}
