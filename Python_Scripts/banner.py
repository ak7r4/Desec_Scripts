#!/usr/bin/python3
import socket
import sys

ip = input("target: ")
porta = int(input("Port: "))

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.connect((ip,porta))
banner = sock.recv(1024)
print(banner)
