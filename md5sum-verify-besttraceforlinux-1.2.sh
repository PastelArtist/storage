#!/bin/bash

#if [ "$(md5sum /home/path/file1.txt |awk '{print $1)')" != "$(md5sum /home/path/file2.txt |awk '{print $1}')" ]; then
#echo "Files are the same"
#else
#echo "Files are different"
#fi

original="05081f46a8ed1e4d32502b76ed78d2c8"
checksum=$(md5sum besttrace4linux.zip | awk '{print $1}')

if [[ "$original" == "$checksum" ]]
    then
        echo "Pass,MD5 is $checksum"
    else
        echo "Fail,Original MD5 is $1,Now $checksum"
fi
