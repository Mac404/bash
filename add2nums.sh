#!/bin/bash
#Sia
#Generic script

#interact with user to get input
echo "This program adds 2 numbers you specify."
echo "Enter the 1st number"
read num1
echo "Enter the 2nd number"
read num2
echo "Enter Y/y to add or N/n to exit the program."
read response
echo "You entered $num1, $num2, and $response"

#create loop to check to run or exit program
#response="y" #set value to y to troubleshoot manually

while [ "$response" = "Y" ] || [ "$response" = "y" ]; do

	#check to make sure user doesn't enter zeroes then run program; if zeroes exit
	if [ $num1 -ne 0 ] && [ $num2 -ne 0 ]; then
		yourtotal=$(($num1 + $num2))
		echo "Your total is: " $yourtotal
		echo "Bye!"
		break

	else
	   #if user enters zeroes exit
	    echo "You entered zeroes... exiting program."
	    break
	fi
	
done

#Do a last check for user entering N/n

if [ "$response" = "N" ] || [ "$response" = "n" ]; then

echo "You entered N/n... exiting program."

fi
