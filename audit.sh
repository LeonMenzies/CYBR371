#! usr/bin/bash

#Read each line of the log file
while read p; do
    IFS=',' read -r -a arr <<< $p
    echo "${arr[0]}        ${arr[1]}        ${arr[2]}        ${arr[3]}"

done </opt/WellingtonClinic/scripts/audit.log
