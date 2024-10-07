#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo "Orey nv root user kadhu, velli root user gadini rammanu, pooo"
   exit 1
else
   echo "Hello root user, thx for coming, how r u, install chey mari mysql ni"
fi

sudo yum install mysql -y
if [ $? -ne 0 ]
then
echo "mysql install is faileddd"
exit 1
else
echo "mysql install is success macha, enjoy pandago"
fi

sudo yum install git -y
if [ $? -ne 0 ]
then
echo "git install is faileddd"
exit 1
else
echo "git install is success macha, enjoy pandago"
fi