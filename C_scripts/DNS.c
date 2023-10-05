#include <stdio.h>
//#include <stdlib.h>
#include <netdb.h>
#include <arpa/inet.h>

int main(int argc, char *argv[]){


	struct hostent *alvo = gethostbyname(argv[1]);

	printf("IP: %s\n",inet_ntoa(*((struct in_addr *)alvo->h_addr)));

	return 0;
}
