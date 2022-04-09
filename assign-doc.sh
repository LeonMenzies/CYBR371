!# /user/bin/basg

echo "Patient name:"
read patient_name

echo "Patient birthdate (DD/MM/YYYY):"
read patient_birthday

echo "Doctors username:"
read assigned_doctor

#Create the username
first_let = ${patient_name:0:1} 
last_let = ${patient_name:`expr "$patient_name" : '.*'`:1} 


username = first_let + last_let + patient_birthday | sed 's/\///'

#Add info to pbasicinfo
echo username
