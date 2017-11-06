#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int glob = 6;

void main(){
	int var = 9;
	pid_t pid;
	char buf [] = "abc";
	if(write(STDOUT_FILENO, buf, sizeof(buf-1))< 0){
			printf("error pri pisanju\n");
			exit(-1);
	}
	//ker je spodnji write v vrstičnem bufferiranju to izpiše tudi otrok
	//saj dostopa do istega pomnilnika, v primeru da printamo z newline 
	//ali pa iz datoteke, kjer je bufferranje drugačno, pa nebi otrok
	//izpisal
	//KO FORKAMO SE DUPLICIRA TUDI FILE DESCRIPTOR
	printf("po writeu");
	if((pid = fork()) < 0){
		printf("Error\n");
	}
	else if (pid == 0){
		//Koda otroka
		glob++;
		var++;
		printf("Pglob: %d; var: %d\n",glob,var);
	}
	//Koda starša
	else{
		printf("Sglob: %d; var: %d\n",glob,var);
	}

}
