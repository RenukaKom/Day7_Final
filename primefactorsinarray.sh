#!/bin/bash
a=0
read -p "Enter a number:" n
echo "The prime factors of $n are"
for(( p = 2; p < n; p++))
do
	if((n%p==0))
	then
		array[a]=$((p));
		echo ${array[@]}
	fi
((a++ ))
done
echo "array is "
echo  ${array[@]}
