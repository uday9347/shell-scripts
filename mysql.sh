#!/bin/bash

ID=$(id -u)


if [ $ID -eq 0 ]
then 
    
    echo "you are root user "
else
    echo "please swicth run the cmd with root access"
    
    exit 1
    
fi
dnf install mysqlegha 

if [ $? -ne 0 ]
then 
    echo "mysql is fall to installed "
    
    exit 1
    
else
    echo "mysql installation is succesfull"
fi 