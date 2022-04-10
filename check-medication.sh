#! usr/bin/bash

#Collect info
echo -n "Patients name: "
read patient_name

echo -n "Patient birthdate (DD/MM/YYYY): "
read patient_birthday

#Create username
username="${patient_name:0:1}${patient_name:`expr "$patient_name" : '.*'`-1:1}${patient_birthday///}"

#Convert string to array
mapfile -t -d ',' arr < ../patients/${username,,}/pmedicalrecord.log

while read p; do
  echo "$p"
done <WEllingtonClinic/patients/${username,,}/pmedicalrecord.log
