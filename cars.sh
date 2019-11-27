#!/bin/bash
# cars.sh
# Tarek El-Hajjaoui

while true; do
	echo -n "
	type the number 1 to enter a new car,
	type the number 2 to display the list of cars,
	type the number 3 to quit and exit the program: "; read number
	case "$number" in
		"1") echo -n "Enter the year of the new car: "
			read year
		     echo -n "Enter the make of the car: "
	      		read make
	     	     echo -n "Enter the model of the "$year" "$make": "
	      		read model
			echo -n "$year":"$make":"$model " >> ./My_old_cars;;
		"2") echo "Your old cars: " 
			cat My_old_cars;;
		"3") echo "Quit and exit: "
	       		exit ;;
	esac
done
