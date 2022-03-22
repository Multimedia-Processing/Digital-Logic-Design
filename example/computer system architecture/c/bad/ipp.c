#include <stdio.h>

int main() {
  int i=1, j=2;
  i = i++ * ++j;
  printf("i=%d j=%d\n", i, j);
}
