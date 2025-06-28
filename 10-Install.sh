#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F%H%M%S)

LOGFILE="/tmp/$0-$TIMESTAMP"

VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo "Installing $2 is Failed"
        exit 1
    else
        echo "Installation of $2 is Success"
    fi
}

if [ $ID -ne 0 ]
then
    echo "You are not a root user"
    exit 1
else
    echo "You are a root user"
fi

echo "Installing MySQL"

yum install mysql -y &>> $LOGFILE

VALIDATE $? "MySQL"

echo "Installing GIT" 

yum install git -y &>> $LOGFILE

VALIDATE $? "GIT"