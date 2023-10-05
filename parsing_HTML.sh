#!/bin/bash
if [ "$1" == "" ]
then
	echo "Usage: $0 Domain"
else
	echo -e "\033[01;32m==============================================================================\033[01;37m"
	echo -e "	\033[00;32m[+] Resolvendo URLs em: $1\033[00;37m"
	echo -e "\033[01;32m=============================================================================\033[01;37m"
	wget $1 &> /dev/null
	grep "href" index.html | grep "\." | cut -d "/" -f 3 | cut -d '"' -f 1 | grep -v "li" | grep "\." | cut -d ":" -f 1 > hostname.txt
	rm index.html	
	for line in $(cat hostname.txt)
	do 
		host $line | grep "has address" >> host.txt; done;
	rm hostname.txt
	cat host.txt | cut -d " " -f 4 | sort | uniq > IPs_$1.txt
        cat host.txt | cut -d " " -f 1 | sort | uniq > Hostnames_$1.txt
	rm host.txt
	echo ""
	echo "[+] Done: Saving the results in: IPs_$1.txt and Hostnames_$1.txt"
	echo -e "\033[01;32m========================\033[01;37m"
	echo -e "\033[01;32m	Ps	\033[01;37m"
	echo -e "\033[01;32m========================\033[01;37m"
	cat IPs_$1.txt
	echo ""
	echo -e "\033[01;32m==============================\033[01;37m"
	echo -e "\033[01;32m	Hostnames\033[01;37m"
	echo -e "\033[01;32m=============================\033[01;37m"
	cat Hostnames_$1.txt
fi
