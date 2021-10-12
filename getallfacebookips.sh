
#!/bin/bash

whois -h whois.radb.net -- '-i origin AS32934' | grep ^route: | sed s/route:// | sed 's/ *//g' | awk '!seen[$0]++' > fbip4.txt

whois -h whois.radb.net -- '-i origin AS32934' | grep ^route6: | sed s/route6:// | sed 's/ *//g' | awk '!seen[$0]++' > fbip6.txt


