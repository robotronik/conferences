#include <stdio.h>

#define HELLO_WORLD printf("Hello World!");

int main() {
    if (1)
        HELLO_WORLD;
    else
        printf("that was false.");
}


// Preprocess output:
/*


# 5 "preprocess_example_fail.c"
int main() {
    if (1)
        printf("Hello World!");;
    else
        printf("that was false.");
}


*/
