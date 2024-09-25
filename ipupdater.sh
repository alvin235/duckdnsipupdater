#!/bin/bash

#Put your domains *.duckdns.org here
domains=(*1 *2 *3 *4 *5)

#Put your DuckDNS-Token here
token=your-duckdns-token

#Set your .log location
location=~/duckdns

#Get IPv4&IPv6 Addresses
ipv4addr=$(curl -s https://api.ipify.org)
ipv6addr=$(curl -s https://api6.ipify.org)

for domain in ${domains[@]}
do
echo url="https://www.duckdns.org/update?domains=$domain&token=$token&ip=$ipv4addr&ipv6=$ipv6addr" | curl -k -o $location/$domain.log -K -
done

