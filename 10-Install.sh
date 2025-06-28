#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H:%M:%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP"

VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo -e "Installing $2 is $R Failed"
        exit 1
    else
        echo -e "Installation of $2 is $G Success"
    fi
}

if [ $ID -ne 0 ]
then
    echo "You are not a root user"
    exit 1
else
    echo -e "You are a $G root $N user"
fi

echo -e "$Y Installing MySQL"

yum install mysql -y &>> $LOGFILE

VALIDATE $? "MySQL"

echo -e "$Y Installing GIT" 

yum install git -y &>> $LOGFILE

VALIDATE $? "GIT"