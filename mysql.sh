#!/bin/bash

ID=$(id -u)


if [ $ID -eq 0 ]
then 
    
    echo "you are root user "
else
    echo "please swicth run the cmd with root access"
    
    exit 1
    
fi
yum install mysql -y 

if [ $? -ne 0 ]
then 
    echo "mysql is fall to installed "
    
    exit 1

else
    echo "mysql installation is succesfull"
fi 

yum install git -y 

if [ $? -ne 0 ]
then 
    echo "git is fall to installed "
    
    exit 1

else
    echo "git installation is succesfull"
fi 


