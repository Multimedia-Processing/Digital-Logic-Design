#include <stdio.h>

double f(double x) {
  return x*x;
}

double h = 0.001;

double df(double (*f)(double), double x) {
  return (f(x+h)-f(x))/h;
}

double integral(double (*f)(double), double a, double b) {
  double area = 0.0;
  for (double x=a; x<b; x+=h) {
    area += f(x)*h;
  }
  return area;
}

double intf(double x) {
  return integral(f, 0, x);
}

int main() {
  printf("df(f, 2.0)=%f\n", df(f, 2.0));
  printf("integral(f, 0, 2)=%f\n", integral(f, 0, 2));

  double x = 3.0;
  printf("d int(f, 0, x)/dt=%f\n", df(intf, x));
}
