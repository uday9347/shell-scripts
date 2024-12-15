#!/bin/bash

ID=$(id -u)
DATE=$(date)
LOGFILE="/tmp/$0-$DATE.log"

VALIDATE()
{
    if [ $1 -ne 0 ]
then 
    echo "$2 is failed to install "
else
    echo "$2 installation is success "
fi 

}

if [ $ID -ne 0 ]
then 
    echo "switch to the root user "
    exit 1
else
    echo "you are root user "
fi 

INP=$1

echo "$INP"

yum install $INP -y &>> /tmp/$0-

VALIDATE $? $INP

# yum install 