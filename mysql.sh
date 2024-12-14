#!/bin/bash

ID=$(id -u)


if [ $ID -eq 0 ]
then 
    
    echo "you are root user "
else
    echo "please swicth run the cmd with root access"
    
    exit 1
    
fi
yum install nginx -y 

if [ $? -ne 0 ]
then 
    echo "nginx is fall to installed "
    
    exit 1

else
    echo "nginx installation is succesfull"
fi 

yum install git -y 

if [ $? -ne 127 ]
then 
    echo "git is installed succesfully "
    
    exit 1

else
    echo "git is already there amma"
fi 


