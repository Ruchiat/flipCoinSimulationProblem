#!/bin/bash

#Flip Coin Simulation
#This problem displays the winner Heads or Tails

#((RANDOM)) to find Heads orTails

read -p "say Heads or Tails (Simply Enter 1.For Heads 2.For Tails) : " userInputValue;

randomValue=$((RANDOM%2+1));

#if random value and user input value match you won else you lost 

if [ $randomValue == $userInputValue ] 
then
	echo "Congratulations ! You Won the Toss";
else
	echo "Sorry,You Lost The Toss !";
fi;

#As a simulator, loop through Multiple times of flipping a coin 
#and show number of times head and tail has won

#HEADS=1 #TAILS=2

for i in {1..10}
do
	function generateRandomValue() {
        case $1 in
                1) generateRandomValue=1;;
                *) generateRandomValue=2;;
	esac
        echo $generateRandomValue;
}
	generatedRandomValue=$( generateRandomValue $((RANDOM%2+1)) );
	if [ $generatedRandomValue == 1 ]
	then
		timesHeadsAppeared=$((timesHeadsAppeared+1));
	else
		timesTailsAppeared=$((timesTailsAppeared+1));
	fi
done

echo "Times Heads Won : "$timesHeadsAppeared;
echo "Times Tails Won : "$timesTailsAppeared;

