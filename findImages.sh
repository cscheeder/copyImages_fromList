#!/bin/bash
sourceDir="./"
destinationDir=""

while read line
do
    name=$line
    echo "Text read from file - $name"
    find "${sourceDir}" -name "$name" -exec cp {} "${destinationDir}" \;    
	echo "File copied: - $name"
done < $1


# script was stolen from: https://stackoverflow.com/questions/29311880/finding-files-from-list-and-copying-them-into-new-directory
