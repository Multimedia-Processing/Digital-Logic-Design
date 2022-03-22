#include <stdio.h>

struct point {
  double x;
};

typedef struct point point_t;

int main() {
  point_t p1 = { .x=0.1 };
  printf("p1.x=%f\n", p1.x);
}