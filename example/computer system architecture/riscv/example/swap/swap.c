#include <stddef.h>

void swap(int v[], size_t k) {
    int temp;
    temp = v[k];
    v[k] = v[k+1];
    v[k+1] = temp;
}

void sort(int v[], size_t n) {
    size_t i,j;
    for (i=0; i<n; i+=1) {
        for (j=i-1; j>=0 && v[j]>v[j+1]; j-=1) {
            swap(v, j);
        }
    }
}
