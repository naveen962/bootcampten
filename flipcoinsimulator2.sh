#! /bin/bash
head=0
tail=0
for (( i=0; i<=20; i++ ))
do

Result=$((RANDOM%2))
if [[  $Result == 0 ]]
then
echo "Heads"
head=$(( $head + 1 ))
else
echo "Tails"
tail=$(( $tail + 1 ))
fi
done
echo "no of time head won :"$head
echo "no of time tail won :"$tail

