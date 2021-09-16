#! /bin/bash

declare -A arithmatic
echo "enter a"
read a
echo "enter b"
read b
echo "enter c"
read c

result1=$(( $a % $b + $c ))
echo "RESULT :" $result1
result2=$(( $a + $b * $c ))
echo "RESULT :" $result2
result3=$(( $a * $b + $c ))
echo "RESULT :" $result3
result4=$(( $a + $b / $c ))
echo "RESULT :" $result4
result5=$(( $a % $b + $c ))
echo "RESULT :" $result5

arithmatic[comp1]=$result1

arithmatic[comp2]=$result2
arithmatic[comp3]=$result3
arithmatic[comp4]=$result4
arithmatic[comp5]=$result5


echo ${arithmatic[*]}
for (( i=1; i<=5; i++ ))
do
array[$i]=${arithmatic[comp$i]}
done
echo ${array[*]}




