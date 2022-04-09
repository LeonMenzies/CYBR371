#! /usr/bin/bash

#Create the groups
groupadd UnRegisteredDoctors
groupadd Nurses
groupadd Receptionists
groupadd Administrators

#Function for adding a user and their information
add_user(){

useradd -g $3 $1

mkdir /opt/WellingtonClinic/staff/$2/$1 

echo $4 >> /opt/WellingtonClinic/staff/$2/$1/sbasicinfo.log

}

#Add each user
add_user mate1997 doctors UnRegisteredDoctors "Mary Teresa,03/08/1953,1997,173 Rnd street Kelburn,m.theresa@yahoo.com,04528293"
add_user brki2018 doctors UnRegisteredDoctors "Breana Kipling,03/08/1991,2018,4548 River Road HugoTown Auckland 5513,szzh8@tempmail.net,071943668"
add_user mada1993 doctors UnRegisteredDoctors "Mandy Dannel,15/12/1965,1993,343 Norma Avenue Dayton Napier 6731,mandydl@gmail.com,052637445"
add_user laba2002 doctors UnRegisteredDoctors "Lance Bourne,07/04/1970,2002,25 Ferguson Street Franklin Greytown 8567,lancb@outlook.com,083736456"

add_user lubl2004 nurses Nurses "Lucia Blakeley,11/09/1980,2004,935 Massachusetts Avenue Hamilton 4562,lucyblak@outlook.com,38347463"
add_user phmc2008 nurses Nurses "Phil McGraw,15/04/1984,2008,45 Razyn Street Petone Lower Hutt 8435,philmcg@gmail.com,02384756"

add_user ansm2002 receptionists Receptionists "Andy Smith,13/09/1974,2002,58 Foster avenue Wellington 5011,smith.andy74@gmail.com,07284756"
add_user lubl2004 receptionists Receptionists "Lucia Blakeley,11/09/1980,2004,935 Massachusetts Avenue Hamilton 4562,lucyblak@outlook.com,38347463"
add_user phmc2008 receptionists Receptionists "Phil McGraw,15/04/1984,2008,45 Razyn Street Petone Lower Hutt 8435,philmcg@gmail.com,02384756"

add_user pasa1995 administrators Administrators "Pauline Sanderson,08/03/1993,1995,2452 Randolph Street Bedford Auckland 7752,paulsand@admins.co.nz,03747543"
