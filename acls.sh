#! user/bin/bash

#Setting directory ACLs
setfacl -m g:Administrators:rwx /opt/WellingtonClinic
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/scripts
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/patients
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/staff
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/staff/administrators
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/staff/nurses
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/staff/receptionists
setfacl -m g:Administrators:rwx /opt/WellingtonClinic/staff/doctors


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






