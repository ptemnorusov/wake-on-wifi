#/usr/local/bin/bash

youareonline=0

while [ $youareonline -lt 1 ] ; 
	do
		youareonline=$(<./WOL/are-you-online.txt)
		sleep 10
done

echo "You are online"
/usr/local/bin/wol -i 192.168.1.255 aa:bb:сс:dd:ee:ff
echo 0 > ./WOL/are-you-online.txt
