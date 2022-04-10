#! usr/bin/bash

#Collect info
echo -n "Patients name: "
read patient_name

echo -n "Patient birthdate (DD/MM/YYYY): "
read patient_birthday

#Create username
username="${patient_name:0:1}${patient_name:`expr "$patient_name" : '.*'`-1:1}${patient_birthday///}"

#Convert string to array
#mapfile -t -d ',' arr < ../patients/${username,,}/pmedicalrecord.log

echo "Doctor     Medication"

while read p; do
    IFS=', ' read -r -a arr <<< $p
    echo "${arr[1]}        ${arr[4]}"

done <WellingtonClinic/patients/${username,,}/pmedicalrecord.log
