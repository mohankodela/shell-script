#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "Total is: $SUM"

echo "Arguments Passed: $@"

echo "How Many Arguments Passed: $#"

echo "Script Name: $0"