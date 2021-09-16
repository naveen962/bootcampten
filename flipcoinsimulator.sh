#! /bin/bash
Result=$((RANDOM % 2))
if [[  $Result == 0 ]]
then
echo "Heads"
else
echo "Tails"
fi
