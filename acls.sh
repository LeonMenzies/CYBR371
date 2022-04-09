#! user/bin/bash

#Setting directory ACLs

#Administrators
setfacl -m g:Administrators:rwx /opt/WellingtonClinic
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/scripts
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/patients
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/staff
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/staff/administrators
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/staff/nurses
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/staff/receptionists
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/staff/doctors

#Receptionists
setfacl -m g:Receptionists:rwx /opt/WellingtonClinic/patients


#Setting file ACLs

#Administrators
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/scripts/sbasicinfo.log
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/scripts/pbasicinfo.log
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/scripts/pmedicalrecord.log
setfacl -m g:Administrators:rwx /opt/file-system-setup.sh
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/scripts/staff-create.sh
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/scripts/acls.sh
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/scripts/register-patient.sh
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/scripts/assign-doc.sh
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/scripts/search-patient.sh
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/scripts/search-doctor.sh
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/scripts/visit.sh
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/scripts/check-medication.sh
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/scripts/audit.sh

#UnRegisteredDoctors
setfacl -m g:UnRegisteredDoctors:r-- /opt/WellingtonClinic/scripts/sbasicinfo.log
setfacl -m g:UnRegisteredDoctors:r-- /opt/WellingtonClinic/scripts/pbasicinfo.log
setfacl -m g:UnRegisteredDoctors:rw- /opt/WellingtonClinic/scripts/pmedicalrecord.log
setfacl -m g:UnRegisteredDoctors:--- /opt/file-system-setup.sh
setfacl -m g:UnRegisteredDoctors:--- /opt/WellingtonClinic/scripts/staff-create.sh
setfacl -m g:UnRegisteredDoctors:--- /opt/WellingtonClinic/scripts/acls.sh
setfacl -m g:UnRegisteredDoctors:--- /opt/WellingtonClinic/scripts/register-patient.sh
setfacl -m g:UnRegisteredDoctors:--- /opt/WellingtonClinic/scripts/assign-doc.sh
setfacl -m g:UnRegisteredDoctors:--- /opt/WellingtonClinic/scripts/search-patient.sh
setfacl -m g:UnRegisteredDoctors:--- /opt/WellingtonClinic/scripts/search-doctor.sh
setfacl -m g:UnRegisteredDoctors:r-x /opt/WellingtonClinic/scripts/visit.sh
setfacl -m g:UnRegisteredDoctors:r-- /opt/WellingtonClinic/scripts/check-medication.sh
setfacl -m g:UnRegisteredDoctors:--- /opt/WellingtonClinic/scripts/audit.sh

#Nurses
setfacl -m g:Nurses:r-- /opt/WellingtonClinic/scripts/sbasicinfo.log
setfacl -m g:Nurses:r-- /opt/WellingtonClinic/scripts/pbasicinfo.log
setfacl -m g:Nurses:r-- /opt/WellingtonClinic/scripts/pmedicalrecord.log
setfacl -m g:Nurses:--- /opt/file-system-setup.sh
setfacl -m g:Nurses:--- /opt/WellingtonClinic/scripts/staff-create.sh
setfacl -m g:Nurses:--- /opt/WellingtonClinic/scripts/acls.sh
setfacl -m g:Nurses:--- /opt/WellingtonClinic/scripts/register-patient.sh
setfacl -m g:Nurses:--- /opt/WellingtonClinic/scripts/assign-doc.sh
setfacl -m g:Nurses:--- /opt/WellingtonClinic/scripts/search-patient.sh
setfacl -m g:Nurses:--- /opt/WellingtonClinic/scripts/search-doctor.sh
setfacl -m g:Nurses:--- /opt/WellingtonClinic/scripts/visit.sh
setfacl -m g:Nurses:r-x /opt/WellingtonClinic/scripts/check-medication.sh
setfacl -m g:Nurses:--- /opt/WellingtonClinic/scripts/audit.sh


#Receptionists
setfacl -m g:Receptionists:r-- /opt/WellingtonClinic/scripts/sbasicinfo.log
setfacl -m g:Receptionists:rw- /opt/WellingtonClinic/scripts/pbasicinfo.log
setfacl -m g:Receptionists:--- /opt/WellingtonClinic/scripts/pmedicalrecord.log
setfacl -m g:Receptionists:--- /opt/file-system-setup.sh
setfacl -m g:Receptionists:--- /opt/WellingtonClinic/scripts/staff-create.sh
setfacl -m g:Receptionists:--- /opt/WellingtonClinic/scripts/acls.sh
setfacl -m g:Receptionists:r-x /opt/WellingtonClinic/scripts/register-patient.sh
setfacl -m g:Receptionists:r-x /opt/WellingtonClinic/scripts/assign-doc.sh
setfacl -m g:Receptionists:--- /opt/WellingtonClinic/scripts/search-patient.sh
setfacl -m g:Receptionists:--- /opt/WellingtonClinic/scripts/search-doctor.sh
setfacl -m g:Receptionists:r-x /opt/WellingtonClinic/scripts/visit.sh
setfacl -m g:Receptionists:--- /opt/WellingtonClinic/scripts/check-medication.sh
setfacl -m g:Receptionists:--- /opt/WellingtonClinic/scripts/audit.sh







