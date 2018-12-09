#!/usr/bin/env bash

#function to display Guess
function guess {

	echo "Guess:"
}

#g -> no. guessed
g=-1
#total -> counter for the total no of files in the present directory
total=$( ls | wc -l | cat )
#while loop programmed to run until guess is not correct
while [[ $g -ne $total ]]
do
	guess
	read g

	if [[ $g -gt $total ]]
	then
		echo "High"
	elif [[ $g -lt $total ]]
	then
		echo "Low"
	fi
done
#once the guess is correct CONGRATULATIONS
echo "CONGRATULATIONS!!! There are exactly $g files"
