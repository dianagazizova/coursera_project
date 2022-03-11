#!/usr/bin/env bash
# File: guessinggame.sh

file_number=$(ls | wc -l)
function check {
	if [[ $@ -eq $file_number ]]
	then
		tmp=1
		echo "Congratulations"
	else
		if [[ $@ -gt $file_number ]]
		then
			echo "too high. Try again"
		else
			echo "too low. Try again"
		fi
	fi
}
tmp=0
echo "How many files are in the current directory?"
read response
check response

while [[ $tmp -ne 1 ]]
do
	read response
	check response
done
echo "End program"
