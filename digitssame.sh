#!/bin/bash
echo "print same digit number from 1 to 100:"
a=0
for((i=1;i<=100;i++))
do
	if((i%11==0))
	then
		array[a]=$((i))
		((a++))
	fi
done
echo "array is " ${array[@]}
