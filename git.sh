#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "switch to the root user "
    exit 1
else
    echo "you are root user "
fi 

yum install nginx -y 

if [ $? -ne 0 ]
then 
    echo "nginx is failed to install "
else
    echo "nginx installation is success "
fi 