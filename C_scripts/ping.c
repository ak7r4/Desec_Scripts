#include <stdio.h>
#include <stdlib.h>

int main(void){
	printf("Pingando: \n");
	system("ping 8.8.8.8 -c 1");
	return 0;
}
