#include <stdio.h>
#include <stdlib.h>
#include <arithmetic.h>



int main(int argc, char *argv[])
{
    int a= 0;
    int b= 0;

    if (argc > 2){
    a = atoi(argv[1]);
    b = atoi(argv[2]);
    }
    
    printf("%d + %d = %d\n", a, b, add(a, b));
    printf("%d - %d = %d\n", a, b, sub(a, b));
    printf("%d * %d = %d\n", a, b, mul(a, b));

    if (b == 0){
        printf(" ");
        
    }else{
    printf("%d / %d = %d\n", a, b, dur(a, b));
    }
    return 0;
}


