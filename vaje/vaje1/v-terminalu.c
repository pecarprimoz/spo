#include <stdio.h>
int main(int argc, char* argv[]){
	//unsinged char od 0 do 127
	//singed char od -128 do 127
	//sizeof uporabimo za velikost podatkovnih tipov (v byte)
	printf("Number of arguments: %d\n",argc);
	for(int i=0; i<argc; i++){
		printf("%d: %s\n",i,argv[i]);
	}
	printf("%ld\n",sizeof(long double));
	//if stavki, switch stavki ...
	//while in do while
	//v c nimas true in false, vse kar ni enako nic je true, 0 je false
	//bitni operatorji
	return 0;
}
