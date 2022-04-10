#! /user/bin/bash

#Collect information
echo "Patient name:"
read patient_name

echo "Patient birthdate (DD/MM/YYY):"
read patient_birthday

echo "Doctors username:"
read assigned_doctor

username="${patient_name:0:1}${patient_name:`expr "$patient_name" : '.*'`-1:1}${patient_birthday///}"

echo -n ",${assigned_doctor}" >> /opt/WellingtonClinic/patients/${username,,}/pbasicinfo.log
