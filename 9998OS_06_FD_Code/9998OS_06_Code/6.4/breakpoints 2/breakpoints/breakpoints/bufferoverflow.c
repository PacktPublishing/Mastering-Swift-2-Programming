#include <stdio.h>
#include <stdlib.h>



void buffer() {
    int *p = malloc(4 * sizeof(int));
    p[28] = 17;

}