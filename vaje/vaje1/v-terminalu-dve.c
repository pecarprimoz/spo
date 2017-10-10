#include <stdio.h>
#define DEBUG 1
float kvadrat(float x);
/* tukaj je main za funkcije
int main(){
	//Premik za 3 v desno
	//Dost kul makro za debugganje, definiraš zgoraj
	//#if DEBUG == 2
	printf("%3.3f\n",kvadrat(5));
	//#endif
	return 0;
}
*/
float kvadrat(float x){
return x*x;
}
//const imamo za definicijo globalnih spremenljivk, referenciranje v zanki, spremenljivka pa je izven
//static določa ohranjanje vrednosti spremenljivk
//še uporaba #ERROR takoj vrne error že pri compilanjui
//polja, definicija polj in kaj vsebujejo pred in po inicializaciji
//ce izpišeš direkt polje dobiš naslov oz pointer kjer se ta polje nahaja
//pointerji
//ce imamo polje stevil, v njih hranimo le pointer na lokacijo vrednosti na tem polju
int main(){
	int stevila[5] = {1,420,3,4,5};
	int * a ; // DOLOCAMO DA JE A KAZALEC;
	//*stevila = stevila[0]
	printf("%d\n", *(stevila+1));
	for(int i=0; i<5; i++){
		printf("%d\n",*(stevila+i));
	}
}

// &nekaj ti pove naslov na katerem se nahaja ta spremenljivka ali pointer
// *nekaj pa ti pove na kaj je ta stvar usmerjena oz na kaj pointer kaže
