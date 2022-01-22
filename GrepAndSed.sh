#! /bin/bash


#Grep comand basicaly search the text from the particular file
#echo "Enter file name to search"
#read fileName

#if [[ -f $fileName  ]]
#then
#	echo "Enter the word to search"
#	read grepvar
#	grep -i -n $grepvar $fileName #-i means that ignore case and -n means count the lines
#else
#	echo "File doesn't exist"
#fi

#Sed command means stream editor which is used to subsitute/replace the string or a letter, but not replace in the original file just print on the terminal

echo "Enter file name to substitue"
read fileName

if [[ -f $fileName  ]]
then
	#sed 's/is/IS/g' $fileName  #s means substitue, (is) is the word which is gonna be replaced, (IS) is the word which is gonna put on the place of (is), and g means globally
	#If we want to reflect the changes in the file then store it into the another file
	sed 's/is/IS/g' $fileName > SedReflectedFile.txt
else
       echo "File doesn't exist"
fi
