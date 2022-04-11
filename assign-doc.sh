#! /user/bin/bash

#Collect information
echo -n "Patient name: "
read patient_name

echo -n "Patient birthdate (DD/MM/YYYY): "
read patient_birthday

echo -n "Doctors username: "
read assigned_doctor

username="${patient_name:0:1}${patient_name:`expr "$patient_name" : '.*'`-1:1}${patient_birthday///}"

#Add the doctor to the list
echo -n ",${assigned_doctor}" >> /opt/WellingtonClinic/patients/${username,,}/pbasicinfo.log

#Set the doctors acl permissions
setfacl -m u:$username:rw /opt/WellingtonClinic/patients/${username,,}/pmedicalrecord.log
