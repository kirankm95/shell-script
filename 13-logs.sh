#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
Y=\e[33m
N=\e[0m

echo -e "this script $Y $0 $N is started executing macha" &>> $LOGFILE
echo -e "script $Y $0 $N started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE() {
    if [ $1 -ne 0 ]
    then
        echo -e "$2 $R install is faileddd $N"
        exit 1
    else
        echo -e "$2 $G install is success macha, enjoy pandago $N"
    fi
}

if [ $ID -ne 0 ]
then
   echo -e "$R Orey nv root user kadhu, velli root user gadini rammanu, pooo $N"
   exit 1
else
   echo -e "$G Hello root user, thx for coming, how r u, install chey mari mysql ni $N"
fi

sudo yum install mysql -y &>> $LOGFILE
VALIDATE $? mysql
sudo yum install git -y &>> $LOGFILE
VALIDATE $? git