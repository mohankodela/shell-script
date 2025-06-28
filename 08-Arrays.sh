#!bin/bash/

FRUITS=("Apple" "Banana" "Carrot")

echo "First Fruit is: ${FRUITS[0]}"

echo "First Fruit is: ${FRUITS[1]}"

echo "Arguments Passed: ${$@}"

echo "How Many Arguments Passed: $#"

echo "Script Name: $0"