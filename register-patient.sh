#! /user/bin/bash

#Collect information
echo -n "First name: "
read first_name
echo -n "Last name: "
read last_name
echo -n "Date of birth (DD/MM/YYY): "
read dob
echo -n "Gender: "
read gender
echo -n "Physical address: "
read physical_address
echo -n "Email: "
read email
echo -n "Phone number: "
read phone_number
echo -n "Registered doctors (enter username seperated by comma (,): "
read registered_doctors

# Need to implement doctors not being able to add themselves as a registered
# doctor to their own patient file

#Create the username
username="${first_name:0:1}${last_name:`expr "$last_name" : '.*'`-1:1}${dob///}"

#Method for making a directory and files for each patient 
make_patient(){
    mkdir /opt/WellingtonClinic/patients/$1
    echo -n $2 >> /opt/WellingtonClinic/patients/$1/pbasicinfo.log
    touch /opt/WellingtonClinic/patients/$1/pmedicalrecord.log
}

make_patient ${username,,} "$first_name,$last_name,$dob,$gender,$physical_address,$email,$phone_number,$registered_doctors"

IFS="," read -a rdoctorsarray <<< $registered_doctors

for d in ${rdoctorsarray[@]}; do
    setfacl -m u:$d:rw /opt/WellingtonClinic/patients/${username,,}/pmedicalrecord.log
done
