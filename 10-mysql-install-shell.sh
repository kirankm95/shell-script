#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo "Orey nv root user kadhu, velli root user gadini rammanu, pooo"
   exit 1
else
   echo "Hello root user, thx for coming, how r u, install chey mari mysql ni"
   sudo yum install mysqll -y
   if [ $? -eq 0 ]
   then
        echo "mysql install is success macha, enjoy pandago"
    else
        echo "mysql install is faileddd"
    fi
fi