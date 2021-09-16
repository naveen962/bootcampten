#! /bin/bash
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

a=($result1 $result2  $result3 $result4 $result5)
echo ${a[*]} 

for (( i=0; i<=5; i++ ))
do
        for (( j=$i; j<=5; j++ ))
        do
                if [[ ${a[$i]} -gt ${a[$j]} ]]
                then

                        temp=${a[$i]}
                        a[$i]=${a[$j]}
                        a[$j]=$temp

                fi
        done
done
for (( i=0; i<=5; i++ ))
do
echo ${a[$i]}
done
