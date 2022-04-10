#! /user/bin/bash

#Collect information
echo "First name:"
read first_name
echo "Last name:"
read last_name
echo "Date of birth (DD/MM/YYY):"
read dob
echo "Gender:"
read gender
echo "Physical address:"
read physical_address
echo "Email:"
read email
echo "Phone number:"
read phone_number
echo "Registered doctors (enter username seperated by comma (,):"
read registered_doctors

# Need to implement doctors not being able to add themselves as a registered
# doctor to their own patient file

#Create the username
username="${first_name:0:1}${last_name:`expr "$last_name" : '.*'`-1:1}${dob///}"

#Method for making a directory andfile for each patient 
make_patient(){
    mkdir /opt/WellingtonClinic/patients/$1
    echo $2 >> /opt/WellingtonClinic/patients/$1/pbasicinfo.log
}

make_patient $username "$first_name,$last_name,$dob,$gender,$physical_address,$email,$registered_doctors"
