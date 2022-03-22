#include <stdio.h>
#include <stdlib.h>
//#include <assert.h>

#define test(cond, ...) \
  if (!(cond)) { \
     printf("Error: at FILE=%s LINE=%d\n", __FILE__, __LINE__); \
     printf("  Check:%s but ", #cond);\
     printf(__VA_ARGS__);\
     printf("\n"); \
  }

int main() {
  int i=1, j=2;
  test(i==1, "i==%d\n", i);
  test(j==1, "j==%d\n", j);
  test(i==1, "i==%d\n", i);
  test(j==1, "j==%d\n", j);
}