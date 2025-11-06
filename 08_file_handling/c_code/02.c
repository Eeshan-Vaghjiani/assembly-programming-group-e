#include<unistd.h>
#include<string.h>
#include<stdio.h>

int main(int argc, char *argv[]){
    // argc = number of argument (including file name)
    // *argv = pointer to actual arguments, first one is file name
    for(int i = 0;i < argc; i++)
    {
        write(1, argv[i], strlen(argv[i]));
        write(1, "\n", 1);
    }
    printf("Num of arguments %d \n",argc);
}
