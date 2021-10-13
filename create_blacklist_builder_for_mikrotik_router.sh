#!/bin/bash

echo "/ip firewall address-list" > buildblacklist4.rsc 
sed 's/^/add list=blacklist4 address=/g' fbip4.txt >> buildblacklist4.rsc

echo "/ipv6 firewall address-list" > buildblacklist6.rsc 
sed 's/^/add list=blacklist6 address=/g' fbip6.txt >> buildblacklist6.rsc


