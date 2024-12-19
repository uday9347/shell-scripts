#!/bin/bash
#checking the root user 


TIME=$(date +%F-%H-%M-%S)
LOGFILE=/tmp/$0-TIME.log
VALIDATE ()
{
    if [ $1 ne 0 ]
    then 
        echo "the $2 is having failure "
    else
        echo "the $2 is success "
    fi
}

ID=$(id -u)
if [ $ID ne 0 ]
then 
    echo "switch the user to root "
    exit 1
else 
    echo "in the root user "
fi

for i in $@
do 
    yum list installed $i &>> LOGFILE
    if [ $? ne 0 ]
    then 
        yum install $i -y &>> LOGFILE
        VALIDATE $? "installation of $i"
    else:
        echo "the $i is already installed "
    fi 
done