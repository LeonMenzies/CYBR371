#! usr/bin/bash

echo -n "Doctors username: "
read doc_username

echo "Doctor             Patients"
echo -n "${doc_username}           "

#Iterate each patient
for d in /opt/WellingtonClinic/patients/*; do
    #check if they are assigned to given doctor
    if grep -q $doc_username $d/pbasicinfo.log ; then
    
    #print hte patients names
    mapfile -t -d ',' arr < $d/pbasicinfo.log
    echo -n "${arr[@]::2},"
    fi
done
echo
