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
: ' #These are multi line comments
count=12
if [[ $count -eq 10 && $count -gt 7 ]]
then
	echo "And Statement will execute"

elif [ $count -lt 20 -o $count -gt 10 ] #-o means Or operator
then
	echo "Or Statement will execute"
else
	echo "This will execute"
fi '


#While and Until Loop
: '
The main difference is that while loops are designed to run while
a condition is satisfied and then terminate once that condition returns
false. On the other hand, until loops are designed to run while the condition
returns false and only terminate when the condition returns true'

: '
number = 1
#while [[ $number -le 10  ]]
until [[ $number -ge 11  ]]
do
	echo "$number"
	number=$(( number+1 ))

done'

: '
#For Loop

#after in there is range that you want to execute this loop from 0 to 1000

for i in {0..20..5}  #{starting..endine..increment By}
do
	echo $i
done'

: '
for (( i=0; i<1001; i++ )) 
do
	if [[ $i -gt 5  ]]
	then
	    break
	fi
        echo $i
done'

: '
for (( i=0; i<1001; i++ ))
do
        if [[ $i -gt 5  ]]
        then
            continue
        fi
        echo $i
done'



: '
#Script input
args=('@')
echo $@ #This will print all the values which you've typed
#echo $# 
#This will print the length of your array'

: '
#Export output from one file to another file
MESSAGE="This is exported message from helloScript"
export MESSAGE 
./secondScript.sh'



: '
#String Processing
echo "Enter first word"
read line1    #this will read the thing whatever you write

echo "Enter Second Word"
read line2   

echo $line1
echo $line2



if [ "$line1" \> "$line2"  ]
then
	echo "Line 1 is greater than Line 2"
elif [ "$line2" \> "$line1"  ]
then
	echo "Line 2 is greater than Line 1"
else
	echo "Both are equal"
fi

echo ${line1^} #It capitalize first letter
echo ${line1^^} #It capitalize all letters'

: '
#Handling Numbers
#This is method 1
n1=10
n2=20
echo $(( n1 + n2 ))
echo $(( n1 * n2 ))
echo $(( n1 / n2 ))
echo $(( n1 - n2 ))
echo $(( n1 % n2 ))

#This is method 2

echo $(expr $n1 + $n2)
echo $(expr $n1 \* $n2)
echo $(expr $n1 / $n2)
echo $(expr $n1 - $n2)
echo $(expr $n1 % $n2)'

#Declare commands is used to set variable and their values/attributes
declare -r pwdfile=/etc/passwd #-r means readonly variable

echo $pwdfile
