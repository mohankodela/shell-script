#!/bin/bash

ID=$(id -u)
R=\e[32m
G=\e[33m
Y=\e[34m
N=\e[0m

if [ $ID -ne 0]
then
    echo -e "$R Your are not root user $N"
else
    echo -e "$G You are root user $N"
fi