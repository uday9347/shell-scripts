#!/bin/bash

ID=$(id -u)


if [ $ID -eq 0 ]
then 
    yum install mysql 
    echo "the mysql is been installed "
else
    echo "please swicth run the cmd with root access"
    exit 1
    
fi

if [ $? -ne 0 ]
then 
    echo "mysql is failed to installed "
else
    echo "mysql installation is succesfull"
fi 