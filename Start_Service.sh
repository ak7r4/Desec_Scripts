#!/bin/bash
echo "Ak7r4 Scripts"
echo "Service name to start:"
read var1
systemctl $var1 restart
echo "Actives Services:"
ps aux | grep $var1
echo "Open Ports:"
netstat -nlpt
