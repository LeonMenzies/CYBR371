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
setfacl -m g:Administrators:rwx /opt/WellingtonClinic
