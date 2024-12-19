#!/bin/bash
#checking the root user 

ID=$(id -u)
if [ $ID ne 0 ]
then 
    echo "switch the user to root "
    exit 1
else 
    echo "in the root user "