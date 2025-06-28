#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 100 ]
then
    echo "Entered Number $NUMBER is greater than 100"
else
    echo "Entered Number $NUMBER is not greater than 100"
fi