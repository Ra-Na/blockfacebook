
#!/bin/bash

echo "/ip firewall address-list" > buildblacklist4.rsc 
whois -h whois.radb.net -- '-i origin AS32934' | grep ^route: | sed s/route:// | sed 's/ *//g' | sed 's/^/add list=blacklist4 address=/' | awk '!seen[$0]++' >> buildblacklist4.rsc


echo "/ipv6 firewall address-list" > buildblacklist6.rsc 
whois -h whois.radb.net -- '-i origin AS32934' | grep ^route6: | sed s/route6:// | sed 's/ *//g' | sed 's/^/add list=blacklist6 address=/' | awk '!seen[$0]++' >> buildblacklist6.rsc


