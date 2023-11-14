#!/bin/bash
#Requirements: exiftool and lynx
#Run this script in a empty folder
#DANGER: This Script will download all files with the extension selected
target="$1"
file="$2"

if [ "$1" == "" ]
then
	echo "---------------------------------------------------"
	echo "Support any extension (pdf, doc, xlsx, ppt, etc...)"
	echo "---------------------------------------------------"
	echo "Usage: ./meta.sh target.com doc"
	echo "---------------------------------------------------"
elif [ "$2" == "" ]
then
	echo "---------------------------------------------------"
	echo "Support any extension (pdf, doc, xlsx, ppt, etc...)"
	echo "---------------------------------------------------"
	echo "Usage: ./meta.sh alvo.com doc"
	echo "---------------------------------------------------"
else
	lynx --dump "https://google.com/search?&q=site:$target+ext:$file" | grep ".$file" | cut -d "=" -f2 | egrep -v "site|google" | sed 's/...$//' > urls.temp
	for url in $(cat urls.temp); do wget -q $url; done 
	rm urls.temp
	exiftool *.$file
fi
