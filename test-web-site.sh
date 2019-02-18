#!/bin/bash

echo "Statistics for: $1"

curl -s -w '\nLookup time:\t\t%{time_namelookup}
Connect time:\t\t%{time_connect}
SSL handshake time:\t%{time_appconnect}
Pre-Transfer time:\t%{time_pretransfer}
Redirect time:\t\t%{time_redirect}
Start transfer time:\t%{time_starttransfer}

Total time:\t\t%{time_total}\n' -o /dev/null $1
