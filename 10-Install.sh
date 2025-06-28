#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "You are not a root user"
    exit 1
else
    echo "You are a root user"
fi

echo "Installing MySQL"

yum install mysqll -y

if [ $? -ne 0 ]
then
    echo "Installing MySQL is Failed"
    exit 1
else
    echo "Installation of MySQL is Success"
fi