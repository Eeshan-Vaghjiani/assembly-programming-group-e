#include<unistd.h>
#include<fcntl.h>
#include<stdio.h>

int main(){
    // .bss - uninitialized variables
    int fd; 
    char values[100]; 
    ssize_t bytesread; 
    // 
    fd = open("file.txt", O_RDONLY);
    // if(fd < 0){
    //     printf("File cannot open");
    // }
    // 
    bytesread = read(fd, values, sizeof(values));

    write(1, values, bytesread);

    close(fd);
    // _exit(0);
    return 0;
}