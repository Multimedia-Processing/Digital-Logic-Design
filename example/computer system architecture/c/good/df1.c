#include <stdio.h>
#include <stdbool.h>

#define dx 0.001

double height(double x) {
  return -((x-1.77)*(x-1.77));
}

#define dx 0.001

double df(double (*f)(double), double x) {
  return (f(x+dx)-f(x))/dx;
}

int main() {
  double d = df(height, 1.0);
  printf("d=%f\n", d);
}
