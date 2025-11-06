#include<stdio.h>

int sum(int a, int b);

int main(){
    int num = 12;
    printf("Number is %d \n",num);

    int total = sum(34, 56);
    printf("Sum is %d \n",total);

    return 0;
}

int sum(int a, int b){
    int res = a + b;
    return res;
}

