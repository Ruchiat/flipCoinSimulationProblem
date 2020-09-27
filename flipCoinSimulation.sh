#!/bin/bash

#Flip Coin Simulation
#This problem displays the winner Heads or Tails

#((RANDOM)) to find Heads orTails

read -p "say Heads or Tails (Simply Enter 1.For Heads 2.For Tails) : " userInputValue;

randomValue=$((RANDOM%2+1));

echo $randomValue;

#if random value and user input value match you won else you lost 

if [ $randomValue == $userInputValue ] 
then
	echo "Congratulations ! You Won The Toss";
else
	echo "Sorry,You Lost The Toss !";
fi;
