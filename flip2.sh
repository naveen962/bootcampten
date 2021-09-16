#! /bin/bash

declare -A flip

for (( i=1; i<=5; i++ ))
do
Result=$((RANDOM % 2))
if [[  $Result == 0 ]]
then
	echo "Heads"
	flip[c$i]=H
else
	echo "Tails"
	flip[c$i]=T
fi
done
 echo ${flip[*]}
