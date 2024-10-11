#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "this script $0 is started executing macha"
echo "script $0 started executing at $TIMESTAMP" &>> $LOGFILE

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

sudo yum install mysql -y &>> $LOGFILE
VALIDATE $? mysql &>> $LOGFILE
sudo yum install git -y &>> $LOGFILE
VALIDATE $? git &>> $LOGFILE