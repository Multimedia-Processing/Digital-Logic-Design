#include <stdio.h>

int main() {
    short R0 = -13;
    short R1 = -5;
    short R2 = 0;
    short mask = 1;
    short maskList[15]; // 位元遮罩
    short i = 0;
    short P = (R0 < 0) ? -R0 : R0; // P = abs(R0)

    // 創建位元 0..14 的遮罩。
    while (i < 15) {
      maskList[i] = mask;
      printf("maskList[%d]=%d\n", i, maskList[i]);
      mask = mask + mask;
      i++;
    }

    // 從 14 到 0 逐步計算乘法結果。
    i=14;
    while (1) {
      short bit = P & maskList[i];
      if (bit != 0) R2 = R2 + R1; // 遮罩位元為 1，應該加 R1
      printf("R0=%d R1=%d R2=%d i=%d bit=%d\n", R0, R1, R2, i, bit);
      if (i <= 0) break;
      R2 = R2 + R2; // R2 乘以兩倍。 (相當於左移一位 R2=R2<<1)
      i--;
    }
    if (R0 < 0) R2 = ~R2 + 1; // R2 = -R2
    printf("R2=%d\n", R2);
}