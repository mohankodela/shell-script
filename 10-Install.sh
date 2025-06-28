#!/bin/bash

ID=$(id -u)

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

yum install mysql -y

VALIDATE $? "MySQL"

echo "Installing GIT"

yum install git -y

VALIDATE $? "GIT"

echo "Arguments Passed: $@"

echo "How Many Arguments Passed: $#"

echo "Script Name: $0"