#! /bin/bash

function flip()
{
temp1=0
temp2=0
temp3=0
temp4=0
for (( i=1;i<=10; i++ ))
do
Result1=$((RANDOM % 2))
Result2=$((RANDOM % 2))

if [ $Result1 == 0 ] && [ $Result2 == 0 ]
then
      a[$i]=HH
      temp1=$(( $temp1 + 1 ))
elif [ $Result1 == 1 ] && [ $Result2 == 1 ]
then
 a[$i]=TT
   temp2=$(( $temp2 + 1 ))
elif [ $Result1 == 0 ] && [ $Result2 == 1 ]
then
 a[$i]=HT
   temp3=$(( $temp3 + 1 ))
else
 a[$i]=TH
   temp4=$(( $temp4 + 1 ))
fi
done
}
flip

echo ${a[*]}

percent1=$(( 100 * $temp1 / 10 ))
echo "HH PERCENTAGE ="$percent1
percent2=$(( 100 * $temp2 / 10 ))
echo "TT PERCENTAGE ="$percent2
percent3=$(( 100 * $temp3 / 10 ))
echo "HT PERCENTAGE ="$percent3
percent4=$(( 100 * $temp4 / 10 ))
echo "TH PERCENTAGE ="$percent4

