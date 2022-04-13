#! usr/bin/bash

#Collect info
echo -n "Patients name: "
read patient_name

echo -n "Patient birthdate (DD/MM/YYYY): "
read patient_birthday

echo -n "Todays date (DD/MM/YYYY): "
read today_date

echo -n "Doctors username: "
read doctor

echo -n "Reason for visit: "
read visit_reason

echo -n "Medication: "
read medication

echo -n "Instructions: "
read instructions


#Create username
username="${patient_name:0:1}${patient_name:`expr "$patient_name" : '.*'`-1:1}${patient_birthday///}"

if ! grep -q $doctor "/opt/WellingtonClinic/patients/${username,,}/pbasicinfo.log" ;
then
    echo "Doctor is not registered to the Patient"
else
    #Insert the visit info into the log file
    echo "$today_date,$doctor,$visit_reason,$medication,$instructions" >> /opt/WellingtonClinic/patients/${username,,}/pmedicalrecord.log
    #log the write
    echo "${USER},pmedicalrecord.log,write,$(date '+%Y-%m-%d')," >> /opt/WellingtonClinic/scripts/audit.log
fi



