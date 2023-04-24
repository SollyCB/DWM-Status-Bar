#!/bin/bash

if [ $(ps aux | grep status-bar.sh | wc -l) -eq 3 ]
then
    while true
    do
        xsetroot -name "$(date) | Connection: $(iwlist wlo1 scan | grep 'Quality' | awk 'NR==1{print}' | sed 's/[^0-9|/]*//g' | sed 's/[^70|^.*/].$//') | $(acpi -b | sed 's/ 0//') "
        sleep 1
    done
fi

# $(date | sed 's/:..//') <- Use this if u want to turn off ticking seconds...
# iwlist wlo1 scan | grep 'Quality' | sed 's/[^0-9|/]*//g' | sed 's/[^70|^.*/].$//'
#
# old wlist: $(iwlist wlo1 scan | grep 'Quality' | sed 's/S.*//' | sed 's/ *//')
