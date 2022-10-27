#!/bin/bash

#Execute as ./scanner.sh $host
#$HOST should be in URL format -- http://IP:Port (https://111.222.333.44:8000)

HOST=$1
curl $HOST/wls-wsat/CoordinatorPortType -k -s -m1 | grep "<h1>Web Services"
RESULT=$?
if [ $RESULT -eq 0 ]; then
echo -e "\e[91m[*] Potential Vuln: $HOST\e[0m"
else
echo -e "\e[92m[*] Cleared: $HOST\e[0m"
fi
sleep 1
