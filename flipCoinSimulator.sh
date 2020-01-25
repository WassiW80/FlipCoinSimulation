#!/bin/bash -x
declare -A coinsDictionary
read -p "Enter how times you want to flip coin: " countOfCoin

function flipCoin(){
for((counter=0;counter<$countOfCoin;counter++))
	do
		randomValue=$((RANDOM%2))
		if [ $randomValue -eq 1 ]
		then
			 coinsDictionary[H]=$((++head))
		else
			 coinsDictionary[T]=$((++tail))
		fi
	done
	echo "Key :	 	"${!coinsDictionary[@]}
	echo "Counts :	"${coinsDictionary[@]}
	headPercentage=`echo "scale=2; ${coinsDictionary[H]}*100/$countOfCoin" | bc `
	tailPercentage=`echo "scale=2; ${coinsDictionary[T]}*100/$countOfCoin" | bc `
	echo "Percentage : " $headPercentage% $tailPercentage%
}
flipCoin
