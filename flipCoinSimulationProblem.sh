#!/bin/bash

echo "WELLCOME TO COIN TOSS"; 

echo -e "ENTER \n 1:HEAD \n 2:TAIL"; 

read -p "ENTER THE VALUE : " value; 

randomValue=$(($RANDOM%2+1)); 

if [ $value == $randomValue ] 
then
	echo "YOU WIN"; 
else 
	echo "YOU LOST";
fi;
