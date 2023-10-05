#include <stdio.h>

int main(int argc, char *argv[]){
	
	int i;
	if(argc<2){
		printf("Usage: ./program 192.168.1 \n");
	} else {
		for(i=0;i<=10;i++){
			printf("Scanning Host: %s.%i \n",argv[1],i);
		}
	}
}
