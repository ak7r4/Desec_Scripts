#!/usr/bin/python
import sys
import os

#Trabalhando com argumentos
print("Scanning host: ",sys.argv[1],"na porta:",sys.argv[2])

#Trabalhando com comandos do sistema
print("Scanning open ports")
os.system("netstat -nltp")
