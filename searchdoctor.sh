#! usr/bin/bash

echo -n "Patients name: "
read patient_name

echo "Patient             Doctors"
echo awk -F "," '!a[$3]' ../patients/$patient_name/pbasicinfo.log 

