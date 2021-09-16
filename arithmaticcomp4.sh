#! /bin/bash
echo "enter a"
read a
echo "enter b"
read b
echo "enter c"
read c

result=$(( $a + $b / $c ))
echo "RESULT :" $result
