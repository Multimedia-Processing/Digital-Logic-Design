#include <stddef.h>

void clear1(int array[], size_t size) {
    size_t i;
    for (i=0; i<size; i++) {
        array[i] = 0;
    }
}

void clear2(int *array, size_t size) {
    int *p;
    for (p=array; p<array+size; p++) {
        *p = 0;
    }
}
