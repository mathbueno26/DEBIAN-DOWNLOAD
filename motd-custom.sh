#!/bin/bash

#Gerado por Matheus Romualdo Bueno

clear
toilet  -w 100 -f mono12 -F metal "MRBUENO"

echo -e "
\033[0;34m+++++++++++++++++: \033[0;37mSystem Data\033[0;34m :++++++++++++++++++++
\033[0;34m+ \033[0;37mDate and Time \033[0;34m= \033[1;36m`date "+%d/%m/%Y - %H:%M:%Shs"`
\033[0;34m+      \033[0;37mHostname \033[0;34m= \033[1;36m`hostname`
\033[0;34m+       \033[0;37mSistema \033[0;34m= \033[1;36m`lsb_release -i | awk '{print $3}'`
\033[0;34m+        \033[0;37mVersao \033[0;34m= \033[1;36m`cat /etc/debian_version`
\033[0;34m+    \033[0;37mIP Interno \033[0;34m= \033[1;36m`hostname -I | cut -f1 -d' '`
\033[0;34m+    \033[0;37mIP Externo \033[0;34m= \033[1;36m`IP=$(curl -s ifconfig.me |  awk '{print $NF}'); echo -n "$IP <-> "; host -t A $IP | awk '{print $NF}'`
\033[0;34m+        \033[0;37mKernel \033[0;34m= \033[1;36m`uname -r`
\033[0;34m+        \033[0;37mUptime \033[0;34m= \033[1;36m`uptime -p`
\033[0;34m+          \033[0;37mLoad \033[0;34m= \033[1;36m`cat /proc/loadavg | awk '{print $1, $2, $3}'`
\033[0;34m+           \033[0;37mCPU \033[0;34m= \033[1;36m`cat /proc/cpuinfo | grep -m 1 "model name" | awk -F ": " '{print $2}'`
\033[0;34m+        \033[0;37mMemory \033[0;34m= \033[1;36mUsed `free -m | head -n 2 | tail -n 1 | awk {'print $3'}`MB out of `free -m | head -n 2 | tail -n 1 | awk {'print $2'}`MB
\033[0;34m+          \033[0;37mSWAP \033[0;34m= \033[1;36mUsed `free -m | head -n 3 | tail -n 1 | awk {'print $3'}`MB out of `free -m | head -n 3 | tail -n 1 | awk {'print $2'}`MB
\033[0;34m+           \033[0;37mHDD \033[0;34m= \033[1;36mUsed `df -h /dev/sda2| tail -n 1 | awk {'print $3'}` out of `df -h /dev/sda2| tail -n 1 | awk {'print $2'}`
\033[0;34m+++++++++++++++++: \033[0;37mUser Data \033[0;34m :++++++++++++++++++++++
\033[0;34m+      \033[0;37mUsername \033[0;34m= \033[1;36m`whoami`
\033[0;34m+     \033[0;37mProcesses \033[0;34m= \033[1;36m`ps aux | grep $USER | wc -l` of `ulimit -u` MAX
\033[0;34m++++++++++++: \033[0;31mMaintenance Information\033[0;34m :++++++++++++++
\033[0;32m `cat /etc/motd-maint`
\033[0;34m+++++++++++++++++++++++++++++++++++++++++++++++++++++
"
tput sgr0
