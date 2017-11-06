#include<stdio.h>
#include<unistd.h> //za sistemske klice, glej man page za ukaz
#include<stdlib.h>
#include<fcntl.h>

#define err(msg) {fprintf(stderr, "Napaka: %s",msg); exit(1);}
#define BUFSIZE 1024
void delete_line(int fd, int vrstica);

void main(int argc, char *argv[]){
	int fd, n;
	char buf[BUFSIZE];
	if(argc == 3){
	fd = open(argv[1], O_CREAT | O_WRONLY | O_APPEND ); //ime datoteke ki jo hočemo odpreti
		if(fd < 0){
			err("Napaka pri odpiranju datoteke\n");
		}
		n = read(STDIN_FILENO, buf, BUFSIZE); //preberemo iz standardnega vhoda 
		if(n<0){
			err("Read error\n");
		}	
		if(write(fd, buf, n) != n){
			err("Napaka pri pisanju\n");
		}
	}
	else if(argc == 4){
		
		printf("Dela do kle?");
		fd = open(argv[1], O_RDWR);
		if(fd < 0){
			err("Napaka pri odpiranju datoteke\n");
		}
		delete_line(atoi(argv[3]),atoi(argv[4]));		
	}
}

void delete_line(int fd, int vrstica){
	int lines, i, delete_start, delete_end, delete_length, n;
	lines = i = delete_start = delete_end = delete_length = n = 0;
	char buf[BUFSIZE];
	if((n = read(fd,buf, BUFSIZE)) <0){
		err("Read error\n");	
	}
	while(lines < vrstica){
		if(buf[i]=='\n'){
			++lines;
			if(lines == vrstica - 1){
				delete_start = i;
			}
		}
		++i;
	}
	delete_end = i-1;
	delete_length = delete_end - delete_start;
	for(int j = delete_end+1; j<=n; j++){
		buf[j-delete_length]=buf[j];
	}
	printf("Start:%d; End:%d; Length:%d;\n", delete_start,delete_end,delete_length);
	
	if(lseek(fd, 0L, SEEK_SET)){
		err("Lseek error");
	}
	if(write(fd, buf, n-delete_length) != n-delete_length){
		err("Write error");
	}

}
