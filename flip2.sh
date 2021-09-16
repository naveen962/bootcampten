#! /bin/bash

declare -A flip

temp1=0
temp2=0
for (( i=1; i<=5; i++ ))
do
Result=$((RANDOM % 2))
if [[  $Result == 0 ]]
then
	echo "Heads"
temp1=$(($temp1 + 1))
	flip[c$i]=H
else
	echo "Tails"
temp2=$(($temp2 + 1))
	flip[c$i]=T
fi
done
 echo ${flip[*]}
echo $temp1
echo $temp2
HeadPercentage=$((100 * $temp1 / 5 ))
echo "HEAD PERCENTAGE ="$HeadPercentage
TailPercentage=$((100 * $temp2 / 5 ))
echo "TAIL PERCENTAGE ="$TailPercentage
