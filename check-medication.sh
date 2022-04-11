#! usr/bin/bash

#Collect info
echo -n "Patients name: "
read patient_name

echo -n "Patient birthdate (DD/MM/YYYY): "
read patient_birthday

#Create username
username="${patient_name:0:1}${patient_name:`expr "$patient_name" : '.*'`-1:1}${patient_birthday///}"


echo "Doctor          Medication"

#Check each line of the medicial record
while read p; do
    IFS=',' read -r -a arr <<< $p
    echo "${arr[1]}        ${arr[3]}"

done </optWellingtonClinic/patients/${username,,}/pmedicalrecord.log
