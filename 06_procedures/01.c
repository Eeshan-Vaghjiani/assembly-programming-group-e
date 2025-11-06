#include<stdio.h>

// int factorial(int n);

int factorial(int n){
    if (n == 0){
        return 1;
    }
    return n * factorial(n - 1);
}

void main(){
    int res = factorial(5);
    printf("Result is %d \n", res);
}

