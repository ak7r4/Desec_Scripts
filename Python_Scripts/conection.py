#!/usr/bin/python3
import socket
import sys

ip = "127.0.0.1"
porta = 23

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
conexao = sock.connect_ex((ip,porta))
socket.setdefaulttimeout(0.5)

if (conexao == 0):
    print("porta aberta: ", porta)
else:
    print("closed")

