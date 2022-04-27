#!/bin/bash

tail -F /var/opt/unifi/tmp/logs/remote/192.168.2.35_aabbccddeeff.log  | sed -un '/EVENT_STA_JOIN ath4: ff:ee:dd:cc:bb:aa/ q' > /dev/null
touch ./WOL/are-you-online.txt
echo 1 > ./WOL/are-you-online.txt

scp -P SSHPORT ./WOL/are-you-online.txt  username@server_ip-address:/path/WOL/are-you-online.txt
echo 0 > ./WOL/are-you-online.txt
echo "I see your mobile on our Wi-Fi network"
