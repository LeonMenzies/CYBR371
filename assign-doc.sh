!# /user/bin/basg

echo "Patient name:"
read patient_name

echo "Patient birthdate (DD/MM/YYY):"
read patient_birthday

username="${patient_name:0:1}${patient_name:`expr "$patient_name" : '.*'`-1:1}${patient_birthday///}"

echo $username
