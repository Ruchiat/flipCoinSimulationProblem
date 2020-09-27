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


#flip coin to continue till either of them have won 21 times. 
#Show if it’s a Win or Tie. If Win then who won and by how much

#constant
MAXIMUM_POINT=21;
timesHeadsGotGenerated=0;
timesTailsGotGenearted=0;

while [[ $timesHeadsGotGenerated -lt MAXIMUM_POINT && $timesTailsGotGenerated -lt MAXIMUM_POINT ]]
do
	value=$( generateRandomValue $((RANDOM%2+1)) );
	if [ $value == 1 ]
	then
		timesHeadsGotGenerated=$((timesHeadsGotGenerated+1));
	else
		timesTailsGotGenerated=$((timesTailsGotGenerated+1));
	fi
done

#Who won and by how much 

if [ $timesHeadsGotGenerated -gt $timesTailsGotGenerated ]
then 
	headsWonByPoints=$((timesHeadsGotGenerated-timesTailsGotGenerated));
	echo "Heads Won By "$headsWonByPoints" points !";
else
	tailsWonByPoints=$((timesTailsGotGenerated-timesHeadsGotGenerated));
	echo "Tails Won By "$tailsWonByPoints" points !";
fi


#if its tie then the game continues till the difference of minimum 2 points is achieved



if [ $timesHeadsGotGenerated -eq $timesTailsGotGenerated ]
then
	echo "ITS a Tie !!!";
	difference=0;
	while [ $difference -lt 3 ]
	do
			val=$( generateRandomValue $((RANDOM%2)) );
			if [ $val == 1 ]
			then
				heads=$((heads+1));
			else
				tails=$((tails+1));
			fi
	    if [ $heads -gt $tails ]
	    then
		difference=$((heads-tails));
            else
		difference=$((tails-heads));
	    fi
	done
fi
