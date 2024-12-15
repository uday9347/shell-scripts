#!/bin/bash

ID=$(id -u)

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

yum install nginxb -y 

VALIDATE $? "installing nginx"

# yum install 