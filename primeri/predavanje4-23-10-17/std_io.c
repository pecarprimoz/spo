#include <stdio.h>

void main(){
	int c;
	while((c = getc(stdin)) !=EOF){
		putc(c,stdout);

	}
}
