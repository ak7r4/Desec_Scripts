#!/usr/bin/python
    
from scapy.all import *
conf.verb = 0
for ip in range(1, 255):
    iprange = “192.168.0.%s” %ip
    pIP = IP(dst=iprange)
    pacote = pIP/ICMP()
    resp, noresp = sr(pacote,timeout=1)
    for resposta in resp:
      print(resposta[1][IP].src)
