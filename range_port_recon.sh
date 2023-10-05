#!/bin/bash
if [ "$1" == "" -o "$2" == "" ]
then
	echo "Usage: $0 REDE PORTA"
	echo "Example: $0 192.168.0 80"
else
for ip in {1..254};
do
	sudo hping3 -S -p $2 -c 1 $1.$ip 2> /dev/null | grep "flags=SA" | cut -d " " -f 2 | cut -d "=" -f 2;
done
fi
