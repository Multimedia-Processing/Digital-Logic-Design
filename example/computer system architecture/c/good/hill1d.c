#include <stdio.h>
#include <stdbool.h>

#define dx 0.001

double f(double x) {
  return -((x-1.77)*(x-1.77));
}

double hill_climbing(double (*f)(double), double x0) {
  double x = x0;
  while (true) {
    printf("x=%f f(x)=%f\n", x, f(x));
    if (f(x+dx)>f(x)) {
      x = x+dx;
    } else if (f(x-dx)>f(x)) {
      x = x-dx;
    } else {
      break;
    }
  }
  return x;
}

int main() {
  double bestx = hill_climbing(f, 1.0);
  printf("bestx=%f\n", bestx);
}
