#!/bin/sh
if [[ $# -ne 1 ]]
then
echo ”Enter a directory name”
exit
fi
while [[ ! -d $1 ]]
do
echo ”Entered directory is not valid”
exit
done
echo "Total no of files =  `ls "$1" | wc -l`"
echo "List of extensions present = `ls $1 | awk -F '.' '{print $2}'` "

echo "No of pdf files =`ls $1 | grep '.pdf' | wc -l ` "
echo "No of gif files =`ls $1 | grep '.gif' | wc -l `"
echo "No of png files =`ls $1 | grep '.png' | wc -l `"
