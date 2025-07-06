#!/bin/bash

SOURCE_DIR="/tmp/shell-logs"

if [ ! -d $SORCE_DIR ]
then
    echo -e "Source directory $SORCE_DIR doesn't exists"
fi

FILES_TO_DELETE=$( find $SORCE_DIR -type f -mtime +14 -name "*.log" )

while IFS= read -r line
do
    echo "Deleting file: $line"
done <<< $FILES_TO_DELETE