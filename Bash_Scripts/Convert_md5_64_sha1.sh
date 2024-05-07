#!/bin/bash
#loop to read the file password.txt and converting each line to hash md5 and add each line in hashsmd5_tmp.txt
while IFS= read -r line
        do
                echo -n "$line" | md5sum >> hashsmd5_tmp.txt
        done < password.txt

#Command to remove the string "  -" from file and add on another file
sed 's/  -//g' hashsmd5_tmp.txt >> hashsmd5.txt

#removing the file created in loop
rm hashsmd5_tmp.txt

#loop to read the file hashsmd5.txt and converting each line to base64 and add each line in hash_64_tmp.txt
while IFS= read -r line
        do
                echo -n "$line" | base64 >> hash_64_tmp.txt
        done < hashsmd5.txt

#Command to remove the string "  -" from file and add the result on another file
sed 's/  -//g' hash_64_tmp.txt >> hash_64.txt

#removing the file created in loop
rm hash_64_tmp.txt

#loop to read the file hash_64.txt and converting each line to hash sha1 and add each line in hash_sha1.txt
while IFS= read -r line
        do
                echo -n "$line" | sha1sum >> hash_sha1.txt
        done < hash_64.txt
