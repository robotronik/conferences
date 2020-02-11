#include <stdio.h>
// mes macros ici :
#define HELLO_FR "Bonjour !"
#define CARRE(x) x*x

int main() { 
    printf(HELLO_FR "\n"); 
    printf("5^2 = %d\n", CARRE(5));
}

// Build command: gcc -E
