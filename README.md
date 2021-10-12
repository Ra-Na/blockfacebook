# blockfacebook
How to block Facebook services

This repository provides some simple tools that help you to block facebook services from your network or an individual machine.

The shell scripts do as their names suggest. They depend on `whois`, `grep`, `sed` and `awk` and should be executed in a bash-compatible shell.
- `getallfacebookips.sh` outputs two text files (IP4 and IP6) list of all facebook servers
- `create_blacklist_builder_for_mikrotik_router.sh` creates two rsc files that can be imported on MikroTik routers by `/import buildblacklist4.rsc` to create the address list, which can then be used to filter these servers. 

For convenience, the output of these scripts is included in this repo.

If you want to block another company just look up the AS number and replace it in the `whois` command in the shell scripts to get the ip4 and ip6 lists. 
