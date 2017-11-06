#include <unistd.h>
#include <sys/types.h>
#include <dirent.h>
#include <stdio.h>
#include <stdlib.h>
#define err(msg) { fprintf(stderr, "Error: %s.\n",msg); exit(1);}
void main(int argc, char * argv[]){
	struct dirent *dir_p; //rabimo pointer na directory entry
	DIR *dp; //pointer na direktorij
	if(argc!=2){
		err("Podajte datoteko");
	}
	//dobimo directory pointer z opendir
	if((dp = opendir(argv[1]))==NULL){
		err("Problem when opening directory");
	}
	//beremo direktorij v zanki, podamo mu directory pointer
	while((dir_p = readdir(dp))!=NULL){
		printf("%s\n",dir_p->d_name);
	}
	closedir(dp);
}
