#!/bin/bash
for((i=1;i<=10;i++));
do
        array[i]=$(( RANDOM %901 + 100 ))
done
for((i=1;i<=10;i++));
do
        array2[i]=$((array[i]))
done
for((i=1;i<=10;i++));
do
        for((j=1;j<=10;j++));
        do
                if((array[i]<=array[j]));
                then
                        temp=$((array[i]))
                        array[i]=$((array[j]))
                        array[j]=$((temp))
                fi
        done
done
echo "elements of array are "
echo ${array2[@]}
echo "element after sort are"
echo ${array[@]}
echo "Second smallest elemet is "
echo ${array[2]}
echo "Second Largest element is"
echo ${array[9]}
