# blockfacebook
How to block Facebook services.

This repository collects tools that help to block facebook services or any other company providing their ASN.

The shell scripts do as their names suggest. They depend on `whois`, `grep`, `sed` and `awk` and should be executed in a bash-compatible shell.

1. `getallfacebookips.sh` outputs two text files (IP4 and IP6) that list of all Facebook servers. Here one can insert the AS-number of another company (maybe Palantir, Cellebrite, Baidu...) in the `whois` command. The AS numbers can be looked up [here](http://www.bgplookingglass.com/list-of-autonomous-system-numbers). For convenience, the output of these scripts is included in this repo specifically for Facebook. The IP lists are checked and if necessary updated hourly. 

2. From the output of 1., `create_blacklist_builder_for_mikrotik_router.sh` creates two rsc files that can be imported on MikroTik routers by `/import buildblacklist4.rsc` to create the address list, which can then be used to filter these servers. These files are also up to date in this repo.

3. To block the Facebook servers on a Linux server do this in your bash:

`wget https://github.com/Ra-Na/blockfacebook/raw/main/fbip4.txt` downloads the text files from this repo. Then

`while read line;do sudo ufw deny from $line to any; done < fbip4.txt` to block the IP addresses with the aid of the Universal FireWall (ufw). Repeat for the IPv6-list.

4. Could some user please provide the equivalent of 3. for the power shell in Windows (if possible)??

Happy blocking!

