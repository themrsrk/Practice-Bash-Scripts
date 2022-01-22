#! /bin/bash

#Select loop provide functionality to select you the options from given conditions

select car in  BMW Mercedes Toyota Hyundai Honda KIA
do
	case $car in 
	BMW)
		echo "You hace Selected BMW";;
	Mercedes)
                echo "You hace Selected Mercedes";;
	Toyota)
                echo "You hace Selected Toyota";;
	Hyundai)
                echo "You hace Selected Hyundai";;
	Honda)
                echo "You hace Selected Honda";;
	KIA)
                echo "You hace Selected KIA";;
	*)
		echo "Error"
	esac
done
