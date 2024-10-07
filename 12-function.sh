#!/bin/bash

ID=$(id -u)

VALIDATE() {
    if [ $1 -ne 0 ]
    then
    echo "$2 install is faileddd"
    exit 1
    else
    echo "$2 install is success macha, enjoy pandago"
    fi
}

if [ $ID -ne 0 ]
then
   echo "Orey nv root user kadhu, velli root user gadini rammanu, pooo"
   exit 1
else
   echo "Hello root user, thx for coming, how r u, install chey mari mysql ni"
fi

sudo yum install mysql -y
VALIDATE $? mysql
sudo yum install git -y
VALIDATE $? git