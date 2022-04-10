#! usr/bin/bash

echo -n "Doctors username"
read doc_username

echo "Doctor"             "Patients"

for d in ./patients ; do
    echo $doc_username             $d
done
