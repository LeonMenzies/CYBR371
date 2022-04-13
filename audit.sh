#! usr/bin/bash

#Read each line of the log file
while read p; do
    IFS=',' read -r -a arr <<< $p
    echo $p

done </opt/WellingtonClinic/scripts/audit.log
