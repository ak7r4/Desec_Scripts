#!/usr/bin/python3
import socket
import sys

for port in range (1,65535):
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    if sock.connect_ex((sys.argv[1],port)) == 0:
        print ("Open Port: ", port)
        sock.close()
