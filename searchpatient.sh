#! usr/bin/bash

echo -n "Doctors username: "
read doc_username

echo "Doctor             Patients"

#Iterate each patient
for d in ../patients/* ; do
#check if they ar assigned to given doctor
    if grtep $doc_username $d/pbasicinfo.log ; then
    echo "test"
    
done
