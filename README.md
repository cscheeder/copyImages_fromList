# copyImages_fromList
Simple shell script to copy files as defined in a list. 


This repository contains a small shell script which can be used to copy 
a list of files (e.g. images). The files to be copied are defined in a 
text file (copyList.txt in the example). The scripts works over subdirectories,
the directory structure is however flatened out. 

The shell script has two variables representing the source (source directory to search for files) 
and target directory (directory to copy the images to).

To copy images from a loaction with many sub directories a modifed version
of the script is available. This allows to provide sub directory paths with
the file name to facilitate faster copying. The list has to be a text file
with one file per line, the path of the sub directory is followed by the 
file name and both strings are separated by a ";". 


Run the shell script from your Linux machine / Mac:
```
./findImages.sh copyList.txt
```

