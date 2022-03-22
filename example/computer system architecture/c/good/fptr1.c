#include <stdio.h>

void hello() {
  printf("hello !\n");
}

void call(void (*f)()) {
  f();
}

int main() {
  call(hello);
}
