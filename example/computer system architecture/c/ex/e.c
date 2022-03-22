#include <stdio.h>
#include <math.h>

double e(double n) {
  return pow(1.0+1.0/n, n);
}

int main() {
  for (double n = 1.0; n<1000000.0; n+=100) {
    printf("e(%d)=%f\n", (int) n, e(n));
  }
}
