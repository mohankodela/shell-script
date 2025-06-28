#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "You are not a root user"
    exit 1
else
    echo "You are a root user"
fi

yum install mysql -y