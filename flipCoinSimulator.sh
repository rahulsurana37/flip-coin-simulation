#!/bin/bash

echo "Welcome to Flip-Coin Simulation Code"

heads=0;
tails=1;

flip=$(($RANDOM%2))

if [[ $flip -eq $heads ]]; then
	echo "Winner is Heads"
else
	echo "Winner is Tails"
fi
