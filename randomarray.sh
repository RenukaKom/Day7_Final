#!/bin/bash
for((i=0;i<=9;i++));
do
        array[i]=$(( RANDOM %901 + 100 ))
done

echo "Array is "
echo ${array[@]}
largest=$((array[0]))
sec_largest=$((${array[1]}))

for((i=0;i<=9;i++));
do
	if((array[i] > largest));
	then
		sec_largest=$((largest))
		largest=$((array[i]))
	fi
	if(( ((array[i]>sec_largest)) && array[i] != largest ));
	then
		sec_largest=$((array[i]))
	fi
done

smallest=$((largest))
sec_smallest=$((largest))

for((i=0;i<=9;i++));
do
        if((array[i] < smallest));
        then
                sec_smallest=$((smallest))
                smallest=$((array[i]))
        fi

        if((array[i]>sec_largest && array[i] < smallest ));
	then
                sec_smallest=$((array[i]))
        fi
done

echo "second largest number from array is "
echo $sec_largest
echo "second smallest number from array is "
echo $sec_smallest
