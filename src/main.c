#include <stdio.h>
#include "test.h"

int main() {
    int x = 10;
    int y = 2;

    printf("Hi hi there\n");
    printf("Sum of %d and %d are %d\n", x, y, add(x, y));

    return 0;
}
