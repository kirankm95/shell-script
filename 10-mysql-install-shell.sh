#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo "Orey nv root user kadhu, velli root user gadini rammanu, pooo"
else
   echo "Hello root user, thx for coming, how r u, install chey mari mysql ni"
   sudo yum install mysql -y
fi