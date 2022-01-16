#! /bin/bash
#This above line #!/bin/bash is must

#This is simple print statement in shell scripting
echo "Hello Bash/Shell Scripting"

#If we want to store our output in another file then we can write like this
echo "Output Store in given File" > file.txt

#If we want to write in our terminal then we can write like this but it will replace your data which is present in that file
#cat > file.txt

#If you want to append that data with the present data then you can write like this and press Ctrl+D to exit
#cat >>file.txt

#this is hereDocDelimeter, this is basically the body with 2 less than signs and you can show this text as an output on your terminal, whatever you write in this body
#cat << AnyVariable
#this could be used as comments or as an output
#AnyVariable


#Conditional statements
#count=10
#if [ $count -eq 10 ] #-eq stands for equal and -ne stands for not equal
#then
#	echo #Condition is true"
#elif [ $count -ne 9 ]
#then
#	echo #Less than 10"
#elif [ $count -gt 8 ] #-gt stands for greater than
#then
#	echo #Greater than 8"

#elif (( $count > 7 ))
#then
#	echo #Greater than 7"

#elif (( $count >= 10 ))
#then
#	echo #Greater than or equal to 10"
#else
#	echo #Condition is False"
#fi


#AND and OR Operators
count=12
if [[ $count -eq 10 && $count -gt 7 ]]
then
	echo "And Statement will execute"

elif [ $count -lt 20 -o $count -gt 10 ] #-o means Or operator
then
	echo "Or Statement will execute"
else
	echo "This will execute"
fi
