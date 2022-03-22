#include <stdio.h>

int main() {
  char *i=1, j=2; // char *i;  i=1;
  *i++;
  printf("i=%d j=%d\n", *i, j);
}

