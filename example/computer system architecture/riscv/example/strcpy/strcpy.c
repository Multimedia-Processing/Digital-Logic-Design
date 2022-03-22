#include <stddef.h>

void strcpy1(char x[], char y[]) {
    size_t i = 0;
    while ((x[i]=y[i]) != '\0')
        i+=1;
}
