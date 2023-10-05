#!/bin/sh
#for ip in $(cat < "$1");
while IFS= read -r ip;
do
	hping3 -s 1238 $ip -p 13 -S -W -c 1
	hping3 -s 2879 $ip -p 37 -S -W -c 1
	hping3 -s 2116 $ip -p 30000 -S -W -c 1
	hping3 -s 1863 $ip -p 3000 -S -W -c 1
	hping3 -s 1972 $ip -p 1337 -S -W -c 1
done < "$1"
