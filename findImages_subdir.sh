#!/bin/bash
sourceDir=""
destinationDir=""
#destinationDir="/Users/user/Desktop/test"

while read line
do
    name=$line
    
	name=(${name//;/ })
	
	#echo "${name[0]}"
	#echo "${name[1]}"
	
	sourcePath=$sourceDir${name[0]}
	image=${name[1]}
	
	echo "$sourcePath"
	echo "$image"
	
    echo "Text read from file - $image"
    find "${sourcePath}" -name "$image" -exec cp {} "${destinationDir}" \;    

done < $1


# adopted from:
#	https://stackoverflow.com/questions/29311880/finding-files-from-list-and-copying-them-into-new-directory

