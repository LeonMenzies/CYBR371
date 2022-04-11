#! usr/bin/bash

echo -n "Doctors username: "
read doc_username

#Get the doctors name
mapfile -t -d ',' arr1 < /opt/WellingtonClinic/staff/doctors/$doc_username/sbasicinfo.log

echo "Doctor                     Patients"

echo -n "${arr1[0]}($doc_username)           "

#Iterate each patient
for d in /opt/WellingtonClinic/patients/*; do
    #check if they are assigned to given doctor
    if grep -q $doc_username $d/pbasicinfo.log ; then
    
    #print hte patients names
    mapfile -t -d ',' arr2 < $d/pbasicinfo.log
    echo -n "${arr2[@]::2},"
    fi
done
echo
