#! usr/bin/bash

echo -n "Doctors username: "
read doc_username

echo "Doctor             Patients"
echo -n "${doc_username}            "

#Iterate each patient
for d in ../patients/* ; do
#check if they ar assigned to given doctor
    if grep -q $doc_username "$d/pbasicinfo.log" ; then
    echo "test"
    
done
