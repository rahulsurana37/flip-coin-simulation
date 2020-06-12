#!/bin/bash

echo "Welcome to Flip-Coin Simulation Code"

flipping=10;
a=0;
heads=0;
tails=1;
h_count=0;
t_count=0;

while [[ $a -le $flipping ]]; do
	flip=$(($RANDOM%2))
	if [[ $flip -eq heads ]]; then
		h_count=$(($h_count+1))
		
	else
		t_count=$(($t_count+1));
		
	fi
	a=$(($a+1))
done

echo "Heads Count is " $h_count
echo "Tails Count is" $t_count

if [[ $h_count -ge $t_count ]]; then
	echo "Heads is the Winner."
elif [[ $t_count -ge $h_count ]]; then
	echo "Tails is the winner"
else
	echo "It's a draw"
fi