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


#Check the patient is not the same as the assigned doctor
IFS="," read -a arr1 <<< $registered_doctors
for d in ${arr1[@]}; do

    mapfile -t -d ',' arr2 < /opt/WellingtonClinic/staff/doctors/$d/sbasicinfo.log

    if [[ "${arr2[0]} ${arr2[1]}" == "$first_name $last_name $dob" ]]; then
        echo "Patient cannot be ther own doctor"
    fi
done



#Create the username
username="${first_name:0:1}${last_name:`expr "$last_name" : '.*'`-1:1}${dob///}"

#Method for making a directory and files for each patient 
make_patient(){
    mkdir /opt/WellingtonClinic/patients/$1
    echo -n $2 >> /opt/WellingtonClinic/patients/$1/pbasicinfo.log
    touch /opt/WellingtonClinic/patients/$1/pmedicalrecord.log
    
    #Remove default permissions
    chmod -R 000 /opt/WellingtonClinic/patients/$1
    
    #Set folder permissions
    setfacl -m g:Administrators:rwx /opt/WellingtonClinic/patients/$1
    setfacl -m g:Doctors:r-x /opt/WellingtonClinic/patients/$1
    setfacl -m g:Nurses:r-x /opt/WellingtonClinic/patients/$1
    setfacl -m g:Receptionists:rwx /opt/WellingtonClinic/patients/$1
    
    #Set acls
    setfacl -m g:Administrators:rwx /opt/WellingtonClinic/patients/$1/pbasicinfo.log
    setfacl -m g:Doctors:r-- /opt/WellingtonClinic/patients/$1/pbasicinfo.log
    setfacl -m g:Nurses:r-- /opt/WellingtonClinic/patients/$1/pbasicinfo.log
    setfacl -m g:Receptionists:rw- /opt/WellingtonClinic/patients/$1/pbasicinfo.log
    
    setfacl -m g:Administrators:rw- /opt/WellingtonClinic/patients/$1/pmedicalrecord.log
    setfacl -m g:Doctors:--- /opt/WellingtonClinic/patients/$1/pmedicalrecord.log
    setfacl -m g:Nurses:r-- /opt/WellingtonClinic/patients/$1/pmedicalrecord.log
    setfacl -m g:Receptionists:--- /opt/WellingtonClinic/patients/$1/pmedicalrecord.log
    
    
}

make_patient ${username,,} "$first_name,$last_name,$dob,$gender,$physical_address,$email,$registered_doctors"

IFS="," read -a rdoctorsarray <<< $registered_doctors

for d in ${rdoctorsarray[@]}; do
    setfacl -m u:$d:rw /opt/WellingtonClinic/patients/${username,,}/pmedicalrecord.log
done
