#include <math.h>
#include <stdio.h>

int main() {
  printf("normal(0,1) distribution between(-1.96, 1.96) is %g\n", erf(1.96*sqrt(1/2.)));
}
