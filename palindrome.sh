#!/bin/bash -x

echo "Enter a number"
read num
rev=0
original=$num
function palindrome(){

while [ $num -gt 0 ]
	do
	rem=`expr $num % 10`
	rev=`expr $rev \* 10 + $rem`
	num=`expr $num / 10`
	done
echo reverse is $rev

if [ $original -eq $rev ]
then
        echo "$original is a palindrome"
else
        echo "$original is not a palindrome"
fi
}
palindrome
