#! /bin/bash

head=0
tail=0
while :
do
Result=$((RANDOM%2))
if [[  $Result == 0 ]]
then
	echo "Head"
	head=$(( $head + 1 ))
	if [[ $head == 21 ]]
	then
		leadingwin=$(( $head - $tail ))
		echo "head won by:"$leadingwin
		break
	fi
elif [[ $Result == 1 ]]
then
echo "Tail"
tail=$(( $tail + 1 ))
	if [[ $tail == 21 ]]
   then
      leadingwin=$(( $tail - $head ))
      echo "tail won by:"$leadingwin
      break
	fi
else

	echo "Tie"
fi
done
