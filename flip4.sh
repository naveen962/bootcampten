#! /bin/bash
function flip()
{
temp1=0
temp2=0
temp3=0
temp4=0
temp5=0
temp6=0
temp7=0
temp8=0
for (( i=1;i<=20; i++ ))
do
Result1=$((RANDOM % 2))
Result2=$((RANDOM % 2))
Result3=$((RANDOM % 2))
if [ $Result1 == 0 ] && [ $Result2 == 0 ] && [ $Result1 == 0 ]
then
      a[$i]=HHH
      temp1=$(( $temp1 + 1 ))
elif [ $Result1 == 1 ] && [ $Result2 == 1 ]  && [ $Result2 == 1 ]
then
 a[$i]=TTT
   temp2=$(( $temp2 + 1 ))
elif [ $Result1 == 0 ] && [ $Result2 == 1 ] && [ $Result2 == 1 ]
then
 a[$i]=HTT
   temp3=$(( $temp3 + 1 ))
elif [ $Result1 == 0 ] && [ $Result2 == 0 ] && [ $Result2 == 1 ]
then
 a[$i]=HHT
   temp4=$(( $temp4 + 1 ))
elif [ $Result1 == 0 ] && [ $Result2 == 1 ] && [ $Result2 == 0 ]
then
 a[$i]=HTH
   temp5=$(( $temp5 + 1 ))
elif [ $Result1 == 1 ] && [ $Result2 == 1 ] && [ $Result2 == 0 ]
then
 a[$i]=TTH
   temp6=$(( $temp6 + 1 ))
elif [ $Result1 == 1 ] && [ $Result2 == 0 ] && [ $Result2 == 0 ]
then
 a[$i]=THH
   temp7=$(( $temp7 + 1 ))
else
 a[$i]=THT
   temp8=$(( $temp8 + 1 ))
fi
done
}
flip

echo ${a[*]}

percent1=$(( 100 * $temp1 / 10 ))
echo "HHH PERCENTAGE ="$percent1
percent2=$(( 100 * $temp2 / 10 ))
echo "TTT PERCENTAGE ="$percent2
percent3=$(( 100 * $temp3 / 10 ))
echo "HTT PERCENTAGE ="$percent3
percent4=$(( 100 * $temp4 / 10 ))
echo "HHT PERCENTAGE ="$percent4
percent5=$(( 100 * $temp5 / 10 ))
echo "HTH PERCENTAGE ="$percent5
percent6=$(( 100 * $temp6 / 10 ))
echo "TTH PERCENTAGE ="$percent6

percent7=$(( 100 * $temp7 / 10 ))
echo "THH PERCENTAGE ="$percent7

percent8=$(( 100 * $temp8 / 10 ))
echo "THT PERCENTAGE ="$percent8


