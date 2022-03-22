#include <stdio.h>

int foobar(int a, int b, int c)
{
    int xx = a + 2;
    int yy = b + 3;
    int zz = c + 4;
    int sum = xx + yy + zz;

    return xx * yy * zz + sum;
}

int main()
{
    int r = foobar(77, 88, 99);
    printf("r=%d\n", r);
}
