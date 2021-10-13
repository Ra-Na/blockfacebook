#!/bin/bash

whois -h whois.radb.net -- '-i origin AS32934' > tmpfile.txt 

grep ^route: tmpfile.txt | sed 's/route:[ ]*//g' | awk '!seen[$0]++' > fbip4.txt
grep ^route6: tmpfile.txt | sed 's/route6:[ ]*//g' | awk '!seen[$0]++' > fbip6.txt

rm tmpfile.txt

