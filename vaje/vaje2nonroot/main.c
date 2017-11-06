//
// Created by root on 10/16/17.
//
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#define
#define BLOCK 512
void check_params(int argc, char* argv[]){
    // 0 - ime .c datoteke 1 - prva datoteka iz katere kopiramo 2 - datoteka v katero kopiramo
    if(argc<2 || argc>3){
        printf("Please enter 2 arguments.\n");
        exit(1);
    }
}

int main(int argc, char* argv[]){
    check_params(argc,argv);
    char *first_file[BLOCK];
    char *second_file[BLOCK];
    int fd_f,fd_s,first_size,second_size;
    fd_f = fd_s = second_size = first_size = 0;
    if((fd_f = open(argv[1],O_RDONLY)) < 0){
        printf("Problem while opening first file.\n");
        exit(1);
    }
    if((fd_s = open(argv[2], O_WRONLY | O_TRUNC | O_CREAT, 0644)) < 0){
        printf("Problem while opening second file.\n");
        exit(1);
    }
    do{
        if((first_size = read(fd_f,first_file,BLOCK)) < 0){
            printf("Problem when reading from first file.\n");
            exit(1);
        }

        if(write(fd_s,first_file,first_size) < 0){
            printf("Napaka pri pisanju v drugo datoteko.\n");
            exit(1);
        }
    }while(first_size>0);
    close(fd_f);
    close(fd_s);
    return 0;
}
