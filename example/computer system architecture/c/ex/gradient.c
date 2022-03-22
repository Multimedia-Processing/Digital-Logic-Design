#include <stdio.h>
#include <string.h>

#define N 3

double f(double x[]) {
  return x[0]*x[0]+x[1]*x[1]+x[2]*x[2];
}

double h = 0.001;

double df(double (*f)(double[]), double x[], int i) {
  double xp[N];
  memcpy(xp, x, sizeof(double)*N);
  xp[i] += h;
  return (f(xp)-f(x))/h;
}

double g[N];

double* grad(double (*f)(double[]), double x[]) {
  for (int i=0; i<N; i++) {
    g[i] = df(f, x, i);
  }
  return g;
}

int main() {
  double p[N] = {0.0, 1.0, 1.0};
  double *g = grad(f, p);
  printf("grad(f, [0,1,1])=(%f,%f,%f)\n", g[0], g[1], g[2]);
}
