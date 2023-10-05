#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>

int main(int argc, char *argv[]){

	int mysocket;
	int connect_;
	int port_;
	int start_ = 0;
	int end_ = 65535;
	char *destination;
	destination = argv[1];

	struct sockaddr_in target;

	for(port_=start_;end_==end_;port_++){

	mysocket = socket(AF_INET,SOCK_STREAM,0);
	target.sin_family = AF_INET;
	target.sin_port = htons(21);
	target.sin_addr.s_addr = inet_addr(destination);

	connect_ = connect(mysocket, (struct sockaddr *)&target, sizeof target);

	if(connect_ == 0){
		printf("Atacando FTP do IP: %s \n",destination);

	} else {
//		close(mysocket);
//		close(connect_);
	}
	}
}
