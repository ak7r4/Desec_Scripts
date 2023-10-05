#!/usr/bin/python
import sys

if len(sys.argv) <= 2:
    print("usage: python script.py 192.168.1.1 80")
else:
    print ("Scanning: ",sys.argv[1],"On port: ",sys.argv[2])
