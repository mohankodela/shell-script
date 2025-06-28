#!bin/bash/

FRUITS=("Apple" "Banana" "Carrot")

echo "First Fruit is: ${FRUITS[0]}"

echo "Arguments Passed: ${FRUITS[$@]}"

echo "How Many Arguments Passed: $#"

echo "Script Name: $0"