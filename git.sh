#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then 
    echo "switch to the root user "
    exit 1
else
    echo "you are root user "
fi 

yum install git -y 

if [ $? -ne 0 ]
then 
    echo "git is failed to install "
else
    echo "git installation is success "
fi 