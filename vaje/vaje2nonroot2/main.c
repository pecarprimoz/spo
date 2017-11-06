#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>

#define BUFSIZE 512

int main(int argc, char* argv[]) {
    int stdin_len;
    char *stdin_file[BUFSIZE];
    if(argc<2){
        do {
            if ((stdin_len = read(STDIN_FILENO, stdin_file, BUFSIZE)) < 0) {
                printf("Problem when reading from standard input.\n");
                exit(1);
            }
            if ((write(STDOUT_FILENO, stdin_file, stdin_len)) < 0) {
                printf("Problem when writing to standard output.\n");
                exit(1);
            }
        }while(stdin_len>0);
        return 0;
    }
    for(int i=1; i<argc; i++){
        int cat_length,fd;
        char *cat_file[BUFSIZE];
        if ((fd = open(argv[i], O_RDONLY)) < 0){
            printf("Problem when opening file.");
            exit(1);
        }
        do{
        if((cat_length = read(fd,cat_file,BUFSIZE)) < 0){
            printf("Problem when reading from standard input.\n");
            exit(1);
        }
        if((write(STDOUT_FILENO,cat_file,cat_length)) <0){
            printf("Problem when writing to standard output.\n");
            exit(1);
        }
        }while(cat_length>0);
    }

    return 0;
}