#! usr/bin/bash

echo "Doctors username"
read doc_username

echo "Doctor"             "Patients"

for d in ./patients ; do
    echo "$d"
done
