#include <stdio.h>

#define OK printf("valeur valide"); 
#define NOK printf("valeur erronée");

int main() {
    if (1 % 2 == 1)
        OK; 
    else
        NOK;
}
