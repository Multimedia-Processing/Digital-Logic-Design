#include <stdio.h>
#include <stdlib.h>
//#include <assert.h>

#define test(cond) \
  if (!(cond)) { \
     printf("Error: at FILE=%s LINE=%d\n", __FILE__, __LINE__); \
     exit(1);\
  }

int main() {
  int i=1, j=2;
  test(i==1);
  test(j==1);
}
