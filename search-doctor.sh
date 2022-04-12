#! usr/bin/bash

#Collect info
echo -n "Patients name: "
read patient_name

echo -n "Patient birthdate (DD/MM/YYYY): "
read patient_birthday

#Create username
username="${patient_name:0:1}${patient_name:`expr "$patient_name" : '.*'`-1:1}${patient_birthday///}"

#Convert string to array
mapfile -t -d ',' arr < /opt/WellingtonClinic/patients/${username,,}/pbasicinfo.log

#Print results
echo "Patient                Doctors"
echo "${arr[@]::2}        ${arr[@]:6}"
