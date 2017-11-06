//
// Created by root on 10/16/17.
//
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>

#define BLOCK 512
void check_params(int argc, char* argv[]){
    // 0 - ime .c datoteke 1 - prva datoteka iz katere kopiramo 2 - datoteka v katero kopiramo
    if(argc<2 || argc>3){
        printf("Please enter 2 arguments.\n");
        exit(-1);
    }
    if(access(argv[1], R_OK) < 0){
        printf("The file you are trying to read from isn't readable.\n");
    }
    if(access(argv[2],W_OK) < 0){
        printf("The file you are trying to write to isn't writeable.\n");
    }
}

int main(int argc, char* argv[]){
    check_params(argc,argv);
    char *first_file[BLOCK];
    char *second_file[BLOCK];
    int fd_f,fd_s,first_size,second_size;
    fd_f = first_size = fd_s = second_size = 0;
    if((fd_f = open(argv[1],O_RDONLY)) < 0){
        printf("Problem while opening first file.");
    }
    if((first_size = read(fd_f,first_file,BLOCK)) < 0){
        printf("Problem when reading from first file.");
    }
    close(fd_f);

    if((fd_s = open(argv[2],O_WRONLY | O_CREAT | O_TRUNC),664) < 0){
        printf("Problem while opening second file.");
    }
    if((second_size = read(fd_s,second_file,BLOCK)) < 0){
        printf("Problem when reading from second file.\n");
    }

    if(write(fd_s,first_file,first_size)){
        printf("Napaka pri pisanju v drugo datoteko.");
    }
}
